<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE>
<html>
    <head>
        <title>天猫注册</title>
        <meta charset="utf-8"> 
    </head>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
       <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
       <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
       <!-- bootstrap.bundle.min.js 用于弹窗、提示、下拉菜单，包含了 popper.min.js -->
       <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
       <!-- 最新的 Bootstrap4 核心 JavaScript 文件 -->
       <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../TianMao-css/register.css">
    <link rel="stylesheet" href="https://at.alicdn.com/t/font_2650523_s8xusu4c0is.css">
    <link rel="icon" href="https://baozizibao.oss-cn-beijing.aliyuncs.com/tmall/%E5%A4%A9%E7%8C%AB%20%282%29.png" >
    <style type=""> </style>
    <body>
        <!-- 头部 -->
        <div id="login-top">
            <a class="" href="/tmall/index">
                <img class="tmall-logo" src="https://img.alicdn.com/tfs/TB1_Gn8RXXXXXXqaFXXXXXXXXXX-380-54.png">
            </a>  
        </div>
        <!-- 中间 -->
        <div id="login-mid" title="上天猫,就够了">
            <img src="http://how2j.cn/tmall/img/site/loginBackground.png"/>
            <!-- 外输入框 -->
            <div class="block-frame" title="">
                <!-- 内输入框 -->
                <div class="input">
                    <!-- 切换外框 -->
                    <div class="switch-select">
                        <div class="btn-password under">注册账号</div>
                    </div>
                    <!-- 输入账号 -->
                    <div class="border-username">
                        <div class="avatar-username suv">
                            <svg t="1625448310617" class="iconusername" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="4711" width="32" height="32">
                                <path d="M593.067 499.2C695.467 465.067 768 369.067 768 256 768 115.2 652.8 0 512 0S256 115.2 256 256c0 113.067 72.533 209.067 174.933 243.2-181.333 36.267-345.6 189.867-345.6 375.467 0 83.2 66.134 149.333 149.334 149.333h554.666c83.2 0 149.334-66.133 149.334-149.333 0-185.6-164.267-339.2-345.6-375.467z" fill="#ffffff" p-id="4712" data-spm-anchor-id="a313x.7781069.0.i6" class="">
                                </path>
                            </svg>
                        </div>
                        <input type="text" placeholder="请输入注册账户" aria-label="请输入注册账户" id="login-user">
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
                    <!-- 再次输入密码 -->
                    <div>  
                        <div class="avatar-password-again suv">
                            <svg t="1625448936855" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="11114" width="32" height="32">
                                <path d="M385.15 385.662H256.257V235.285q0-49.103 19.436-91.557T329.4 69.051t80.815-50.637T512 0q49.103 0 94.625 18.414t80.816 50.637 56.263 74.677 20.971 91.557v150.377h-123.78V263.928q0-64.447-35.804-99.74t-97.183-35.293q-55.24 0-88.999 35.293t-33.758 99.74v121.734z m440.904 61.379q27.62 0 47.568 19.948t19.948 47.568V831.68q0 27.62-9.718 51.66t-26.597 41.943-39.896 28.132-50.638 10.23H250.118q-27.62 0-50.126-10.23t-38.362-27.11-24.551-39.384-8.695-48.08V514.557q0-27.62 19.436-47.568t47.057-19.948h631.177z" fill="#ffffff" p-id="11115" data-spm-anchor-id="a313x.7781069.0.i13" class=""></path>
                            </svg>
                        </div>
                        <input type="password" placeholder="请再次输入登录密码" aria-label="请再次输入登录密码" id="login-pass-again">
                    </div>
                    <!-- 手机号 -->
                    <div>  
                        <div class="avatar-telephone suv">
                            <svg t="1625489480392" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="5639" width="32" height="32">
                                <path d="M619.52 714.752c2.048-1.024 22.016-13.824 27.648-17.408 10.752-6.656 19.968-11.264 28.672-15.36 62.976-28.672 118.784-8.192 192.512 77.824 45.568 53.248 58.88 100.352 41.472 142.848-13.312 31.232-38.4 53.248-83.456 79.872-3.072 1.536-28.672 16.896-35.328 20.992-104.448 64.512-344.576-83.456-516.608-335.872-172.544-253.44-217.6-523.264-111.616-588.8l13.824-8.704 15.36-9.728C245.76 25.088 280.064 11.264 320.512 18.432 360.96 25.6 395.776 55.296 424.96 110.08c61.44 115.712 48.128 170.496-31.232 220.672-5.632 3.584-26.112 15.872-27.648 16.896-19.456 11.776 13.312 92.672 90.112 204.8 77.312 113.152 141.824 175.104 163.328 162.304z" p-id="5640" data-spm-anchor-id="a313x.7781069.0.i0" class="" fill="#ffffff"></path>
                            </svg>
                        </div>
                        <input type="email" placeholder="请输入邮箱" aria-label="请输入邮箱" id="email">
                    </div>
                    <!-- 验证码 -->
                    <div>  
                        <div class="avatar-code suv">
                            <svg t="1625489939746" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="12872" data-spm-anchor-id="a313x.7781069.0.i8" width="32" height="32">
                                <path d="M937.82016 860.16H86.15424A35.328 35.328 0 0 1 51.2 824.6272V199.41888A35.328 35.328 0 0 1 86.17472 163.84h851.66592A35.328 35.328 0 0 1 972.8 199.41888V824.6272a35.328 35.328 0 0 1-34.97984 35.5328z m-27.74528-63.75424V269.2608l-376.87296 289.4592a34.74432 34.74432 0 0 1-43.0592-0.43008L113.89952 257.45408v538.96704h796.16zM847.13472 227.61984H190.83264l321.536 257.12128z" p-id="12873" fill="#ffffff"></path>
                            </svg>
                        </div>
                        <input type="text" placeholder="验证码" aria-label="验证码" id="code">
                        <button id="submit" class="submit">
                            <img src="../images/纸飞机.png" alt="">
                        </button>
                    </div>
                    <!-- 确认按钮 -->
                    <input type="submit" class="cartain" value="注册">
                </div>
            </div>
        </div>

        <div class="alert alert-danger" role="alert">
            <strong>你好</strong>
         </div>

        <!-- 底部 -->
        <div id="tail">
            <div class="center">
                <iframe src="/tmall/reg-tail" frameborder="0" width="1190px" height="400px" ></iframe>
            </div>
        </div>
        <script src="../TianMao-js/register.js"></script>
    </body>
</html>