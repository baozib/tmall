package com.baozi.config;


import com.baozi.handle.MyAccessFailHandler;
import com.baozi.handle.MyAuthenticationFailure;
import com.baozi.handle.MyAuthenticationSuccessHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.core.GrantedAuthorityDefaults;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;


/**
 *
 * Security安全认证和授权认证
 * @author baozi
 * @data   2021/7/8
 */
@Configuration
public class MyWebSecurityConfigurerAdapter extends WebSecurityConfigurerAdapter {

    @Autowired
    private MyAccessFailHandler myAccessFailHandler;

    /**
     * 对静态资源进行放行
     *
     * @param web HTTP请求安全处理器
     * @throws Exception
     */
    @Override
    public void configure(WebSecurity web) throws Exception {
        //对CSS样式进行放行
        web.ignoring().antMatchers("/TianMao-css/**");
        //对IMAGES静态图片进行放行
        web.ignoring().antMatchers("/images/**");
        //对JS进行放行
        web.ignoring().antMatchers("/TianMao-js/**");
        //放行公共页面
        web.ignoring().antMatchers("/TianMao-html/public-page/*");
        // 过滤swaager2界面
        web.ignoring().antMatchers(
                "/swagger-ui.html",
                // swagger api json
                "/v2/api-docs",
                // 用来获取支持的动作
                "/swagger-resources/configuration/ui",
                // 用来获取api-docs的URI
                "/swagger-resources",
                // 安全选项
                "/swagger-resources/configuration/security",
                "/swagger-resources/**",
                //补充路径，近期在搭建swagger接口文档时，通过浏览器控制台发现该/webjars路径下的文件被拦截，故加上此过滤条件即可。
                "/webjars/**"
        );


    }

    /**
     * 设置登入页面，登入页面的逻辑添加，登入成功逻辑，登入权限
     *
     * @param http HTTP请求安全处理器
     * @throws Exception
     */
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                //表单提交
                .formLogin()
                //添加默认初始化登入页面为/RecyclePlatform/Login
                .loginPage("/tmall/index")
                //添加登入逻辑
                .loginProcessingUrl("/tmall/login-logic-process")
                //添加登入成功的逻辑
                .successHandler(new MyAuthenticationSuccessHandler())
                //添加登入失败逻辑
                .failureHandler(new MyAuthenticationFailure());

        http    //授权
                .authorizeRequests()
                //放行登入接口
                .antMatchers("/tmall/index").permitAll()
                //放行登入界面
                .antMatchers("/tmall/self-login").permitAll()
                //放行尾部
                .antMatchers("/tmall/tail").permitAll()
                //放行注册页面
                .antMatchers("/tmall/registered").permitAll()
                //放行注册尾部页面
                .antMatchers("/tmall/reg-tail").permitAll()
                //放行注册接口
                .antMatchers("/insertUser").permitAll()
                //放行发送邮件接口
                .antMatchers("/sendEmail").permitAll()
                //放行展示商品接口
                .antMatchers("/getGoodsListReType").permitAll()
                //放行支付宝页面
                .antMatchers("/Alipay/Shopcart").permitAll()
                .antMatchers("/Alipay/PayPage").permitAll()
                .antMatchers("/Alipay/returnUrl").permitAll()
                .antMatchers("/Alipay/notifyUrl").permitAll()
                //放行搜索页面测试
                .antMatchers("/tmall/search-page").permitAll()
                //放行支付获取信息
                .antMatchers("/getGoodsListReAll").permitAll()
//                .antMatchers("/tmall/order-myself").permitAll()
                //让所有请求必须授权
                .anyRequest().authenticated();

        //权限不足自定义逻辑
        http.exceptionHandling()
                .accessDeniedHandler(myAccessFailHandler);

        http
                //取消防火墙
                .csrf().disable()
                //取消Security拦截iframe
                .headers().frameOptions().disable();;
    }

    /**
     * 把加密类放入容器
     * @return 返回对应的加密子类
     */
    @Bean
    public PasswordEncoder getPasswordEncoder(){
        return new BCryptPasswordEncoder();
    }

    @Bean
    GrantedAuthorityDefaults grantedAuthorityDefaults() {
        // Remove the ROLE_ prefix
        return new GrantedAuthorityDefaults("");
    }

}
