package com.baozi.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baozi.entity.GoodsList;
import com.baozi.entity.ShopCart;
import com.baozi.entity.UserMsg;
import com.baozi.mapper.GoodsMapper;
import com.baozi.mapper.ShopCartMapper;
import com.baozi.mapper.UserMapper;
import com.baozi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 *
 * @desc   用户操作实现类
 * @author baozi
 * @data   2021/7/10
 */
@Service
public class UserServiceImpl implements UserService<GoodsList> {

    /**
     * 注入商品操作持久层
     */
    @Autowired
    private GoodsMapper goodsMapper;

    /**
     * 订单持久层
     */
    @Autowired
    private ShopCartMapper shopCartMapper;

    /**
     * 用户持久层
     */
    @Autowired
    private UserMapper userMapper;

    @Override
    public GoodsList getMessage(int id) {
        GoodsList goodsList = goodsMapper.selectById(id);
        return goodsList;
    }

    @Override
    public int insertShopCart(Long userId, String goodId, String price) {
        ShopCart shopCart = ShopCart.builder()
                .userId(userId)
                .goodsId(Long.parseLong(goodId))
                .allPrice(price)
                .build();
        int result = shopCartMapper.insert(shopCart);
        return result;
    }

    @Override
    public List<ShopCart> getShopCarts(Long id) {
        QueryWrapper<ShopCart> shopCart = new QueryWrapper<>();
        shopCart.eq("user_id",id);
        List<ShopCart> shopCarts = shopCartMapper.selectList(shopCart);
        return shopCarts;
    }

    @Override
    public int deleteGoods(int goodId) {
        int result = shopCartMapper.deleteById(goodId);
        return result;
    }

    @Override
    public UserMsg getPersonalInformation(Long id) {
        UserMsg userMsg = userMapper.selectById(id);
        System.out.println(userMsg);
        return userMsg;
    }


}
