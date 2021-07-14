package com.baozi.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;

/**
 *
 * @desc   映射层 实现页面跳转
 * @author baozi
 * @data   2021/7/8
 */
@Controller
@Api(tags = "映射模块")
@RequestMapping("/tmall")
public class MappingController {

    @ApiOperation(("默认跳转首页"))
    @RequestMapping("/index")
    public String index(){
        return "index";
    }


    @ApiOperation(("默认跳转首页"))
    @RequestMapping("/forIndex")
    public String forIndex(){
        return "forward:/tmall/index";
    }

    @ApiOperation("跳转登入页面")
    @RequestMapping("/self-login")
    public String login(){
        return "Login";
    }

    @ApiOperation("底部栏")
    @RequestMapping("/tail")
    public String tailPage(){
        return "TailAll";
    }

    @ApiOperation("注册界面")
    @RequestMapping("/registered")
    public String registered(){
        return "Register";
    }

    @ApiOperation("注册底部栏")
    @RequestMapping("/reg-tail")
    public String regTail(){
        return "TailBar";
    }


    @ApiOperation("跳转详情页面")
    @RequestMapping("/detail-msg")
    public String detailMsg(){
        return "detail-msg";
    }

    @ApiOperation("搜索页面")
    @RequestMapping("/search-page")
    public String searchPage(){
        return "search-page";
    }

    @ApiOperation("跳转订单界面")
    @RequestMapping("/order-myself")
    public String order(){
        return "Order";
    }

}
