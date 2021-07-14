package com.baozi.service;

import com.baozi.entity.GoodsList;

import java.util.List;

/**
 *
 * @desc   定义登入 注册 发送邮箱接口
 *         DML返回结果为1 正确 0 错误
 * @author baozi
 * @data   2021/7/9
 */
public interface BaseService<T> {

    /**
     * 添加用户
     * @param t 用户属性
     */
    int insertUser(T t);

    /**
     * 发送邮件
     * @param userEmail 用户邮箱地址
     * @return          返回验证码给前端保存
     */
    String sendEmail(String userEmail);

    /**
     * 查询商品信息
     * @param type 商品类型
     * @param limit 商品个数
     * @return      返回商品集合
     */
    List<GoodsList> getGoodsListReType(int type, int limit);


    /**
     * 根据所有类型来查找信息
     * @param type      商品类型
     * @param price     商品价格
     * @param content   商品内容
     * @param complex   综合
     * @return
     */
    List<GoodsList> getGoodsListReAll(int type, int price, String content, int complex);
}
