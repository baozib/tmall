package com.baozi.config;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

import java.util.Objects;

/**
 *
 * @desc   自定义注入
 * @author baozi
 * @data   2021/7/8
 */
@Component
public class BeanUtil implements ApplicationContextAware {


    private static ApplicationContext msg;

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        if(msg == null){
            msg = Objects.requireNonNull(applicationContext);
        }
    }

    public static Object getBean(String name){

        return msg.getBean(name);
    }

    public static <T> T getBean(Class<T> clazz){

        return msg.getBean(clazz);
    }

}
