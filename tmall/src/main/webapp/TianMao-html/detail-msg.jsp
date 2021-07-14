<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE>
<html>
    <head>
        <title>详情</title>
    </head>


    <link rel="icon" href="https://baozizibao.oss-cn-beijing.aliyuncs.com/tmall/%E5%A4%A9%E7%8C%AB%20%283%29.png" >
    <!-- 新 Bootstrap4 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.1.0/css/bootstrap.min.css">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <!-- bootstrap.bundle.min.js 用于弹窗、提示、下拉菜单，包含了 popper.min.js -->
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <!-- 最新的 Bootstrap4 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    
    <link rel="stylesheet" href="../TianMao-css/detail.css">
    <body>
              <!-- 顶部 -->
        <nav class="top_outer" style="font-size: 12px !important;">
            <div class="top">
                <a href="/tmall/index" class="mainpage">
                    <span class="glyphicon glyphicon-home redColor"></span>
                    天猫首页
                </a>
                <span>喵，欢迎来到天猫</span>
                <a href="../Login.html" class="userhide">请登录</a>
                <a href="../Register.html" class="userhide">免费注册</a>
                <span class="pull-right">
                    <a href="#">我的订单</a>
                    <a href="#" class="shop-cart-pic">
                        <span class="glyphicon glyphicon-shopping-cart redColor reverse"></span>
                        购物车
                    </a>
                </span>
                <span  class="collect">
                    <a href="" class="box-collect">
                        收藏夹
                    </a>
                </span>
                <span class="myself-name" style="left: 250px;top: -3px; position: relative;visibility: hidden;color: rgb(93, 93, 180);cursor: pointer;font-weight: bold; ">
                    您好，郭江龙
                </span>
                <span>
                    
                </span>
            </div>
        </nav>

        <!-- 第二行 -->
        <div class="logo-search-shopcart">
            <!-- 左侧图片 -->
            <img src="../images/详情logo.png">
            <!-- 搜索框 -->
            <div class="search" title="请输入搜索文字">
                <input type="text" placeholder="搜索 天猫 商品/品牌/店铺" class="search">
                <span title="">搜 索</span>
            </div>
        </div>

        <!-- 导航 -->
        <div class="direct">
            <div class="index">首页</div>
            <div>快速导航</div>
            <div>新品区</div>
            <div>常见问题</div>
            <div>相关资讯</div>
            <div>商家支持</div>
            <div>客服</div>
            <diV>关于我们</diV>
        </div>

        <div class="sign">
            当前位置 <strong style="color: rgb(221, 221, 221) !important;">></strong> 商品详情
        </div>

        

        <div data-id="" id="msg-cart">
            <!-- 图片 -->
            <div class="container">
                <img  src="" alt="" class="msg-pic">
                <div class="move hidden">
                    <img src="" alt="">
                </div> 
            </div>
          
            <!-- 内容 -->
            <div class="msg-self">
                <div class="content">
                    <strong class="content-msg">点击撒娇静安寺逗趣儿静安寺寺小胖几啊爱神的箭哦</strong>
                </div>

                <div class="price">
                    价格: <span><strong class="price-content">$13513</strong></span><br>
                    优惠：<span class="youhui"><strong></strong></span>
                </div>

                <div class="address">
                    <span style="color: gray; ">发货地址:</span> <span class="address-msg"><strong>厦门市思明区豪华别墅1001#</strong></span>
                </div>

                <div class="sale-msg">
                    <div style="color: gray;">月销量: <span class="msg-one"><strong>1</strong></span></div>
                    <div style="color: gray;">累计评价: <span class="msg-two"><strong>1</strong></span></div>
                    <div style="color: gray;">平均星级数: <span class="msg-three"><strong>1</strong></span></div>
                </div>

                <!-- 类型 -->
                <div class="type-msg">
                    暂无类型信息
                </div>

            </div>
            <!-- 切换图片 -->
            <div class="qiehuan">
                <img src="https://img.alicdn.com/imgextra/i1/3360749321/O1CN01hpyDOC2Ij4Q1AXmRq_!!3360749321-0-picasso.jpg_60x60q90.jpg" alt="">
                <img src="https://img.alicdn.com/imgextra/i4/3360749321/O1CN01aOojCm2Ij4P23iJbI_!!3360749321.jpg_60x60q90.jpg" alt="">
                <img src="https://img.alicdn.com/imgextra/i2/3360749321/O1CN01C6ADrR2Ij4P3T0MIV_!!3360749321.jpg_60x60q90.jpg" alt="">
                <img src="https://img.alicdn.com/imgextra/i2/3360749321/O1CN01jUoYjw2Ij4KK5I281_!!3360749321.jpg_60x60q90.jpg" alt="">
                <img src="https://img.alicdn.com/imgextra/i3/3360749321/O1CN01QaCFdE2Ij4KK5Gxcc_!!3360749321.jpg_60x60q90.jpg" alt="">
            </div>
            <!-- 两个按钮 -->
            <div class="anniu">
                <div class="once-buy" style="cursor: pointer">立刻购买</div>
                <div class="join-shop" style="cursor: pointer">加入购物车</div>
            </div>

            <!-- 猜你喜欢 -->
            <div id="guess-font">
                <div>
                    &lt;- 猜你喜欢 -&gt;
                </div>
                <img src="" alt="" class="font-one">
                <img src="" alt="" class="font-two">
                <img src="" alt="" class="font-three">
                <div style="color: gray; ">
                    -- 看了又看 --
                </div>
            </div>

        </div>



    <script src="../TianMao-js/detail.js"></script>
    </body>
</html>