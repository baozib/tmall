package com.baozi.config;

import com.aliyun.oss.OSSClient;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;



/**
 *
 * @desc   阿里OSS配置信息
 * @author baozi
 * @data   2021/7/8
 */
@Configuration
@PropertySource("classpath:alioss.properties")
@ConfigurationProperties(prefix = "alibaba")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class MyOSSConfigurer {

    private String endpoint;
    private String accessKeyId;
    private String accessKeySecret;
    private String bucketName;
    private String urlPreFix;

    @Bean
    public OSSClient getOSSClient(){
        return new OSSClient(endpoint, accessKeyId, accessKeySecret);
    }

}
