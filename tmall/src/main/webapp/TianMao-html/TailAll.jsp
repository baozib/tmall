<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<style type="text/css">
	body{
	    font-size: 12px;
	    font-family: Arial;
	}
	footer {
		margin-top: 20px;
		border-top: 1px solid rgb(231, 231, 231);
	}
	div.footerImg {
		text-align: center;
		padding: 20px;
		border-bottom: 1px solid rgb(231, 231, 231);
	}
	div.footerMid {
		padding: 30px 10px;
		width: 1007px;
		margin: 0 auto;
	}
	div.mid_column {
		float: left;
		width: 220px; 
		top: 100px;
	}
	div.mid_column a {
		display: block;
		padding-top: 3px;
		color:#999;
	}
	div.mid_column span.mid_column_title, div.mid_img span.mid_column_title {
		color: #646464;
	    font-weight: bold;
	    font-size: 16px;
	}
	div.mid_column a:hover {
		text-decoration:none;
		color: #C40000;
	}
	div.footerLogo {
		margin: 0 auto;
		width: 1007px;

	}
	div.footerBelow_outer {
		border-top: 2px solid rgb(196, 0, 0);
		background-color: black;
        margin: 0 auto;
		width: 1230px;
        /* margin-left: 270px; */
	}
	div.footerBelow {
		margin: 0 auto;
		width: 1007px;
		padding: 5px;
	}
	div.footerBelow .whiteLink a, div.footerBelow .whiteLink span {
		color: white;
		padding-right: 5px;
	}
	div.footerBelow .whiteLink, div.footerBelow .license {
		padding: 5px 0 10px 5px;
	}
	div.footerBelow .license span {
		color: rgb(151, 152, 156);
	}
	div.footerBelow .license div {
		padding: 10px 0 5px 0;
	}
	div.footerBelow .whiteLink a:hover {
		text-decoration: none;
	}
	.erweima{
		width: 120px;
		height: 120px;
	}
</style>

<footer>
	<div class="footerImg">
		<a href="#"><img src="http://how2j.cn/tmall/img/site/ensure.png"></a>
	</div>
	<div class="footerMid">
		<div class="mid_column">
			<span class="mid_column_title">购物指南</span> 
			<a href="#">免费注册</a>
			<a href="#">开通支付宝</a>
			<a href="#">支付宝充值</a>
		</div>
		<div class="mid_column"> 
			<span class="mid_column_title">天猫保障</span> 
			<a href="#">发票保障</a>
			<a href="#">售后规则</a>
			<a href="#">缺货赔付</a>
		</div>
		<div class="mid_column"> 
			<span class="mid_column_title">支付方式</span> 
			<a href="#">快捷支付</a>
			<a href="#">信用卡</a>
			<a href="#">蚂蚁花呗</a>
			<a href="#">货到付款</a>
		</div>
		<div class="mid_column"> 
			<span class="mid_column_title">商家服务</span> 
			<a href="#">商家入驻</a>
			<a href="#">商家中心</a>
			<a href="#">天猫智库</a>
			<a href="#">天猫规则</a>
			<a href="#">物流服务</a>
			<a href="#">喵言喵语</a>
			<a href="#">运营服务</a>
		</div>
		<div class="mid_img">
			<span class="mid_column_title">手机天猫</span> 
			<img src="https://img.alicdn.com/tfscom/TB14MWoNhjaK1RjSZFAwu2dLFXa.png" class="erweima">
		</div>
		<div style="clear: both;"></div>
	</div>
	<div style="clear: both;"></div>

	<div class="footerLogo">
		<img src="http://how2j.cn/tmall/img/site/cateye.png"> <!-- 天猫logo -->
	</div>
	<div class="footerBelow_outer">
		<div class="footerBelow">
			<div class="whiteLink">
				<a href="#">关于天猫</a>
				<a href="#">帮助中心</a>
				<a href="#">开放平台</a>
				<a href="#">诚聘英才</a>
				<a href="#">联系我们</a>
				<a href="#">网站合作</a>
				<a href="#">法律声明</a>
				<a href="#">知识产权</a>
				<a href="#">廉正举报</a>
			</div>
			<div class="whiteLink">
				<a href="#">阿里巴巴集团</a>
				<span>|</span>
				<a href="#">淘宝网</a>
				<span>|</span>
				<a href="#">天猫</a>
				<span>|</span>
				<a href="#">聚划算</a>
				<span>|</span>
				<a href="#">全球速卖通</a>
				<span>|</span>
				<a href="#">阿里巴巴国际交易市场</a>
				<span>|</span>
				<a href="#">1688</a>
				<span>|</span>
				<a href="#">阿里妈妈</a>
				<span>|</span>
				<a href="#">阿里旅行·去啊</a>
				<span>|</span>
				<a href="#">阿里云计算</a>
				<span>|</span>
				<a href="#">阿里通信</a>
				<span>|</span>
				<a href="#">YunOS</a>
				<span>|</span>
				<a href="#">天天动听</a>
				<span>|</span>
				<a href="#">来往</a>
				<span>|</span>
				<a href="#">钉钉</a>
				<span>|</span>
				<a href="#">支付宝</a>
				<span>|</span>
				<a href="#">万网</a>
				<span>|</span>
				<a href="#">高德</a>
				<span>|</span>
				<a href="#">优视</a>
				<span>|</span>
				<a href="#">友盟</a>
				<span>|</span>
				<a href="#">虾米</a>	
			</div>
			<div class="license">
				<span>增值电信业务经营许可证： 浙B2-20110446</span>
	            <span>网络文化经营许可证：浙网文[2015]0295-065号</span>
	            <span>互联网医疗保健信息服务 审核同意书 浙卫网审【2014】6号 </span>
	            <span>互联网药品信息服务资质证书编号：浙-（经营性）-2012-0005</span>
	            <div class="copyRightYear">© 2003-2016 TMALL.COM 版权所有</div>
	            <div>
	                <img src="http://how2j.cn/tmall/img/site/copyRight1.jpg">
	                <img src="http://how2j.cn/tmall/img/site/copyRight2.jpg">
            	</div>
			</div>
		</div>
	</div>
</footer>
