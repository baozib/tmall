package com.baozi.controller;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.baozi.config.AlipayConfig;
import com.baozi.service.AlipayService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/**
 *
 * @desc   支付模块 下单/
 * @author baozi
 * @data   2021/7/12
 */
@Api(tags = "支付模块")
@Controller
@RequestMapping(value="/Alipay")
public class AlipayController {


    /**
     * 保留商品id 如果 支付成功后保存数据库
     */
    private String id;

    /**
     * 注入支付业务
     */
    @Autowired
    private AlipayService alipayService;

    /**
     * 结算界面
     *
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/PayPage")
    public String payController(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("执行了 ");
        //获得初始化的AlipayClient
        AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.APP_ID, AlipayConfig.APP_PRIVATE_KEY, "json", AlipayConfig.CHARSET, AlipayConfig.ALIPAY_PUBLIC_KEY, AlipayConfig.sign_type);

        //设置请求参数
        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
        alipayRequest.setReturnUrl(AlipayConfig.return_url);
        alipayRequest.setNotifyUrl(AlipayConfig.notify_url);

        String out_trade_no;
        //付款金额，必填  ShopName
        String total_amount = request.getParameter("Money");
        //订单名称，必填
        String subject = request.getParameter("Name");

        String price = total_amount.substring(0, total_amount.indexOf('S'));
        String goodId = total_amount.substring(total_amount.indexOf('S')+1, total_amount.length());


        Long userId = (Long)request.getSession().getAttribute("userId");

        //商品id
        id = goodId;
        //生成订单
        long l = System.currentTimeMillis();
        out_trade_no = String.valueOf(l);

        alipayService.saveOrderUnPaid(userId,goodId,out_trade_no,price);


        //商品描述，可空
        String body = request.getParameter("购物测试");
        // 该笔订单允许的最晚付款时间，逾期将关闭交易。取值范围：1m～15d。m-分钟，h-小时，d-天，1c-当天（1c-当天的情况下，无论交易何时创建，都在0点关闭）。 该参数数值不接受小数点， 如 1.5h，可转换为 90m。
        String timeout_express = "1c";
        alipayRequest.setBizContent("{\"out_trade_no\":\"" + out_trade_no + "\","
                + "\"total_amount\":\"" + price + "\","
                + "\"subject\":\"" + subject + "\","
                + "\"body\":\"" + body + "\","
                + "\"timeout_express\":\"" + timeout_express + "\","
                + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
        //请求
        String url = "";
        try {
            url = alipayClient.pageExecute(alipayRequest).getBody(); //调用SDK生成表单
               /* response.setContentType("text/html;charset=" + AlipayConfig.CHARSET);

                response.getWriter().write(url); // 直接将完整的表单html输出到页面
                response.getWriter().flush();
                response.getWriter().close();*/

        } catch (AlipayApiException e) {
            e.printStackTrace();
        }
        return url;
    }

    /**
     * 同步跳转
     *
     * @param request
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping("/returnUrl")
    public ModelAndView returnUrl(HttpServletRequest request) throws Exception {
        System.out.println("执行了 2 ");
        System.out.println(id);
        ModelAndView mav = new ModelAndView();
        // 获取支付宝GET过来反馈信息（官方固定代码）
        Map<String, String> params = new HashMap<String, String>();
        Map<String, String[]> requestParams = request.getParameterMap();
        for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext();) {
            String name = (String) iter.next();
            String[] values = (String[]) requestParams.get(name);
            String valueStr = "";
            for (int i = 0; i < values.length; i++) {
                valueStr = (i == values.length - 1) ? valueStr + values[i] : valueStr + values[i] + ",";
            }
            params.put(name, valueStr);
        }
        boolean signVerified = AlipaySignature.rsaCheckV1(params, AlipayConfig.ALIPAY_PUBLIC_KEY, AlipayConfig.CHARSET, AlipayConfig.sign_type); // 调用SDK验证签名
        System.out.println(params);
        // 返回界面
        if (signVerified) {
            //支付成功操作
            System.out.println("前往支付成功页面");
            mav.setViewName("detail-msg");
        } else {
            System.out.println("前往支付失败页面");
            mav.setViewName("failReturn");
        }
        System.out.println(mav);
        return mav;
    }

    /**
     * 支付宝服务器异步通知
     *
     * @param request
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping("/notifyUrl")
    public void notifyUrl(HttpServletRequest request) throws Exception {
        System.out.println("异步调用执行");
        // 获取支付宝GET过来反馈信息
        Map<String, String> params = new HashMap<String, String>();
        Map<String, String[]> requestParams = request.getParameterMap();
        for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext();) {
            String name = (String) iter.next();
            String[] values = (String[]) requestParams.get(name);
            String valueStr = "";
            for (int i = 0; i < values.length; i++) {
                valueStr = (i == values.length - 1) ? valueStr + values[i] : valueStr + values[i] + ",";
            }
            params.put(name, valueStr);
        }

        boolean signVerified = AlipaySignature.rsaCheckV1(params, AlipayConfig.ALIPAY_PUBLIC_KEY, AlipayConfig.CHARSET, AlipayConfig.sign_type); // 调用SDK验证签名

        if (signVerified) { // 验证成功 更新订单信息
            System.out.println("异步通知成功");
            // 商户订单号
            String out_trade_no = request.getParameter("out_trade_no");
            // 交易状态
            String trade_status = request.getParameter("trade_status");
            // 修改数据库
        } else {
            System.out.println("异步通知失败");
        }
    }
}
