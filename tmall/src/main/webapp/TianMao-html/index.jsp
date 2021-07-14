<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE>
<html>
    <head>
        <title>天猫tmall.com--理想生活上天猫</title>
    </head>


    <link rel="icon" href="https://baozizibao.oss-cn-beijing.aliyuncs.com/tmall/%E5%A4%A9%E7%8C%AB%20%283%29.png" >
    <!-- 新 Bootstrap4 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <!-- bootstrap.bundle.min.js 用于弹窗、提示、下拉菜单，包含了 popper.min.js -->
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <!-- 最新的 Bootstrap4 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../TianMao-css/index.css">
    <!-- 阿里图标库 -->
    <link rel="stylesheet" href="https://at.alicdn.com/t/font_2650523_yl6we2erz9.css">
    <!-- 阿里图标库 -->
    <link rel="stylesheet" href="https://at.alicdn.com/t/font_2656250_ksbitmwk2y.css">
    <!-- js -->
    
    <body>
        <!-- 顶部 -->
        <nav class="top_outer" style="font-size: 13px;">
            <div class="top">
                <a href="#" class="mainpage">
                    <span class="glyphicon glyphicon-home redColor"></span>
                    <svg style="position: relative;top:-2px" t="1626105058126" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="1533" width="20" height="20">
                        <path d="M423.23842 889.236714l0-266.284739 177.523159 0 0 266.284739 221.903949 0L822.665529 534.190395l133.142369 0L512 134.762263 68.191078 534.190395l133.142369 0 0 355.047342L423.23842 889.237737z" p-id="1534" data-spm-anchor-id="a313x.7781069.0.i0" class="" fill="#d81e06">

                        </path></svg>
                    天猫首页
                </a>
                <span>喵，欢迎来到天猫</span>
                <a href="/tmall/self-login" class="userhide">请登录</a>
                <a href="/tmall/registered" class="userhide">免费注册</a>
                <span class="pull-right" style="position: relative;left: 350px">
                    <a href="/tmall/order-myself" style="position: relative;left: -10px">我的订单</a>
                    <a href="#" class="shop-cart-pic">

                        <svg style="position: relative;top:-1px" t="1626105228871" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="2477" width="16" height="16"><path d="M334.476 778.285c-49.041 0-88.318 39.72-88.318 88.761s39.278 88.762 88.318 88.762 88.761-39.72 88.761-88.762c0.001-49.04-39.72-88.761-88.761-88.761zM68.19 68.19v88.762h88.762l159.55 336.629-59.915 108.733c-6.879 12.87-10.874 27.295-10.874 42.827 0 49.041 39.72 88.762 88.762 88.762h532.57v-88.762H353.338c-6.213 0-11.095-4.882-11.095-11.095 0-1.998 0.444-3.772 1.331-5.326l39.72-72.34h330.638c33.286 0 62.355-18.419 77.667-45.712l158.662-288.032c3.55-6.214 5.547-13.537 5.547-21.304 0-24.63-19.972-44.38-44.38-44.38H255.256L213.094 68.19H68.191z m710.094 710.094c-49.041 0-88.318 39.72-88.318 88.761s39.278 88.762 88.318 88.762 88.761-39.72 88.761-88.762c0-49.04-39.72-88.761-88.761-88.761z" p-id="2478" data-spm-anchor-id="a313x.7781069.0.i5" class="" fill="#d81e06">
                        </path></svg>
                        购物车
                    </a>
                </span>
                <span  class="collect">
                    <a href="" class="box-collect">
                        收藏夹
                        <img src="../../images/下箭头.png" alt="" class="arrow">
                    </a>
                </span>
                <span class="myself-name btn btn-primary"  id="clickself" data-toggle="modal" data-target="#exampleModal"    style="left: -420px; position: relative;visibility: hidden;color: rgb(93, 93, 180);cursor: pointer;font-weight: bold; ">
                    您好，郭江龙
                </span>
                <span>
                    
                </span>
            </div>
        </nav>
        <!-- 搜索框 -->
        <div class="logo-search-shopcart">
            <!-- 左侧图片 -->
            <img src="https://img.alicdn.com/tfs/TB1MaLKRXXXXXaWXFXXXXXXXXXX-480-260.png">
            <!-- 搜索框 -->
            <div class="search" title="请输入搜索文字">
                <input type="text" placeholder="搜索 天猫 商品/品牌/店铺" class="logo-search">
                <span title="" class="search-logo">搜 索</span>
            </div>
            <!-- 购物栏 -->
            <div>

            </div>
            <div class="cra-pic">
                <img src="http://how2j.cn/tmall/img/site/cateye.png">
                <img src="http://how2j.cn/tmall/img/site/cateye.png" class="pat">
                <img src="http://how2j.cn/tmall/img/site/cateye.png" alt="">
                <img src="http://how2j.cn/tmall/img/site/cateye.png" alt="">
                <img src="http://how2j.cn/tmall/img/site/cateye.png" alt="">
                <img src="http://how2j.cn/tmall/img/site/cateye.png" alt="">
            </div>
        </div>
        
        <!-- 滚动 -->
        <div id="carousel-outer" class="carousel slide" data-ride="carousel">
                <div class="headBar">
                    <div class="head">
                        <svg t="1625576906954" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="9298" data-spm-anchor-id="a313x.7781069.0.i7" width="32" height="32"><path d="M66.488889 211.781818h891.022222c28.198788 0 50.980202-22.238384 50.980202-49.648485 0-27.397172-22.768485-49.648485-50.980202-49.648485H66.488889C38.341818 112.484848 15.508687 134.723232 15.508687 162.133333s22.833131 49.648485 50.980202 49.648485z m891.009293 248.242424H66.488889C38.277172 460.024242 15.508687 482.262626 15.508687 509.672727s22.768485 49.648485 50.980202 49.648485h891.022222c28.198788 0 50.980202-22.238384 50.980202-49.648485-0.012929-27.410101-22.923636-49.648485-50.993131-49.648485z m0 351.63798H66.488889c-28.134141 0-50.980202 22.238384-50.980202 49.648485s22.833131 49.648485 50.980202 49.648485h891.022222c28.198788 0 50.980202-22.238384 50.980202-49.648485-0.012929-27.397172-22.781414-49.648485-50.993131-49.648485z m0 0" p-id="9299" data-spm-anchor-id="a313x.7781069.0.i5" class="" fill="#ffffff"></path></svg>
                        <span>商品分类</span>
                    </div>
                    <div class="rightMenu">
                        <span><a href="#"  class="patch1"><img src="http://how2j.cn/tmall/img/site/chaoshi.png"></a></span>
                        <span><a href="#" class="patch2"><img src="http://how2j.cn/tmall/img/site/guoji.png"></a></span>
                        <span ><a href="#" class="patch3">飞猪旅行</a></span>        
                        <span><a href="#" class="patch4">医药馆</a></span>        
                        <span><a href="#" class="">喵生鲜</a></span>        
                        <span><a href="#" class="patch5">苏宁易购</a></span> 
                        <span><a href="#" class="patch6">天猫内容</a></span>
                    </div>
                </div>
                <div id="demo" class="carousel slide" data-ride="carousel">
    
                    <!-- 指示符 -->
                    <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1"></li>
                    <li data-target="#demo" data-slide-to="2"></li>
                    <li data-target="#demo" data-slide-to="3"></li>
                    <li data-target="#demo" data-slide-to="4"></li>
                    <li data-target="#demo" data-slide-to="5"></li>
                    </ul>
                    <!-- 轮播图片 -->
                    <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="http://img.alicdn.com/imgextra/i3/O1CN01Am8Sra21Zaice06ax_!!6000000006999-2-tps-1130-500.png_q100.jpg_.webp">
                    </div>
                    <div class="carousel-item">
                        <img src="https://aecpm.alicdn.com/simba/img/TB1W4nPJFXXXXbSXpXXSutbFXXX.jpg">
                    </div>
                    <div class="carousel-item">
                        <img src="http://how2j.cn/tmall/img/lunbo/4.jpg">
                    </div>
                    <div class="carousel-item">
                        <img src="https://img.alicdn.com/tps/i4/i3/6000000003435/O1CN01fS1G4M1bFHA2rvIwi_!!6000000003435-0-ald.jpg_q100.jpg_.webp">
                    </div>
                    <div class="carousel-item">
                        <img src="https://img.alicdn.com/tps/TB1QyGZLVXXXXa9XVXXXXXXXXXX-1130-500.jpg_q100.jpg_.webp">
                    </div>
                    <div class="carousel-item">
                        <img src="https://img.alicdn.com/tfs/TB1_1OLxQL0gK0jSZFtXXXQCXXa-1130-500.jpg_q100.jpg_.webp">
                    </div>
                    </div>
                    <!-- 左右切换按钮 -->
                 
                </div>
                <!-- 导航栏 -->
                <div class="navigation">
                    <div class="one">
                        <i class="icon-nvzhuang iconfont"></i>
                        <a href="">女装 /内衣</a>
                    </div>
                    <div class="two">
                        <i class="icon-nanzhuang iconfont"></i>
                        <a href="">男装 /运动户外</a>
                    </div>
                    <div class="three">
                        <i class="icon-xiezi iconfont"></i>
                        <a href="">女鞋 /男鞋 /箱包</a>
                    </div>
                    <div class="four">
                        <i class="icon-meizhuang iconfont"></i>
                        <a href="">美妆 /个人护理</a>
                    </div>
                    <div class="five">
                        <i class="icon-zuanshi iconfont"></i>
                        <a href="">腕表 /眼镜 / 珠宝饰品</a>
                    </div>
                    <div class="six">
                        <i class="icon-shouji iconfont"></i>
                        <a href="">手机 /数码 /电脑办公</a>
                    </div>
                    <div class="seven">
                        <i class="icon-yingerche iconfont"></i>
                        <a href="">母婴玩具</a>
                    </div>
                    <div class="eight">
                        <i class="icon-mian iconfont"></i>
                        <a href="">零食 /茶酒 /进口食品</a>
                    </div>
                    <div class="nine">
                        <i class="icon-shuiguo iconfont"></i>
                        <a href="">生鲜水果</a>
                    </div>
                    <div class="ten">
                        <i class="icon-dianqi iconfont"></i>
                        <a href="">大家电 /生活电器</a>
                    </div>
                    <div class="eleven">
                        <i class="icon-jiancai iconfont"></i>
                        <a href="">家具建材</a>
                    </div>
                    <div class="thirteen">
                        <i class="icon-che iconfont"></i>
                        <a href="">汽车 /配件 /用品</a>
                    </div>
                    <div class="fourteen">
                        <i class="icon-xianhua iconfont"></i>
                        <a href="">家纺 /家饰 /鲜花</a>
                    </div>
                    <div class="fifteen">
                        <i class="icon-baojian iconfont"></i>
                        <a href="">医药保健</a>
                    </div>
                    <div class="sixteen">
                        <i class="icon-chuju iconfont"></i>
                        <a href="">厨具 /收纳 /宠物</a>
                    </div>
                    <div class="seventeen">
                        <i class="icon-lujing4725 iconfont"></i>
                        <a href="">图书音像</a>
                    </div>
                </div>
                <!-- 品牌 -->
                <div class="brand">
                    <div class="brand-one">
                        <div><a href="" class="a-one">
                            <img src="https://img.alicdn.com/i2/2/TB1ls6MHQ9WBuNjSspeSuuz5VXa.jpg_170x120q100.jpg_.webp" alt="">
                            <div class="back-cont">
                                <span class="mybtn">点击进入</span>
                            </div>
                        </a></div>
                        <div class="a-one"><a href="">
                            <img src="https://img.alicdn.com/i2/2/TB1W1ShHVXXXXbOXXXXSutbFXXX.jpg_170x120q100.jpg_.webp" alt="">
                            <div class="back-cont">
                                <span class="mybtn">点击进入</span>
                            </div>
                        </a></div>
                        <div class="a-one"><a href="">
                            <img src="https://img.alicdn.com/i2/2/TB1ADvMHpXXXXcDXFXXSutbFXXX.jpg_170x120q100.jpg_.webp" alt="">
                            <div class="back-cont">
                                <span class="mybtn">点击进入</span>
                            </div>
                        </a></div>
                        <div class="a-one"><a href="">
                            <img src="https://img.alicdn.com/i2/2/TB1Z.tqbAvoK1RjSZPfXXXPKFXa?abtest=&pos=60&abbucket=&acm=09042.1003.1.1200415&scm=1007.13029.131809.100200300000000_170x120q100.jpg_.webp" alt="">
                            <div class="back-cont">
                                <span class="mybtn">点击进入</span>
                            </div>
                        </a></div>
                        <div class="a-one"><a href="">
                            <img src="https://img.alicdn.com/i2/2/TB1zS2gGeSSBuNjy0FlXXbBpVXa?abtest=&pos=66&abbucket=&acm=09042.1003.1.1200415&scm=1007.13029.131809.100200300000000_170x120q100.jpg_.webp" alt="">
                            <div class="back-cont">
                                <span class="mybtn">点击进入</span>
                            </div>
                        </a></div>
                        <div class="a-one"><a href="">
                            <img src="https://img.alicdn.com/i2/2/T1wMh5XhVGXXb1upjX.jpg_170x120q100.jpg_.webp" alt="">
                            <div class="back-cont">
                                <span class="mybtn">点击进入</span>
                            </div>
                        </a></div>
                        <div class="a-one"><a href="">
                            <img src="https://img.alicdn.com/i2/2/T1XKtaXn0gV.xXXXXX.jpg_170x120q100.jpg_.webp" alt="">
                            <div class="back-cont">
                                <span class="mybtn">点击进入</span>
                            </div>
                        </a></div>
                        <div class="a-one"><a href="">
                            <img src="https://img.alicdn.com/i2/2/TB1_aF7pG6qK1RjSZFmXXX0PFXa?abtest=&pos=6&abbucket=&acm=09042.1003.1.1200415&scm=1007.13029.131809.100200300000000_170x120q100.jpg_.webp" alt="">
                            <div class="back-cont">
                                <span class="mybtn">点击进入</span>
                            </div>
                        </a></div>
                        <div class="a-one"><a href="">
                            <img src="https://img.alicdn.com/i2/2/TB1pRaOIFXXXXXmXpXXSutbFXXX.jpg_170x120q100.jpg_.webp" alt="">
                            <div class="back-cont">
                                <span class="mybtn">点击进入</span>
                            </div>
                        </a></div>
                        <div class="a-one"><a href="">
                            <img src="https://img.alicdn.com/i2/2/TB1TJNTPXXXXXcqXVXXSutbFXXX.jpg_170x120q100.jpg_.webp" alt="">
                            <div class="back-cont">
                                <span class="mybtn">点击进入</span>
                            </div>
                        </a></div>
                    </div>
                    <div class="brand-two">
                        <div class="a-one"><a href="">
                            <img src="https://img.alicdn.com/i2/2/TB1KH4GQpXXXXb_apXXSutbFXXX.jpg_170x120q100.jpg_.webp">
                            <div class="back-cont">
                                <span class="mybtn">点击进入</span>
                            </div>
                        </a></div>
                        <div class="a-one"><a href="">
                            <img src="https://img.alicdn.com/i2/2/TB1Im97lVT7gK0jSZFpXXaTkpXa?abtest=&pos=9&abbucket=&acm=09042.1003.1.1200415&scm=1007.13029.131809.100200300000000_170x120q100.jpg_.webp" alt="">
                            <div class="back-cont">
                                <span class="mybtn">点击进入</span>
                            </div>
                        </a></div>
                        <div class="a-one"><a href="">
                            <img src="https://img.alicdn.com/i2/2/TB1aXJ9IXXXXXbjXFXXSutbFXXX.jpg_170x120q100.jpg_.webp" alt="">
                            <div class="back-cont">
                                <span class="mybtn">点击进入</span>
                            </div>
                        </a></div>
                        <div class="a-one"><a href="">
                            <img src="https://img.alicdn.com/i2/2/TB1_kq7j1SSBuNjy0FlXXbBpVXa?abtest=&pos=14&abbucket=&acm=09042.1003.1.1200415&scm=1007.13029.131809.100200300000000_170x120q100.jpg_.webp" alt="">
                            <div class="back-cont">
                                <span class="mybtn">点击进入</span>
                            </div>
                        </a></div>
                        <div class="a-one"><a href="">
                            <img src="https://img.alicdn.com/i2/2/TB1nJxqJXXXXXchapXXSutbFXXX.jpg_170x120q100.jpg_.webp" alt="">
                            <div class="back-cont">
                                <span class="mybtn">点击进入</span>
                            </div>
                        </a></div>
                        <div class="a-one"><a href="">
                            <img src="https://img.alicdn.com/i2/2/TB1R1K4GFmWBuNjSspdSuvugXXa.jpg_170x120q100.jpg_.webp" alt="">
                            <div class="back-cont">
                                <span class="mybtn">点击进入</span>
                            </div>
                        </a></div>
                        <div class="a-one"><a href="">
                            <img src="https://img.alicdn.com/i2/2/TB1unhgKXXXXXaUXXXXSutbFXXX.jpg_170x120q100.jpg_.webp" alt="">
                            <div class="back-cont">
                                <span class="mybtn">点击进入</span>
                            </div>
                        </a></div>
                        <div class="a-one"><a href="">
                            <img src="https://img.alicdn.com/i2/2/TB1sM7GSXXXXXb3aXXXXXXXXXXX?abtest=&pos=17&abbucket=&acm=09042.1003.1.1200415&scm=1007.13029.131809.100200300000000_170x120q100.jpg_.webp" alt="">
                            <div class="back-cont">
                                <span class="mybtn">点击进入</span>
                            </div>
                        </a></div>
                        <div class="a-one"><a href="">
                            <img src="https://img.alicdn.com/i2/2/TB1ytKieRWD3KVjSZKPXXap7FXa?abtest=&pos=18&abbucket=&acm=09042.1003.1.1200415&scm=1007.13029.131809.100200300000000_170x120q100.jpg_.webp" alt="">
                            <div class="back-cont">
                                <span class="mybtn">点击进入</span>
                            </div>
                        </a></div>
                        <div class="a-one"><a href="">
                            <img src="https://img.alicdn.com/i2/2/T25cAwXGhXXXXXXXXX-1785908005.jpg_170x120q100.jpg_.webp" alt="">
                            <div class="back-cont">
                                <span class="mybtn">点击进入</span>
                            </div>
                        </a></div>
                    </div>
                    <div class="brand-three">
                        <div class="a-one"><a href="">
                            <img src="https://img.alicdn.com/i2/2/TB14P.xIVXXXXXjapXXSutbFXXX.jpg_170x120q100.jpg_.webp" alt="">
                            <div class="back-cont">
                                <span class="mybtn">点击进入</span>
                            </div>
                        </a></div>
                        <div class="a-one"><a href="">
                            <img src="https://img.alicdn.com/i2/2/TB1DbTKHpXXXXbaXVXXSutbFXXX.jpg_170x120q100.jpg_.webp" alt="">
                            <div class="back-cont">
                                <span class="mybtn">点击进入</span>
                            </div>
                        </a></div>
                        <div class="a-one"><a href="">
                            <img src="https://img.alicdn.com/i2/2/TB1hPgIIXXXXXcYXXXXSutbFXXX.jpg_170x120q100.jpg_.webp" alt="">
                            <div class="back-cont">
                                <span class="mybtn">点击进入</span>
                            </div>
                        </a></div>
                        <div class="a-one"><a href="">
                            <img src="https://img.alicdn.com/i2/2/TB1T6r1HpXXXXXYaXXXSutbFXXX.jpg_170x120q100.jpg_.webp" alt="">
                            <div class="back-cont">
                                <span class="mybtn">点击进入</span>
                            </div>
                        </a></div>
                        <div class="a-one"><a href="">
                            <img src="https://img.alicdn.com/i2/2/TB1Cc02hNtnkeRjSZSgXXXAuXXa?abtest=&pos=54&abbucket=&acm=09042.1003.1.1200415&scm=1007.13029.131809.100200300000000_170x120q100.jpg_.webp" alt="">
                            <div class="back-cont">
                                <span class="mybtn">点击进入</span>
                            </div>
                        </a></div>
                        <div class="a-one"><a href="">
                            <img src="https://img.alicdn.com/i2/2/T1cHTgXhXhXXb1upjX.jpg_170x120q100.jpg_.webp" alt="">
                            <div class="back-cont">
                                <span class="mybtn">点击进入</span>
                            </div>
                        </a></div>
                        <div class="a-one"><a href="">
                            <img src="https://img.alicdn.com/i2/2/TB1jUyFvlyWBuNkSmFPSutguVXa.jpg_170x120q100.jpg_.webp" alt="">
                            <div class="back-cont">
                                <span class="mybtn">点击进入</span>
                            </div>
                        </a></div>
                        <div class="a-one"><a href="">
                            <img src="https://img.alicdn.com/i2/2/TB1QgLsKXXXXXXgXVXXSutbFXXX.jpg_170x120q100.jpg_.webp" alt="">
                            <div class="back-cont">
                                <span class="mybtn">点击进入</span>
                            </div>
                        </a></div>
                        <div class="a-one"><a href="">
                            <img src="https://img.alicdn.com/i2/2/TB1sC_ZNXT7gK0jSZFpXXaTkpXa?abtest=&pos=24&abbucket=&acm=09042.1003.1.1200415&scm=1007.13029.131809.100200300000000_170x120q100.jpg_.webp" alt="">
                            <div class="back-cont">
                                <span class="mybtn">点击进入</span>
                            </div>
                        </a></div>
                        <div class="a-one"><a href=""class="switch-content">
                            <svg t="1625622053627" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="2401" width="32" height="32" >
                                <path d="M86.243556 531.171556a388.039111 388.039111 0 0 1 712.135111-213.504 43.121778 43.121778 0 0 0 71.964444-47.502223A474.282667 474.282667 0 0 0 0 531.171556a43.121778 43.121778 0 0 0 86.243556 0zM899.015111 531.171556A388.039111 388.039111 0 0 1 186.88 744.675556a43.121778 43.121778 0 1 0-71.964444 47.502222A474.282667 474.282667 0 0 0 985.315556 531.171556a43.121778 43.121778 0 0 0-86.243556 0z" fill="#bfbfbf" p-id="2402"></path><path d="M635.960889 272.497778a43.121778 43.121778 0 0 0 0 86.186666h215.608889c23.779556 0 43.064889-19.342222 43.064889-43.121777v-215.608889a43.121778 43.121778 0 1 0-86.186667 0V272.497778h-172.487111zM312.604444 789.845333a43.121778 43.121778 0 1 0 0-86.243555h-215.608888a43.121778 43.121778 0 0 0-43.121778 43.121778v215.608888a43.121778 43.121778 0 0 0 86.243555 0v-172.487111h172.487111z" fill="#bfbfbf" p-id="2403"></path>
                            </svg>
                            <span>换一批</span>
                        </a></div>
                    </div>
                </div>
        </div>
        <!-- 背景图 -->
        <div id="back-pic">
        </div>

        <!-- 大内容 -->
        <div class="life-goods" id="index-life">
            <img src="https://img.alicdn.com/tfs/TB1nveReMoQMeJjy1XaXXcSsFXa-235-618.png" alt="" class="big-pic">
            <span class="hanguo">韩国进口</span>
            <span class="spec">天猫专享进口水果季</span>



        </div>

        <!-- 插图 -->
        <div class="mid-pic">
            <img src="https://aecpm.alicdn.com/simba/img/TB1x8DCJFXXXXc7XFXXSutbFXXX.jpg" alt="">
        </div>


        <!-- 相册滚动 -->
        <div style="margin: 0 auto; width: 1230px; height: 350px; background: rgb(245, 245, 245); border-radius: 50px;-moz-box-shadow: 2px 2px 10px #909090;
        -webkit-box-shadow: 2px 2px 10px #909090;
        box-shadow:2px 2px 10px #909090;">
        </div>
        <div class="image-each" >
            <div class="item fronti shadow p-3 mb-5 bg-white rounded"><img src="https://img.alicdn.com/bao/uploaded/i4/3431542229/O1CN01nNMLeH1SKvUUTQWbB_!!0-item_pic.jpg" alt="" width="100%"></div>
            <div class="item backi shadow p-3 mb-5 bg-white rounded"><img src="https://img.alicdn.com/bao/uploaded/i3/3015821994/O1CN011cVVjd1QbIR8VrvWM_!!0-item_pic.jpg" alt="" width="100%"></div>
            <div class="item lefti shadow p-3 mb-5 bg-white rounded"><img src="https://img.alicdn.com/bao/uploaded/i4/2946275400/O1CN01LpS0gi1plFJOeksnt_!!0-item_pic.jpg" alt="" width="100%"></div>
            <div class="item righti shadow p-3 mb-5 bg-white rounded"><img src="https://img.alicdn.com/bao/uploaded/i3/3021585944/O1CN01J08vRs1tmOtPSDAC5_!!0-item_pic.jpg" alt="" width="100%"></div>
            <div class="item topi shadow p-3 mb-5 bg-white rounded"><img src="https://img.alicdn.com/bao/uploaded/i1/2986533613/O1CN01tJn6kG1cYneofFke9_!!0-item_pic.jpg" alt="" width="100%"></div>
            <div class="item bottomi shadow p-3 mb-5 bg-white rounded"><img src="https://img.alicdn.com/bao/uploaded/i2/2946275400/O1CN019f0Pkl1plFH96g3S6_!!0-item_pic.jpg" alt="" width="100%"></div>
            
        </div>

       

        <div class="life-goods bottom-self" style="margin-top: -250px;" id="index-furniture">
            <div class="tianmao-guoji">
                <img src="https://img.alicdn.com/tfs/TB1R.slXGagSKJjy0FgXXcRqFXa-428-50.png" alt="">
            </div>
            <img src="https://img.alicdn.com/tps/TB1wN4LMXXXXXX.XVXXXXXXXXXX-492-660.png" alt="" class="big-pic" style="width: 235px; height: 618px;">
            <span class="hanguo">打造爱巢</span>
            <span class="spec">放心体验畅想全球品牌资讯</span>
            <!-- <div class="life-goods-one" data-id="">
                <img src="https://img.alicdn.com/bao/uploaded/i2/3031738673/O1CN0130j7aX2DwHlFjblij_!!3031738673.jpg" alt="">
                <div class="font-goods">
                    泰国圣地土特产，红富士雪山万年一颗限量版苹果
                </div>
                <div class="under-goods"></div>
                <div class="cleanfloat">
                    <li>&#9733;</li>
                    <li>&#9733;</li>
                    <li>&#9733;</li>
                    <li>&#9733;</li>
                    <li>&#9733;</li>
                </div>
                <div class="price-goods">
                    $<strong>25.00</strong>
                </div>
                <div class="recycle">
                    <img src="../images/篮子.png">
                </div> 
            </div>-->
        </div>

        <!-- 固定顶部栏 -->
        <div class="top-fixed">
            <span>TMALL 天猫</span>
            <input type="text" placeholder="搜索 天猫 商品/品牌/店铺" class="top-text">
            <button class="top-search">搜 索</button>
        </div>

        <!-- 固定左侧栏 -->
        <!-- <div class="left-fixed">
            <div>导航</div>
            <div><a>进口水果</a></div>
            <div><a>潮流服饰</a></div>
            <div><a>生活家具</a></div>
            <div><a><i></i>顶部</a></div>
        </div> -->

        <div class="alert alert-danger" role="alert">
                <strong>你好</strong>
        </div>


        <!-- 包包图片 -->
        <div class="second-pic">
            <img src="https://img.alicdn.com/imgextra/i3/2206477550426/O1CN01JECiih1F19PpPi1XF_!!2206477550426.jpg_310x310q100.jpg_.webp" alt="">
            <img src="https://img.alicdn.com/imgextra/i3/2206477550426/O1CN01LjWDT41F19PsdX5GX_!!2206477550426.jpg_620x10000q100.jpg_.webp" alt="">
            <img src="https://img.alicdn.com/imgextra/i2/2206477550426/O1CN01oDJaqt1F19PmpfxGL_!!2206477550426.jpg_310x310q100.jpg_.webp" alt="">
            <img src="https://img.alicdn.com/imgextra/i3/2206477550426/O1CN019e0GeA1F19PcTxc4J_!!2206477550426.jpg_310x310q100.jpg_.webp" alt="">
        </div>

        <!-- 女装 -->
        <div class="life-goods" id="index-womenSClothing">

            <img src="https://img.alicdn.com/tps/i4/TB1U8CRhKEJL1JjSZFGwu16OXXa.png" alt="" class="big-pic" style="width: 235px; height: 618px;">
            <span class="hanguo">焕新换型</span>
            <span class="spec">时尚女性<br>优雅而知性</span>
            </div>
        </div>


        <!-- 底部图片 -->
        <div style="margin: 0 auto;position: relative; justify-content: center; text-align: center;">
            <img src="../images/结束.png" alt="" style="width: 100px; height: 80px;">
            <span style="position: relative; left: -80px; top: 10px; font-size: 17px;color: rgb(191,191,191);"><strong>BAOZI</strong></span>
        </div>

        <!-- 购物车 -->
        <div class="shop-car">
            <!-- 头 信息 -->
            <div class="manager-shop-msg">
                <div><strong>购物车</strong></div>
                <div class="manager-shop">管理</div>
                <div class="count-shop">共16件宝贝</div>
                <div class="close">X</div>
            </div>

            <!-- 商品信息 -->
            <div class="shop-msg-list test test-1">
<%--                动态添加--%>
            </div>

            <!-- 尾部 操作信息 -->
            <div class="operation-shop-msg">
                <div class="all-select my-btn"><img src="../images/勾.png" alt=""></div>
                <div>全选</div>
                <div class="mylist">合计:</div>
                <div class="sum">$0</div>
                <div class="opera" >结算</div>
            </div>
        </div>

        <div>
            <iframe src="/tmall/tail" frameborder="0" width="100%" height="620px"></iframe>
        </div>


        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">个人资料</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true" class="close-info">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="form-row">
                                <div class="col-md-12 mb-3 d-flex  flex-column justify-content-center align-items-center">
                                    <label for="validationServer01">姓名</label>
                                    <input type="text" class="form-control <%--is-valid--%> w-75 ziliao" id="validationServer01" disabled="true" value="" required>
                                    <div id="name-sign" class="d-flex flex-column justify-content-center align-items-center">
                                    </div>
                                </div>
                                <div class="col-md-12 mb-3 d-flex flex-column justify-content-center align-items-center">
                                    <label for="validationServer01">联系方式</label>
                                    <input type="text" class="form-control w-75" id="validationServer02" disabled="disabled" value="" required>
                                    <div id="tele-sign" class=" d-flex flex-column justify-content-center align-items-center">
                                    </div>
                                </div>
                                <div class="col-md-12 mb-3 d-flex flex-column justify-content-center align-items-center">
                                    <label for="validationServer01">邮箱</label>
                                    <input type="text" class="form-control w-75" id="validationServer03" disabled="disabled" value="@" required>
                                    <div id="email-sign" class="<%--valid-feedback--%>   d-flex flex-column justify-content-center align-items-center">

                                    </div>
                                </div>
<%--                                选择地址--%>
                                <div class="col-md-12 mb-3 d-flex flex-column justify-content-center align-items-center">
                                    <label for="validationServer04">选择要使用的地址</label>
<%--                                    is-invalid--%>
                                    <div style="width: 350px;" class="address-select">
                                        <select class="custom-select" id="validationServer05" aria-describedby="validationServer04Feedback" required>
                                            <%--                                        <option>...</option>--%>
                                        </select>
                                        <div class="address-delete" style="display: none">删除</div>
                                    </div>
                                    <div id="validationServer04Feedback" class=" d-flex flex-column justify-content-center align-items-center" >

                                    </div>
                                </div>

                                <div class="col-md-12 mb-3 d-flex flex-column justify-content-center align-items-center" >
                                    <label for="validationServer02">新增地址</label>
                                    <div style="width: 350px;" class="address-insert">
                                        <input type="text" class="form-control" id="validationServer04" disabled="disabled" value="" required>
                                        <div class="address-tianjia" style="display: none">添加</div>
                                    </div>
                                    <div id="address-sign"  class=" d-flex flex-column justify-content-center align-items-center" >

                                    </div>
                                </div>

                            </div>


                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary quxiao" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-primary baocun">修改</button>
                    </div>
                </div>
            </div>
        </div>


        <script src="../TianMao-js/index.js"></script>
        <script src="../TianMao-js/alert.js"></script>
    </body>




</html>