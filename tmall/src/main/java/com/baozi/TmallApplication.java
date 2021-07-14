package com.baozi;

import lombok.extern.log4j.Log4j2;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;

import java.io.File;

/**
 * 扫描Mapper路径
 */
@MapperScan("com.baozi.mapper")
@SpringBootApplication
/**
 * 开启安全拦截器
 */
@EnableGlobalMethodSecurity(securedEnabled = true)
@Log4j2
public class TmallApplication {

    public static void main(String[] args) {
        /**通道入口*/
        log.info(1);
        SpringApplication.run(TmallApplication.class, args);

    }

}
