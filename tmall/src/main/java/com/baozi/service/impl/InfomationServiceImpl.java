package com.baozi.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baozi.entity.UserAddress;
import com.baozi.entity.UserMsg;
import com.baozi.mapper.UserAddressMapper;
import com.baozi.mapper.UserMapper;
import com.baozi.service.InfomationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 *
 * @desc   用户信息业务实现
 * @author baozi
 * @data   2021/7/13
 */
@Service
public class InfomationServiceImpl implements InfomationService<UserAddress> {

    /**
     * 注入用户地址持久层
     */
    @Autowired
    private UserAddressMapper userAddressMapper;

    @Autowired
    private UserMapper userMapper;


    @Override
    public int insertAddress(Long userId, String address) {
        UserAddress userAddress = UserAddress.builder()
                .address(address)
                .userId(userId)
                .build();
        int result = userAddressMapper.insert(userAddress);
        return result;
    }

    @Override
    public List<UserAddress> getAddressAll(Long userId) {
        QueryWrapper<UserAddress> condition = new QueryWrapper<>();
        condition.eq("user_id",userId);
        List<UserAddress> userAddresses = userAddressMapper.selectList(condition);
        return userAddresses;
    }

    @Override
    public int saveUserInfo(Long userId, String name, String email, String tele, String address) {
        UserMsg userMsg = UserMsg.builder()
                .id(userId)
                .name(name)
                .email(email)
                .telephone(tele)
                .address(address)
                .build();
        int result = userMapper.updateById(userMsg);
        return result;
    }

}
