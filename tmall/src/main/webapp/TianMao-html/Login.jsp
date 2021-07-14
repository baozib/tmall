<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>理想生活上天猫</title>
        <meta charset="utf-8">
    </head>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="../TianMao-css/login.css">
    <!-- 引入阿里图标库 -->
    <link rel="stylesheet" href="https://at.alicdn.com/t/font_2650523_s8xusu4c0is.css">
    <link rel="icon" href="https://baozizibao.oss-cn-beijing.aliyuncs.com/tmall/%E5%A4%A9%E7%8C%AB%20%281%29.png" >
    
       <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
       <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
       <!-- bootstrap.bundle.min.js 用于弹窗、提示、下拉菜单，包含了 popper.min.js -->
       <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
       <!-- 最新的 Bootstrap4 核心 JavaScript 文件 -->
       <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <body>
        <!-- 头部 -->
        <div id="login-top">
            <a class="" href="/tmall/index">
                <img class="tmall-logo" src="https://img.alicdn.com/tfs/TB1_Gn8RXXXXXXqaFXXXXXXXXXX-380-54.png">
            </a>  
        </div>
        <!-- 中间 -->
        <div id="login-mid" title="上天猫,就够了">
            <img src="https://gw.alicdn.com/tfs/TB1kcCBSpXXXXarapXXXXXXXXXX-1190-600.png"/>
            <!-- 外输入框 -->
            <div class="block-frame" title="">
                <!-- 内输入框 -->
                <div class="input">
                    <!-- 切换外框 -->
                    <div class="switch-select">
                        <div class="btn-password under">密码登录</div>
                        <div class="btn-email under">短信登录</div>
                    </div>
                    <!-- 输入账号 -->
                    <div class="border-username">
                        <div class="avatar-username suv">
                            <svg t="1625448310617" class="iconusername" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="4711" width="32" height="32">
                                <path d="M593.067 499.2C695.467 465.067 768 369.067 768 256 768 115.2 652.8 0 512 0S256 115.2 256 256c0 113.067 72.533 209.067 174.933 243.2-181.333 36.267-345.6 189.867-345.6 375.467 0 83.2 66.134 149.333 149.334 149.333h554.666c83.2 0 149.334-66.133 149.334-149.333 0-185.6-164.267-339.2-345.6-375.467z" fill="#ffffff" p-id="4712" data-spm-anchor-id="a313x.7781069.0.i6" class="">
                                </path>
                            </svg>
                        </div>
                        <input type="text" placeholder="会员名/邮箱/手机号" aria-label="会员名/邮箱/手机号" id="login-user">
                    </div>
                    <!-- 输入密码 -->
                    <div>  
                        <div class="avatar-password suv">
                            <svg t="1625448936855" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="11114" width="32" height="32">
                                <path d="M385.15 385.662H256.257V235.285q0-49.103 19.436-91.557T329.4 69.051t80.815-50.637T512 0q49.103 0 94.625 18.414t80.816 50.637 56.263 74.677 20.971 91.557v150.377h-123.78V263.928q0-64.447-35.804-99.74t-97.183-35.293q-55.24 0-88.999 35.293t-33.758 99.74v121.734z m440.904 61.379q27.62 0 47.568 19.948t19.948 47.568V831.68q0 27.62-9.718 51.66t-26.597 41.943-39.896 28.132-50.638 10.23H250.118q-27.62 0-50.126-10.23t-38.362-27.11-24.551-39.384-8.695-48.08V514.557q0-27.62 19.436-47.568t47.057-19.948h631.177z" fill="#ffffff" p-id="11115" data-spm-anchor-id="a313x.7781069.0.i13" class=""></path>
                            </svg>
                        </div>
                        <input type="password" placeholder="请输入登录密码" aria-label="请输入登录密码" id="login-pass">
                    </div>
                    <!-- 确认按钮 -->
                    <input type="submit" class="cartain" value="登录">
                    <!-- 其他操作 -->
                    <div class="extra-oper">
                        <a href="#" class="forget-password">忘记密码</a>
                        <a href="#" class="forget-username">忘记用户名</a>
                        <a href="Register.html" class="register">免费注册</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- 尾部 -->
        <div id="login-tail">
            <div class="content-one">
                <a href="https://pages.tmall.com/wow/seller/act/zhaoshangproduce">关于天猫</a>
                <a href="https://service.tmall.com/support/tmall/tmallHelp.htm">商家服务大厅</a>
                <a href="https://open.taobao.com">开放平台</a>
                <a href="https://job.alibaba.com/zhaopin/index.htm">诚聘英才</a>
                <a href="https://consumerservice.taobao.com/contact-us">联系我们</a>
                <a href="https://xtao.tmall.com?tracelog=tmallfoot">网站合作</a>
                <a href="https://terms.alicdn.com/legal-agreement/terms/suit_bu1_tmall/suit_bu1_tmall201801121425_43176.html">法律声明</a>
                <a href="https://terms.alicdn.com/legal-agreement/terms/suit_bu1_tmall/suit_bu1_tmall201801031144_60809.html">隐私权政策</a>
                <a href="http://ipp.alibabagroup.com/">知识产权</a>
                <a href="https://jubao.alibaba.com/index.html?site=TMALL">廉政举报</a>
                <a href="https://terms.alicdn.com/legal-agreement/terms/suit_bu1_tmall/suit_bu1_tmall202105131215_46119.html">不当竞争举报</a>
            </div>
            <div class="content-two">
                <a href="http://www.alibabagroup.com/cn/global/home">阿里巴巴集团</a>
                <a href="https://www.taobao.com/">淘宝网</a>
                <a href="https://www.tmall.com/">天猫</a>
                <a href="https://ju.taobao.com/">聚划算</a>
                <a href="http://www.aliexpress.com/">全球速卖通</a>
                <a href="http://www.alibaba.com/">阿里巴巴国际交易市场</a>
                <a href="https://www.1688.com/">1688</a>
                <a href="https://www.alimama.com/">阿里妈妈</a>
                <a href="https://www.fliggy.com/">飞猪</a>
                <a href="http://www.aliyun.com/">阿里云计算</a>
                <a href="http://www.alios.cn/">AliOS</a>
                <a href="http://aliqin.cn/">阿里通信</a>
                <a href="http://www.net.cn/">万网</a>
                <a href="http://www.autonavi.com/">高德</a>
                <a href="http://www.uc.cn/">UC</a>
                <a href="http://www.umeng.com/">友盟</a>
                <a href="http://www.xiami.com/">虾米</a>
                <a href="http://www.dingtalk.com/?lwfrom=20150205115110773">钉钉</a>
                <a href="https://www.alipay.com/">支付宝</a>
                <a href="https://s.alibaba.com/?scene=clinks">阿里安全</a>
            </div>
            <div class="content-three">
                <a href="https://beian.miit.gov.cn/#/Integrated/index">增值电信业务经营许可证：浙B2-20110446</a>
                <span>市场名称登记证：工商网市字3301004119号</span>
                <span>出版物网络交易平台服务经营备案证： 新出发浙备字第2019002号</span>
                <br><br>
                <span>互联网违法和不良信息举报电话：0571-81683755 blxxjb@alibaba-inc.com</span>
                <span>互联网药品信息服务资质证书编号：浙-（经营性）-2017-0005</span>
                <span>浙公网安备 33010002000120号</span>
                <p>医疗器械网络交易服务第三方平台备案：（浙）网械平台备字[2018]第00002号</p>
                <span>浙江省网络食品销售第三方平台提供者备案：浙网食A33010002</span>
                <a href="https://jbts.mct.gov.cn/">12318举报</a>
                <a href="http://beian.miit.gov.cn/">浙B2-20110446-1</a>
                <p>© 2003-现在 TMALL.COM 版权所有</p>
            </div>
            
            <div class="alert alert-danger" role="alert">
                <strong>你好</strong>
            </div>
            <img src="../images/登录logo.png" alt="" class="login-logo">

        </div>

    <script src="../TianMao-js/login.js"></script>
    <script src="../TianMao-js/alert.js"></script>
    </body>
 

</html>
