package com.baozi.controller;

import com.baozi.service.AlipayService;
import com.google.gson.Gson;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 *
 * @desc   展示订单、删除订单
 * @author baozi
 * @data   2021/7/13
 */
@Controller
@Api(tags = "公用模块")
public class OrderController {

    @Autowired
    private AlipayService alipayService;

    @ApiOperation("展示用户订单信息")
    @GetMapping("/getUserOrder")
    @ResponseBody
    public String userOrderMsg(@RequestParam int type){
        List userOrder = alipayService.getUserOrder(type);
        return new Gson().toJson(userOrder);
    }

    @ApiOperation("删除订单")
    @DeleteMapping("/deleteOrder")
    @ResponseBody
    public int deleteOrder(@RequestParam int id){
        int result = alipayService.deleteOrder(id);
        return result;
    }

}
