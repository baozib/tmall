<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE>
<html>
    <head>
        <title>天猫订单</title>
    </head>

    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.1.0/css/bootstrap.min.css">

    <link rel="icon" href="https://baozizibao.oss-cn-beijing.aliyuncs.com/tmall/%E5%A4%A9%E7%8C%AB%20%283%29.png" >
    <!-- 新 Bootstrap4 核心 CSS 文件 -->

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <!-- bootstrap.bundle.min.js 用于弹窗、提示、下拉菜单，包含了 popper.min.js -->
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <!-- 最新的 Bootstrap4 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>


    <link rel="stylesheet" href="../TianMao-css/order.css">
    <body>


        <!-- 顶部 -->
        <nav class="top_outer" style="font-size: 13px!important;">
            <div class="top">
                <a href="/tmall/index" class="mainpage">
                    <span class="glyphicon glyphicon-home redColor"></span>
                    天猫首页
                </a>
                <span>喵，欢迎来到天猫</span>
             
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
                <span>
                    
                </span>
            </div>
        </nav>


           <!-- 第二行 -->
        <div class="logo-search-shopcart">
            <!-- 左侧图片 -->
            <img src="../images/订单logo.png">
            <!-- 搜索框 -->
            <div class="search" title="请输入搜索文字">
                <input type="text" placeholder="搜索 天猫 商品/品牌/店铺" class="search">
                <span title="">搜 索</span>
            </div>
        </div>

        <!-- 商品信息 -->
        <div class="myOrder_headBar">
            <div class="myOrder_headItem" sit="all">
                <a href="#" sit="all" id="all">所有订单</a>
            </div>
            <div class="myOrder_headItem" sit="pay">
                <a href="#" sit="pay">待付款</a>
            </div>
            <div class="myOrder_headItem" sit="send">
                <a href="#" sit="send">待发货</a>
            </div>
            <div class="myOrder_headItem" sit="confirm">
                <a href="#" sit="confirm">待收货</a>
            </div>
            <div class="myOrder_headItem" sit="evaluation">
                <a href="#" sit="evaluation">待评价</a>
            </div>
            <div class="myOrder_lastone">
            </div>
        </div>

        <!-- 商品描述 -->
        <div class="myOrder_tableTitle">
            <span id="baby" style="width: 560px;">宝贝</span>
            <span id="price" style="width: 90px;">单价</span>
            <span id="amount" style="width: 115px;">数量</span>
            <span id="pay" style="width: 120px;">实付款</span>
            <span id="deal" style="width: 100px;">交易状态</span>
        </div>

        <!-- 商品信息 -->
        <div class="myOrder_itemList" id="content">

        </div>

        <script src="../TianMao-js/order.js"></script>
    </body>
</html>