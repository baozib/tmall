package com.baozi.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baozi.entity.UserMsg;
import org.springframework.stereotype.Repository;

/**
 *
 * @desc   用户信息操作持久层
 * @author baozi
 * @data   2021/7/9
 */
@Repository
public interface UserMapper extends BaseMapper<UserMsg> {



}
