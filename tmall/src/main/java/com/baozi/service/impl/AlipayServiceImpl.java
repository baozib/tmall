package com.baozi.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baozi.entity.GoodsOrder;
import com.baozi.entity.UserMsg;
import com.baozi.mapper.GoodsOrderMapper;
import com.baozi.mapper.UserMapper;
import com.baozi.service.AlipayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalTime;
import java.util.List;

/**
 *
 * @desc   用户订单操作
 * @author baozi
 * @data   2021/7/12
 */
@Service
public class AlipayServiceImpl implements AlipayService<GoodsOrder> {

    /**
     * 订单持久层
     */
    @Autowired
    private GoodsOrderMapper goodsOrderMapper;

    /**
     * 注入用户持久层
     */
    @Autowired
    private UserMapper userMapper;

    @Override
    public void saveOrderUnPaid(Long userId, String goodId, String orderNo,String price) {

        UserMsg userMsg = userMapper.selectById(userId);

        GoodsOrder order = GoodsOrder.builder()
                .goodsId(Long.valueOf(goodId))
                .price(price)
                .orderNo(orderNo)
                .addressId(userMsg.getAddress())
                .status(5L)
                .overtime(LocalTime.now().getMinute())
                .userId(Long.valueOf(userId)).build();
        System.out.println(order);
        goodsOrderMapper.insert(order);
    }

    @Override
    public List<GoodsOrder> getUserOrder(int type) {
        QueryWrapper<GoodsOrder> condition = null;
        if(type != -1){
            condition = new QueryWrapper<>();
            condition.eq("status",type);
        }

        List<GoodsOrder> goodsOrders = goodsOrderMapper.selectList(condition);
        return goodsOrders;
    }

    @Override
    public int deleteOrder(int id) {
        int result = goodsOrderMapper.deleteById(id);
        return result;
    }
}
