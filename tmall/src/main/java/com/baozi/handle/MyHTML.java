package com.baozi.handle;

import com.aliyuncs.dm.model.v20151123.SingleSendMailRequest;
import org.springframework.stereotype.Component;

/**
 *
 * @desc   自定义发送邮箱页面
 * @author baozi
 * @data   2021/7/8
 */
@Component
public class MyHTML {

    private static SingleSendMailRequest request;

    public  String html = "\n" +
            "<style>\n" +
            "    *{\n" +
            "        margin: 0px;\n" +
            "        padding: 0px;\n" +
            "        font-family: Arial, Helvetica, sans-serif;\n" +
            "        border: none;\n" +
            "        outline: none;\n" +
            "        box-sizing: border-box;\n" +
            "    }\n" +
            "    .container{\n" +
            "        min-height: 100vh;\n" +
            "        display: flex;\n" +
            "        margin-top: 200px;\n" +
            "        justify-content: center;\n" +
            "\n" +
            "    }\n" +
            "    .container .card{\n" +
            "        height: 300px;\n" +
            "        width: 500px;\n" +
            "        background: #eee;\n" +
            "        box-shadow: 0 5px 10px rgba(0, 0, 0, .2);\n" +
            "        position: relative;\n" +
            "        transition: transform 0.5s ease;\n" +
            "        z-index: 0;\n" +
            "    }\n" +
            "\n" +
            "    .container .card .letter form{\n" +
            "        box-shadow: 0 5px 10px rgba(0, 0, 0, .2);\n" +
            "        background: rgb(49, 105, 190);\n" +
            "        border-radius: 5px;\n" +
            "        position: absolute;\n" +
            "        top: 15px;\n" +
            "        left: 50%;\n" +
            "        transform: translateX(-50%);\n" +
            "        text-align: center;\n" +
            "        padding: 20px;\n" +
            "        z-index: -1;\n" +
            "    }\n" +
            "\n" +
            "    .container .card .letter form img{\n" +
            "        height: 130px;\n" +
            "        width: 315px;\n" +
            "        margin: 5px 0;\n" +
            "        object-fit: cover;\n" +
            "        background: rgb(49, 105, 190);\n" +
            "    }\n" +
            "    .container .card .letter form h3{\n" +
            "        font-size: 13px;\n" +
            "        color: #999;\n" +
            "        padding: 10px;\n" +
            "        text-transform: uppercase;\n" +
            "\n" +
            "    }\n" +
            "    .container .card::before{\n" +
            "        background: #f9f9f9;\n" +
            "        clip-path: polygon(50% 50%,100% 0,100% 100%,0 100%,0 0);\n" +
            "    }\n" +
            "    .container .card::before,\n" +
            "    .container .card::after{\n" +
            "        content: '';\n" +
            "        position: absolute;\n" +
            "        top: 0;\n" +
            "        left: 0;\n" +
            "        height: 100%;\n" +
            "        width: 100%;\n" +
            "    }\n" +
            "    .container .card::after{\n" +
            "        background: #ccc;\n" +
            "        clip-path: polygon(0 0,50% 50%,100% 0);\n" +
            "        transition: transform .2s ease-out;\n" +
            "        transition-delay: .3s;\n" +
            "        transform-origin: top;\n" +
            "    }\n" +
            "    .container .card:hover:after{\n" +
            "        transform: rotateX(180deg);\n" +
            "        transition-delay: .0s;\n" +
            "        z-index: -2;\n" +
            "    }\n" +
            "    .container .card:hover .letter form{\n" +
            "        top: -175px;\n" +
            "        transition: top .2s linear;\n" +
            "        transition-delay: .3s;\n" +
            "    }\n" +
            "    .container .card:hover{\n" +
            "        transform: translateY(70px);\n" +
            "    }\n" +
            "\n" +
            "</style>\n" +
            "\n" +
            "\n" +
            "\n" +
            "<div class=\"container\" >\n" +
            "    \n" +
            "    <div class=\"card\">\n" +
            "        <div class=\"letter\">\n" +
            "            <form action=\"\">\n" +
            "                <img src=\"https://baozizibao.oss-cn-beijing.aliyuncs.com/tmall/%E9%82%AE%E4%BB%B6.gif\" alt=\"\">\n" +
            "                <h3>The verification code you access is</h3>\n" +
            "                <div class=\"inputBox\" style=\"font-size: 18px; border-bottom: 1px solid yellow; width: 100px; margin: 0 auto;\">\n" +
            "                    <strong>123456</strong>\n" +
            "                </div>\n" +
            "            </form>\n" +
            "        </div>\n" +
            "    </div>\n" +
            "</div>";


    /*  使用建造者模式 适配器模式 来完成封装  简化阅读量 可读性可拓展增强  */

    public static SingleSendMailRequest Builder(String email){
        request = new SingleSendMailRequest();
        //设置发送地址
        request.setAccountName("baozi@baozizibao.top");
        //设置名称
        request.setFromAlias("Baozi");
        //设置指定发送
        request.setAddressType(1);
        //设置标签
        request.setTagName("tmall");
        request.setReplyToAddress(true);
        //设置收件人
        request.setToAddress(email);
        //设置标题
        request.setSubject("天猫验证");
        return request;
    }

    public String insertRandom(String s){
        String replace = html.replaceAll("123456", s);
        return replace;
    }



}
