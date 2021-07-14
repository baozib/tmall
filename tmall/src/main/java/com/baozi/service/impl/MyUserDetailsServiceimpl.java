package com.baozi.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baozi.entity.UserMsg;
import com.baozi.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Map;

/**
 *
 * @desc   自定义登入逻辑
 * @author baozi
 * @data   2021/7/9
 */
@Service
public class MyUserDetailsServiceimpl implements UserDetailsService {

    public static final String ERROR = "账户或密码不正确";

    @Autowired
    private UserMapper userMapper;

    /**
     * 自定义登录逻辑，判断账户密码是否正确
     * @param username 用户名
     * @return 返回UserDetails的子类User
     * @throws UsernameNotFoundException 账户找不到异常
     */
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        //对username字段进行检查
        UserMsg user = userMapper.selectOne(new QueryWrapper<UserMsg>().eq("username", username));

        //不存在此用户 抛出用户找不到异常
        if(user == null){
            throw new UsernameNotFoundException(ERROR);
        }

        //创建UserDetails接口 传入user里面的账户密码和身份 对字符串身份进行Authority类型转换
        UserDetails userDetails = new org.springframework.security.core.userdetails.User(
                user.getUsername(),
                user.getPassword(),
                AuthorityUtils.createAuthorityList("admin"));

        return userDetails;
    }



}
