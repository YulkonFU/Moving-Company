<%--
  Created by IntelliJ IDEA.
  User: matthew
  Date: 2021/7/30
  Time: 0:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">
<meta name="content-type" content="text/html; charset=UTF-8">
<head>
    <title>关于我们</title>
</head>
<link href="${pageContext.request.contextPath}/css/3.css" rel="stylesheet">
<body>
<div class="navbar">
    <div class="nav">
        <div class="firRow">
            <div class="titPic"><img src="${pageContext.request.contextPath}/images/QQ20210723173914.png" width="70px" height="70px" alt=""></div>
            <div class="titTxt"><img src="${pageContext.request.contextPath}/images/QQ20210723173423.png" width="300px" alt=""></div>
            <div class="login">
                <a href="login.jsp"><img src="${pageContext.request.contextPath}/images/QQ20210723173611.png" alt=""></a>
            </div>
        </div>
        <ul>
            <li>
                <a href="index.jsp">首页</a>
            </li>
            <li>
                <a href="aboutus.jsp">关于我们</a>
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
            <li> <a href="login.jsp">立即下单</a> </li>
            <li class="underline"></li>
        </ul>
    </div>
</div>
<div class="tit">
    <p id="title">小组介绍</p>
    <div id="line"><hr color="#FF0004" 1px></div>
    <div class="int">
        <div class="line1">
            <p>小组编号：22</p>
            <p>小组项目名称：搬家公司</p>
            <p>小组成员：</p>
        </div>
    </div>
</div>
<div class="tail">
    <div class="JieShao">
        <div class="JieShaoXiang"><a href="group.jsp">小组介绍</a></div>
        <div class="JieShaoXiang">联系我们：<br>123456789</div>
        <div class="JieShaoXiang">地址<br>新疆维吾尔自治区克拉玛依市克拉玛依区胜利路355号</div>
    </div>
</div>

</body>
</html>
