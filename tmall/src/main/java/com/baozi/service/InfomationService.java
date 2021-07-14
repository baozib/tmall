package com.baozi.service;

import java.util.List;

/**
 *
 * @desc   个人信息接口
 * @author baozi
 * @data   2021/7/13
 */
public interface InfomationService<T> {

    /**
     * 添加地址
     * @param userId  用户id
     * @param address 用户地址
     * @return
     */
    int insertAddress(Long userId,String address);


    /**
     * 获取用户所有的地址
     * @param userId 用户id
     * @return
     */
    List<T> getAddressAll(Long userId);

    /**
     * 保存用户信息
     * @param userId 用户id
     * @param name   用户名称
     * @param email  用户邮箱
     * @param tele   用户电话
     * @param address 用户地址
     * @return
     */
    int saveUserInfo(Long userId, String name, String email, String tele, String address);
}
