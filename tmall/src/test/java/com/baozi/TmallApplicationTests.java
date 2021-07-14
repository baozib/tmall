package com.baozi;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.domain.AlipayTradePayModel;
import com.alipay.api.request.AlipayTradePayRequest;
import com.alipay.api.response.AlipayTradePayResponse;
import com.baozi.entity.GoodsList;
import com.baozi.entity.UserMsg;
import com.baozi.mapper.GoodsMapper;
import com.baozi.mapper.UserMapper;
import com.baozi.service.BaseService;
import com.baozi.service.UserService;
import com.google.gson.Gson;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.File;
import java.time.LocalTime;
import java.util.List;
import java.util.UUID;

@SpringBootTest
class TmallApplicationTests {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private GoodsMapper goodsMapper;

    @Autowired
    private BaseService baseService;

    @Autowired
    private UserService service;

    @Test
    void contextLoads() {
//        AlipayClient alipayClient = new
//                DefaultAlipayClient("\t\n" +
//                "https://openapi.alipaydev.com/gateway.do","2021000117686810","MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQCxHR57IPIR/fdEHDKaICxlVD4ayWJQODZ0XnNScR8pFYhCtLMQCqdky8pV2xeaJDGbFpKpMDFLIW/IdTfYQ4K+mYr6fyaA+Yug8FvTnpFBkHatBeoxOyfxb8X4yEN081VjjtwXCYKPCpvViYGxYXuXuBDz0HKEitc0hOE2GN/uV866WacMUVf3TIujKCcw1VnozZO/NYgmetUxhdsSqMycbYezs8G287clz5FiMdKEmybJ6nx2Q9BoXtQeXu1ye+t8JZVTDWPEBviB3W9kM226ZHx/RT/DPtnq+RGLVk3B5IfYEUOOtSUVNgl2/y5l2UVNOG+mHht9PrDhTewSs+rlAgMBAAECggEAH53WGh7Id6PBZxwtgEvsAO6n43o9nZpbRiyyI25kJJ5eY6IEMQHl3d1vMiJZNT/uxwOhjKg4tHO0k7ExFd7/UOzx3UOjaPSjE0i067LrtSuHs91RcBZiS/wq9/0v5YmmnY4cBdTBxK0dImJYj4SaXnwSMqPsPXLXdd2eolyQZOhlzeIFiP8OT7scZmhdpqGWUbND8V2ftYlHlGE9HbwwYzBCB9aCvkZyVUIDBrLEOS1fYa0O8WvBSI19WWGHEAFJMUMD+EwaMdCKxBhhBAG4ZzRn1sqmyVN/odBLAIhtsQZd39dqIvWpl11p2ewxZEM/1xkSFCq/wYRulJBMxdHQoQKBgQDVvlsDE2oX6ZIKHPPfK2F8fh3Qbzo8qC575+WUqHODJjsj6Pe8AWvDSzjB9OZEL2cBqGHHXaV9NQWJ1jHLS6kcog0PflO0zSL7yQs+MWwZwL0Erv2q5ODHJJZtwCxvuflCB7xLErJUw0NPIWoJ/8NgO0dG4GoivuVWpKywMpcNvQKBgQDUIOnuSKxFWpHS9V745TFo4z6pXkIgQCcrGglG5ZhjiXuaV5mtKA7z1qSLy5ys0OQLPkcRsPJ39LoTzE3FnzvRAZxK2f9S4sldn9QSVgPHlKDQm3eUFNN46g4RsJxqcG1dWsChsP4CbgXevSwI+Gtztm68x0Kq0K6lr9IGG7UASQKBgQCgY9kzs6vXCcQ2pocxngHnQ1PoBq7yuVk4TUlvhgA4F8YlKjpL790HjTioArePzupCyjGlQtZd4B2p0vtGjB34iHm4eJkjgRORUMmI/9kYchLkotNjG6C4jvH6pUwzAqDSNa/Lvdnn1SZ7CJ3jpvLbEWBpBRlfvVOm8qdLCItlGQKBgQCX0iq7QUYSqRy/KKBdcOPpFuNNIsoe/OtLnOnQ1Rg4/Tf6ogG5/XaeLBw+dW7f/O2J4nvI/KS9F+lprAppi2qrTwTGSbnEX84Q9Qg6S1ePKx/hzbNKx5EG9DU3kfiQ8YBElWRTFTLnGEmZPjla/jkhawtcjxx21r54lRqzBneICQKBgQCWwebpAIM+WDKGFpjPXyosjIqBRYUIeSuKbBnVQIqVQqtUTSiO2/d/O4PT2PqLRlyrd3jxvc8NkaGePIetBARiT3KCo0FtPjVZDCHjz5VQk/Q0Fzju7TAk2zNhH7+EPO/YiFzyX3Elos4Wi4jR06Ez4tY3m/PEehCnOyc+jwv5ow==","json","utf-8",
//                "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsR0eeyDyEf33RBwymiAsZVQ+GsliUDg2dF5zUnEfKRWIQrSzEAqnZMvKVdsXmiQxmxaSqTAxSyFvyHU32EOCvpmK+n8mgPmLoPBb056RQZB2rQXqMTsn8W/F+MhDdPNVY47cFwmCjwqb1YmBsWF7l7gQ89ByhIrXNIThNhjf7lfOulmnDFFX90yLoygnMNVZ6M2TvzWIJnrVMYXbEqjMnG2Hs7PBtvO3Jc+RYjHShJsmyep8dkPQaF7UHl7tcnvrfCWVUw1jxAb4gd1vZDNtumR8f0U/wz7Z6vkRi1ZNweSH2BFDjrUlFTYJdv8uZdlFTThvph4bfT6w4U3sErPq5QIDAQAB","RSA2" );
//
//        AlipayTradePayRequest request = new AlipayTradePayRequest();
//        AlipayTradePayModel model = new AlipayTradePayModel();
//        request.setBizModel(model);
//
//        model.setOutTradeNo(System.currentTimeMillis()+"");
//        model.setSubject("Iphone6 16G"); //扣款名称
//        model.setTotalAmount("666"); //扣款金额
//        model.setAuthCode("286892168878989551");//沙箱钱包中的付款码
//        model.setScene("bar_code");
//
//        AlipayTradePayResponse response = null;
//        try {
//            response = alipayClient.execute(request);
//            System.out.println(response.getBody());
//            System.out.println(response.getTradeNo());
//        } catch (AlipayApiException e) {
//            e.printStackTrace();
//        }
        LocalTime now = LocalTime.now();
        System.out.println(now.getMinute());
    }

}
