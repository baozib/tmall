package com.baozi.handle;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baozi.config.BeanUtil;
import com.baozi.entity.UserMsg;
import com.baozi.mapper.UserMapper;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;

/**
 *
 * @desc   登入成功后的逻辑
 * @author baozi
 * @data   2021/7/9
 */
public class MyAuthenticationSuccessHandler implements AuthenticationSuccessHandler {

    /**
     *  继承了Mybatis-plus框架  它有通过new对象的嫌疑
     *  不支持AutoWired 手动配置
     */
    private UserMapper userMapper = BeanUtil.getBean(UserMapper.class);

    public MyAuthenticationSuccessHandler() {}



    /**
     * 判断用户的身份，1为捐赠者，2为管理员，3为贫困者 对应不同的返回策略
     *
     * @param request        请求
     * @param response       响应
     * @param authentication 用户权限[User-3, MANAGER-2]
     */
    @Override
    public void onAuthenticationSuccess(HttpServletRequest request,
                                        HttpServletResponse response,
                                        Authentication authentication) throws IOException, ServletException {
        //设置响应字符集
        response.setCharacterEncoding("utf-8");
        //输出
        PrintWriter writer = response.getWriter();
        //获取用户信息
        User user = (User)authentication.getPrincipal();
        //获得用户名
        String username = user.getUsername();
        //获取用户id
        QueryWrapper<UserMsg> getId = new QueryWrapper<>();
        getId.eq("username",user.getUsername());
        UserMsg userMsg = userMapper.selectOne(getId);
        //保存用户id
        request.getSession().setAttribute("userId",userMsg.getId());

        writer.println("{\"status\":1,\"name\": \""+ userMsg.getName() +"\"}");
    }
}

