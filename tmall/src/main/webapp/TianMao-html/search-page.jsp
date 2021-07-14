<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE>
<html>
    <head>
        <title>搜索界面</title>
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


    <link rel="stylesheet" href="../TianMao-css/search.css">
    <body>
        <!-- 顶部 -->
        <nav class="top_outer" style="font-size: 12px !important;">
            <div class="top">
                <a href="/tmall/index" class="mainpage">
                    <span class="glyphicon glyphicon-home redColor"></span>
                    天猫首页
                </a>
                <span>喵，欢迎来到天猫</span>
                <a href="/tmall/self-login" class="userhide">请登录</a>
                <a href="/tmall/registered" class="userhide">免费注册</a>
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
            </div>
        </nav>

        <!-- 搜索 -->
         <div class="logo-search-shopcart">
            <!-- 左侧图片 -->
            <img src="../images/搜索logo.png">
            <!-- 搜索框 -->
            <div class="search" title="请输入搜索文字">
                <input type="text" placeholder="搜索 天猫 商品/品牌/店铺" class="search anthoer">
                <span title="" class="sousuo">搜 索</span>
            </div>
        </div>

        <!-- 导航 -->
        <div class="direct">
            <div>首页</div>
            <div>快速导航</div>
            <div>新品区</div>
            <div>常见问题</div>
            <div>相关资讯</div>
            <div>商家支持</div>
        
        </div>
        <!-- 提示 -->
        <div class="sign">
            当前位置 <strong style="color: rgb(221, 221, 221)!important;">></strong> 所有商品列表
        </div>

        <!-- 选择器 -->
        <div class="condition">
            <!-- 选择分类 -->
            <div class="condition-one">
                <div class="condition-one-one">选择分类:</div>
                <div class="condition-one-two">家具</div>
                <div class="condition-one-three">男装</div>
                <div class="condition-one-four">女装</div>
                <div class="condition-one-five">水果</div>
            </div>
            <!-- 价格范围  -->
            <div class="condition-two">
                <div class="condition-two-one">价格范围:</div>
                <div class="condition-two-two">1元-10元</div>
                <div class="condition-two-three">10元-50元</div>
                <div class="condition-two-four">50元-100元</div>
                <div class="condition-two-five">100元-200元</div>
                <div class="condition-two-four">200元以上</div>
            </div>
            <!-- 自定义  -->
            <div class="condition-three">
                <div class="condition-three-one">全局选择:</div>
                <div class="condition-three-two">综合</div>
                <div class="condition-three-three">销量</div>
                <div class="condition-three-four">人气</div>
                <div class="condition-three-five">新品</div>
            </div>
        </div>

         <!-- 大内容 -->
         <div class="life-goods">
<%--            待插入内容--%>
        </div>

        <nav aria-label="Page navigation" id="page-help" class="d-flex just-content-center">
            <ul class="pagination">

            </ul>
        </nav>

        <script src="../TianMao-js/search.js"></script>
    </body>
</html>