<%--
  Created by IntelliJ IDEA.
  User: matthew
  Date: 2021/7/27
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人登陆</title>
</head>
<link href="${pageContext.request.contextPath}/css/5.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="layui/css/layui.css">


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
            <li> <a href="login.jsp" target="_blank">立即下单</a> </li>
            <li class="underline"></li>
        </ul>
    </div>
</div>


<%--<div class="dan">--%>
<%--    <form method="get" action="${pageContext.request.contextPath}/login">--%>
<%--        <div ><center>${error}</center></div>--%>
<%--        <div class="form-group">--%>
<%--            <label class="text">用户名：<br></label>--%>
<%--            <input class="int" placeholder="用户名" name="username"><br></div>--%>
<%--        <div class="form-group">--%>
<%--            <label> 密码：<br></label>--%>
<%--            <input class="int" placeholder="密码" type="password" name="password"><br></div>--%>
<%--        <div class="form-group">--%>
<%--            <input class="but" type="submit" value="登陆"></div>--%>
<%--    </form>--%>
<%--</div>--%>
<%--<div>--%>
<%--<a href="register.jsp" class="zhuce">注册账号</a>--%>
<%--</div>--%>

<div class="dan">
    <div id="form_login" class="layui-form">
        <form class="layui-form" method="post" action="${pageContext.request.contextPath}/login">
            <div ><center>${error}</center></div>
            <div class="form-group">
                <label class="text">用户名：<br></label>
                <input class="layui-input int" placeholder="用户名" name="username"><br>
            </div>
            <div class="form-group">
                <label > 密码：<br></label>
                <input class="test layui-input int" placeholder="密码" type="password" name="password"><br>
            </div>
            <div class="form-group">
                <input class="layui-btn layui-btn-normal" id="button_submit" type="submit" value="登陆">
                <a href="register.jsp" class="layui-btn layui-btn-normal" style="margin:0 auto" id="button_register">注册</a>
            </div>
        </form>
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

<script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>


</body>
