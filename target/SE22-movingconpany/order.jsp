<%--
  Created by IntelliJ IDEA.
  User: matthew
  Date: 2021/7/27
  Time: 15:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8" %>
<html>
<head>
    <title>立即下单</title>
</head>
<link href="${pageContext.request.contextPath}/css/4.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="layui/css/layui.css">

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
<%--<div class="dan">--%>
<%--    <form method="post" action="${pageContext.request.contextPath}/order">--%>
<%--        <div class="info"> ${error} </div>--%>
<%--        <div class="form-group">--%>
<%--            <label  class="text">您从哪搬出：<br></label>--%>
<%--            <input class="int" placeholder="国家" name="depcountry"><br>--%>
<%--            <label ></label>--%>
<%--            <input class="int" placeholder="市" name="depcity"><br>--%>
<%--            <input class="int" placeholder="详细地址" name="depaddress"><br></div>--%>
<%--        <div class="form-group">--%>
<%--            <label  class="text">您搬到哪里去：<br></label>--%>
<%--            <input class="int" placeholder="国家" name="descountry"><br>--%>
<%--            <label ></label>--%>
<%--            <input class="int" placeholder="市" name="descity"><br>--%>
<%--            <input class="int" placeholder="详细地址" name="desaddress"><br>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label  class="text">搬家时间：<br></label>--%>
<%--            <input class="int" placeholder="搬家时间" name="time"><br>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label class="text">姓名：<br></label>--%>
<%--            <input class="int" placeholder="姓名" name="name"><br>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label class="text">联系电话：<br></label>--%>
<%--            <input class="int" placeholder="联系电话" name="tel"><br>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label class="text">所需车辆个数：<br></label>--%>
<%--            <input class="int" placeholder="所需车辆个数" name="needcar"><br>--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <input class="but" type="submit" value="提交">--%>
<%--        </div></form>--%>

<%--</div>--%>

<div class="dan">
    <form method="post" action="${pageContext.request.contextPath}/order">
        <div class="info"> ${error} </div>
        <div class="form-group">
            <label  class="text">您从哪搬出：<br></label>
            <input class="layui-input int" placeholder="国家" name="depcountry"><br>
            <label></label>
            <input class="layui-input int" placeholder="市" name="depcity"><br>
            <input class="layui-input int" placeholder="详细地址" name="depaddress"><br>
        </div>
        <div class="form-group">
            <label class="text">您搬到哪里去：<br></label>
            <input class="layui-input int" placeholder="国家" name="descountry"><br>
            <label ></label>
            <input class="layui-input int" placeholder="市" name="descity"><br>
            <input class="layui-input int" placeholder="详细地址" name="desaddress"><br>
        </div>

        <!--额外添加layui-->
        <div class="form-group">
            <div class="layui-inline">
                <label class="text">搬家时间：<br></label>
                <input type="text" class="layui-input" id="test1" name="time">
            </div>
        </div>
        <div class="form-group">
            <label class="text">姓名：<br></label>
            <input class="layui-input int" placeholder="姓名" name="name"><br>
        </div>
        <div class="form-group">
            <label >所需车辆个数：<br></label>
            <input class="layui-input int" placeholder="所需车辆个数" name="needcar"><br>
        </div>
        <!--额外添加layui-->

        <div class="form-group">
            <label class="text">联系电话：<br></label>
            <input class="layui-input int" placeholder="联系电话" name="tel"><br>
        </div>

        <!--额外添加layui-->
        <div class="form-group">
            <input class="layui-btn layui-btn-fluid" type="submit" value="提交">
        </div>
        <!--额外添加layui-->

    </form>
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

<!--额外添加layui-->
<script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>

<script>
    layui.use('laydate', function () {
        const laydate = layui.laydate;

        //执行一个laydate实例
        laydate.render({
            elem: '#test1' //指定元素
        });
    });
</script>
<!--额外添加layui-->



</body>
</html>

