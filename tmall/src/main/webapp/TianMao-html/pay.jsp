<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>沙箱下单测试</title>
</head>

<body>
<div>
    <form action="http://localhost:8888/Alipay/PayPage" method="post">
        <div>
            订单号:<input name="Order" value="289578301554257175" ></input>
        </div>
        <div>
            商品名称:<input name="Name"  value="笔记本电脑"></input>
        </div>
        <div>
            金额:<input name="Money" value="99.99"></input>元
        </div>
        <input type="submit" value="提交订单"></input>
    </form>

</div>

</body>
</html>
