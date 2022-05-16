<%--
  Created by IntelliJ IDEA.
  User: matthew
  Date: 2021/7/28
  Time: 16:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8 content=width=device-width, initial-scale=1.0">
    <title>订单信息</title>

    <link href="${pageContext.request.contextPath}/css/7.css" rel="stylesheet">
    <style type="text/css">
    </style>
</head>

<body>
<div class="navbar">
    <div class="nav">
        <div class="firRow">
            <div class="titPic"><img src="${pageContext.request.contextPath}/images/QQ20210723173914.png" width="70px" height="70px" alt=""></div>
            <div class="titTxt"><img src="${pageContext.request.contextPath}/images/QQ20210723173423.png" width="300px" alt=""></div>
            <div class="login">
                <a href="personal.jsp" >欢迎回来:${username}</a>
            </div>
        </div>
        <ul>
            <li>
                <a href="index_ok.jsp">首页</a>
            </li>
            <li>
                <a href="aboutus_ok.jsp">关于我们</a>
            </li>
            <li> <a href="" target="_blank" >服务优势</a>
                <ul>
                    <li><a href="" target="_blank">价格透明</a></li>
                    <li><a href="" target="_blank">准时到达</a></li>
                    <li><a href="" target="_blank" >专业团队</a></li>
                    <li><a href="" target="_blank" >24小时热线</a></li>
                </ul>
            </li>
            <li> <a href="#">服务项目</a>
                <ul>
                    <li><a href="#">同城搬家</a></li>
                    <li><a href="#">跨省搬家</a></li>
                    <li><a href="#">国际搬家</a></li>
                </ul>
            </li>
            <li> <a href="order.jsp" target="_blank">立即下单</a> </li>
            <li class="underline"></li>
        </ul>
    </div>
</div>
<div class="tit">
    <div class="title">生成订单</div>
    <div class="text">
        <p>工单号：${formID}</p>
        <p>日期：${begindate}</p>
        <p>金额：${money}</p>
        <p>起始地点：${oldaddress}</p>
        <p>目的地：${newaddress}</p>
        <p>电话：${tel}</p>
        <p>姓名：${name}</p>
        <form method="post" action="${pageContext.request.contextPath}/order_yes"><button id="one">确定</button></form>
        <a href="order.jsp"><button id="two">取消</button></a>
    </div>
</div>
<div class="tail">
    <div class="JieShao">
        <form action="${pageContext.request.contextPath}/download" method="get">
            <input type="submit" value="小组介绍">
        </form>
        <div class="JieShaoXiang">联系我们：<br>123456789</div>
        <div class="JieShaoXiang">地址<br>新疆维吾尔自治区克拉玛依市克拉玛依区胜利路355号</div>
    </div>
</div>

</body>
</html>