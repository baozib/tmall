package com.baozi.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baozi.entity.UserAddress;
import org.springframework.stereotype.Repository;

/**
 *
 * @desc   用户地址是实现持久层
 * @author baozi
 * @data   2021/7/13
 */
@Repository
public interface UserAddressMapper extends BaseMapper<UserAddress> {
}
