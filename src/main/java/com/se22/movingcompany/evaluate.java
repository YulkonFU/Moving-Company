package com.se22.movingcompany;

import com.se22.pojo.Connect_Key;
import com.se22.pojo.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class evaluate extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");

        //获得会话
        HttpSession session = req.getSession();
        //获得用户
        User user = (User)session.getAttribute("user");

        String eva = req.getParameter("eva");

        //加载注册驱动
        try {
            Class.forName(Connect_Key.driver);
            //获得链接 conn
            Connection conn = DriverManager.getConnection(Connect_Key.dbURL, Connect_Key.userName, Connect_Key.userPwd);
            Statement stmt = conn.createStatement();
            //sql
            String sql = "update 工单 set 评价='"+eva+"' where 用户ID="+Integer.toString(user.getUserID());
            stmt.executeQuery(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
        resp.sendRedirect("/se22/index_ok.jsp");

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
