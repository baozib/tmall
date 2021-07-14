package com.baozi.config;

public class AlipayConfig {

    // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号,开发时使用沙箱提供的APPID，生产环境改成自己的APPID
    public static String APP_ID = "2021000117686810"; //测试

    // 商户私钥，您的PKCS8格式RSA2私钥
    public static String APP_PRIVATE_KEY = "MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQCxHR57IPIR/fdEHDKaICxlVD4ayWJQODZ0XnNScR8pFYhCtLMQCqdky8pV2xeaJDGbFpKpMDFLIW/IdTfYQ4K+mYr6fyaA+Yug8FvTnpFBkHatBeoxOyfxb8X4yEN081VjjtwXCYKPCpvViYGxYXuXuBDz0HKEitc0hOE2GN/uV866WacMUVf3TIujKCcw1VnozZO/NYgmetUxhdsSqMycbYezs8G287clz5FiMdKEmybJ6nx2Q9BoXtQeXu1ye+t8JZVTDWPEBviB3W9kM226ZHx/RT/DPtnq+RGLVk3B5IfYEUOOtSUVNgl2/y5l2UVNOG+mHht9PrDhTewSs+rlAgMBAAECggEAH53WGh7Id6PBZxwtgEvsAO6n43o9nZpbRiyyI25kJJ5eY6IEMQHl3d1vMiJZNT/uxwOhjKg4tHO0k7ExFd7/UOzx3UOjaPSjE0i067LrtSuHs91RcBZiS/wq9/0v5YmmnY4cBdTBxK0dImJYj4SaXnwSMqPsPXLXdd2eolyQZOhlzeIFiP8OT7scZmhdpqGWUbND8V2ftYlHlGE9HbwwYzBCB9aCvkZyVUIDBrLEOS1fYa0O8WvBSI19WWGHEAFJMUMD+EwaMdCKxBhhBAG4ZzRn1sqmyVN/odBLAIhtsQZd39dqIvWpl11p2ewxZEM/1xkSFCq/wYRulJBMxdHQoQKBgQDVvlsDE2oX6ZIKHPPfK2F8fh3Qbzo8qC575+WUqHODJjsj6Pe8AWvDSzjB9OZEL2cBqGHHXaV9NQWJ1jHLS6kcog0PflO0zSL7yQs+MWwZwL0Erv2q5ODHJJZtwCxvuflCB7xLErJUw0NPIWoJ/8NgO0dG4GoivuVWpKywMpcNvQKBgQDUIOnuSKxFWpHS9V745TFo4z6pXkIgQCcrGglG5ZhjiXuaV5mtKA7z1qSLy5ys0OQLPkcRsPJ39LoTzE3FnzvRAZxK2f9S4sldn9QSVgPHlKDQm3eUFNN46g4RsJxqcG1dWsChsP4CbgXevSwI+Gtztm68x0Kq0K6lr9IGG7UASQKBgQCgY9kzs6vXCcQ2pocxngHnQ1PoBq7yuVk4TUlvhgA4F8YlKjpL790HjTioArePzupCyjGlQtZd4B2p0vtGjB34iHm4eJkjgRORUMmI/9kYchLkotNjG6C4jvH6pUwzAqDSNa/Lvdnn1SZ7CJ3jpvLbEWBpBRlfvVOm8qdLCItlGQKBgQCX0iq7QUYSqRy/KKBdcOPpFuNNIsoe/OtLnOnQ1Rg4/Tf6ogG5/XaeLBw+dW7f/O2J4nvI/KS9F+lprAppi2qrTwTGSbnEX84Q9Qg6S1ePKx/hzbNKx5EG9DU3kfiQ8YBElWRTFTLnGEmZPjla/jkhawtcjxx21r54lRqzBneICQKBgQCWwebpAIM+WDKGFpjPXyosjIqBRYUIeSuKbBnVQIqVQqtUTSiO2/d/O4PT2PqLRlyrd3jxvc8NkaGePIetBARiT3KCo0FtPjVZDCHjz5VQk/Q0Fzju7TAk2zNhH7+EPO/YiFzyX3Elos4Wi4jR06Ez4tY3m/PEehCnOyc+jwv5ow==";

    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String ALIPAY_PUBLIC_KEY = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArjTT36/aBNGPo69QGlaf0po33zjAKRAJeUYXlBR5akrm7lzIM4Xe0iHvdMMijcpiO7qPd+dfsmHVv3K5aBzFBhp1J0RoBnQGuqrpB3O3WRGFcpT64Kw9VH3OBUx73ujO0UVUp8N4kftsDA3BB5m1rg+uv7HaphhEL89jpNyEB7OtB4SvmHfETt68fDEHOmxgVjFE1rlyAQZrVs+2uh3Xbmv2+4b14WwblLWKDxJIMaXM5yQJFHS/OEf9RzqHTHsCJy0Vs96hxtiU+vcv6nxII9vqRHS9AoUxFKjB5XlvIBqBGkr9ydjnL5JCmkHiVQPlv4j4Kwhh8i7bK/Iz66rhUwIDAQAB";

    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String notify_url = "http://localhost:8888/Alipay/notifyUrl";

    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问(其实就是支付成功后返回的页面)
    public static String return_url = "http://localhost:8888/Alipay/returnUrl";
    // 签名方式
    public static String sign_type = "RSA2";

    // 字符编码格式
    public static String CHARSET = "UTF-8";

    // 支付宝网关，这是沙箱的网关
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do"; //测试

    // 支付宝网关
    public static String log_path = "C:\\";

    /**
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
//    public static void logResult(String sWord) {
//        FileWriter writer = null;
//        try {
//            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis() + ".txt");
//            writer.write(sWord);
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            if (writer != null) {
//                try {
//                    writer.close();
//                } catch (IOException e) {
//                    e.printStackTrace();
//                }
//            }
//        }
//    }
}