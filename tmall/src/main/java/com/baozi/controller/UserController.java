package com.baozi.controller;


import com.baozi.entity.GoodsList;
import com.baozi.entity.UserMsg;
import com.baozi.service.UserService;
import com.google.gson.Gson;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 *
 * @desc   用户模块 获取商品详情/添加购物车/查看购物车/删除购物车的商品//获取个人信息
 * @author baozi
 * @data   2021/7/8
 */
@Log4j2
@Api(tags = "用户模块")
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @ApiOperation("获取商品详情")
    @GetMapping("/getMessage")
    @ResponseBody
    public String getMessage(@RequestParam int id){
        GoodsList message = (GoodsList)userService.getMessage(id);
        String result = new Gson().toJson(message);

        return result;
    }

    @ApiOperation("添加购物车")
    @PostMapping("/insertShopCart")
    @ResponseBody
    public int insertShopCart(HttpServletRequest request,
                              @RequestParam String id,
                              @RequestParam String price){
        Long userId = (Long)request.getSession().getAttribute("userId");
        int result = userService.insertShopCart(userId, id, price);
        return result;
    }

    @ApiOperation("查看购物车")
    @GetMapping("/getShopCarts")
    @ResponseBody
    public String getShopCarts(HttpServletRequest request){
        Long userId = (Long)request.getSession().getAttribute("userId");
        List shopCarts = userService.getShopCarts(userId);
        return new Gson().toJson(shopCarts);
    }

    @ApiOperation("删除购物车的商品")
    @DeleteMapping("/deleteGoods")
    @ResponseBody
    public int deleteGoods(@RequestParam("id") int goodId){
        int result = userService.deleteGoods(goodId);
        return result;
    }


    @ApiOperation("显示个人信息")
    @GetMapping("/getPersonalInformation")
    @ResponseBody
    public String getPersonalInformation(HttpServletRequest request){
        Long userId = (Long)request.getSession().getAttribute("userId");
        UserMsg userMsg = userService.getPersonalInformation(userId);
        return new Gson().toJson(userMsg);
    }

}
