package com.baozi.service;

import com.baozi.entity.ShopCart;
import com.baozi.entity.UserMsg;

import java.util.List;

/**
 *
 * @desc   定义点击 接口
 * @author baozi
 * @data   2021/7/10
 */
public interface UserService<T> {

    /**
     * 获取商品信息
     * @param id 商品的id
     * @return   返回商品信息
     */
    T getMessage(int id);

    /**
     * 添加购物车
     * @param userId 用户id
     * @param goodId 商品id
     * @param price  商品价格
     * @return
     */
    int insertShopCart(Long userId,String goodId, String price);


    /**
     * 查看购物车
     * @param id 用户id
     * @return   返回用户购物车集合
     */
    List<ShopCart> getShopCarts(Long id);

    /**
     * 删除购物车商品
     * @param goodId 购物车商品
     */
    int deleteGoods(int goodId);

    /**
     * 获取用户信息
     * @param id
     * @return
     */
    UserMsg getPersonalInformation(Long id);
}
