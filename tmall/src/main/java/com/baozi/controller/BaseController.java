package com.baozi.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baozi.entity.GoodsList;
import com.baozi.entity.UserMsg;
import com.baozi.service.BaseService;
import com.google.gson.Gson;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;


/**
 *
 * @desc   公用操作集 /登入/注册/发邮箱/展示商品信息/根据选择获取商品
 * @author baozi
 * @data   2021/7/8
 */
@Controller
@Api(tags = "公用模块")
public class BaseController {

    @Autowired
    private BaseService baseService;

    @ResponseBody
    @ApiOperation("注册用户")
    @PostMapping("/insertUser")
    public String insertUser(@RequestBody UserMsg userMsg){
        int result = baseService.insertUser(userMsg);
        return "{\"status\":\"" + result + "\"}";
    }

    @ResponseBody
    @ApiOperation("发送邮件")
    @GetMapping("/sendEmail")
    public String sendEmail(@RequestParam String userEmail){
        String code = baseService.sendEmail(userEmail);
        return code;
    }

    @ApiOperation("展示商品信息")
    @GetMapping("/getGoodsListReType")
    @ResponseBody
    public String getGoodsListReType(@ApiParam("类型")@RequestParam int type,
                                     @ApiParam("个数") @RequestParam int limit){
        List goodsListReType = baseService.getGoodsListReType(type, limit);
        String s = new Gson().toJson(goodsListReType);
        return s;
    }

    @ApiOperation("验证没登入之前的权限")
    @GetMapping("/verification")
    @ResponseBody
    public String verification(){
        return "1";
    }

    @ApiOperation("根据选择获取商品")
    @GetMapping("/getGoodsListReAll")
    @ResponseBody
    public String getGoodsListReAll(@ApiParam("类型")@RequestParam int type,
                                    @ApiParam("价格")@RequestParam int price,
                                    @ApiParam("内容")@RequestParam String content,
                                    @ApiParam("综合")@RequestParam int complex){



        List goodsListReAll = baseService
                .getGoodsListReAll(type, price, content, complex);
        return new Gson().toJson(goodsListReAll);
    }


}
