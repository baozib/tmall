package com.baozi.service;


import java.util.List;

/**
 *
 * @desc   用户下单接口
 * @author baozi
 * @data   2021/7/12
 */
public interface AlipayService<T> {

    /**
     * 保存订单
     * @param userId 用户id
     * @param goodId 商品id
     * @param orderNo 订单id
     */
    void saveOrderUnPaid(Long userId, String goodId, String orderNo,String price);


    /**
     * 获取用户表单信息
     * @param type 表单类型
     * @return
     */
    List<T> getUserOrder(int type);

    /**
     * 删除订单
     * @param id 订单id
     * @return
     */
    int deleteOrder(int id);
}
