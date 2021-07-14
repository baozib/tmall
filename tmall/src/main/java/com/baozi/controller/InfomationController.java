package com.baozi.controller;

import com.baozi.entity.GoodsList;
import com.baozi.service.InfomationService;
import com.google.gson.Gson;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 *
 * @desc   /添加地址/删除地址/保存个人信息/展示个人信息/展示用户地址
 * @author baozi
 * @data   2021/7/13
 */
@Log4j2
@Api(tags = "个人信息")
@Controller
public class InfomationController {

    /**
     * 注入个人信息业务层
     */
    @Autowired
    private InfomationService infomationService;

    @ApiOperation("添加地址")
    @PostMapping("/insertAddress")
    @ResponseBody
    public int insertAddress(@RequestParam String address, HttpServletRequest request){
        Long userId = (Long)request.getSession().getAttribute("userId");
        try {
            return infomationService.insertAddress(userId, address);
        }catch (Exception e){
            //重复添加
            return 0;
        }
    }

    @ApiOperation("添加地址")
    @GetMapping("/getAddressAll")
    @ResponseBody
    public String getAddressAll(HttpServletRequest request){
        Long userId = (Long)request.getSession().getAttribute("userId");
        List addressAll = infomationService.getAddressAll(userId);
        return new Gson().toJson(addressAll);
    }

    @ApiOperation("保存用户信息")
    @PostMapping("/saveUserInfo")
    @ResponseBody
    public int saveUserInfo(HttpServletRequest request,
                               @RequestParam String name,
                               @RequestParam String email,
                               @RequestParam String tele,
                               @RequestParam String address){
        Long userId = (Long)request.getSession().getAttribute("userId");
        int result = infomationService.saveUserInfo(userId, name, email, tele, address);
        return result;
    }


}
