<%@ page import="com.se22.pojo.Connect_Key" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: matthew
  Date: 2021/7/27
  Time: 17:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8 content=width=device-width, initial-scale=1.0">
  <title>管理员界面</title>

  <link href="${pageContext.request.contextPath}/css/8.css" rel="stylesheet" type="text/css">
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
        <a>欢迎你,管理员</a>
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
      <li> <a href="order.jsp" target="_blank">立即下单</a> </li>
      <li class="underline"></li>
    </ul>
  </div>
</div>
<div class="tit">
  <div class="title">订单信息</div>

<%--  查询条件--%>
  <div><form method="post" action="${pageContext.request.contextPath}/admin_opreate">
    <div class="info"> ${error} </div>
    <select name="option"><label>操作：</label>
      <option>查询</option>
      <option>修改</option>
    </select>
    <input type="text" placeholder="请输入条件" name="condition">
    <input type="text" placeholder="请输入修改(仅在修改有用)" name="update">
    <input type="submit" value="确认">
  </form>
  </div>


<%--  读数据库--%>

    <%
      try{
        //加载注册驱动
        Class.forName(Connect_Key.driver);
        //获得链接 conn
        Connection conn = DriverManager.getConnection(Connect_Key.dbURL, Connect_Key.userName, Connect_Key.userPwd);
    %>
    <table border="1" class="table1">
      <center>
      <tr>
        <th>工单号</th>
        <th>用户ID</th>
        <th>户主</th>
        <th>联系方式</th>
        <th>提交日期</th>
        <th>开始日期</th>
        <th>结束日期</th>
        <th>距离分类</th>
        <th>状态</th>
        <th>金额</th>
        <th>评价</th>
      </tr>
        <%
			Statement stmt = null;
			ResultSet rs = null;
			String sql = "select * from 工单"; //查询语句
			if(! Connect_Key.where.equals("false")){
			  sql+=" where "+Connect_Key.where;
			  Connect_Key.where="false";
			}
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			out.print("查询结果：");
			out.print("<br/>");
			while (rs.next()) {
		%>
      <tr>
        <td><%=rs.getInt("工单号")%></td>
        <td><%=rs.getInt("用户ID")%></td>
        <td><%=rs.getString("户主")%></td>
        <td><%=rs.getString("联系方式")%></td>
        <td><%=rs.getString("提交日期")%></td>
        <td><%=rs.getString("开始日期")%></td>
        <td><%=rs.getString("结束日期")%></td>
        <td><%=rs.getString("距离分类")%></td>
        <td><%=rs.getString("状态")%></td>
        <td><%=rs.getString("金额")%></td>
        <td><%=rs.getString("评价")%></td>
      </tr>
        <%
			}
            } catch (Exception e) {
              e.printStackTrace();
              System.out.println("数据库连接失败");
            }
		%>
  </center>
    </table>









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
