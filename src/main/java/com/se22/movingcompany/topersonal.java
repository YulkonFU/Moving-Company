package com.se22.movingcompany;

import com.se22.pojo.Connect_Key;
import com.se22.pojo.Form;
import com.se22.pojo.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

public class topersonal extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取用户信息
        User user = (User) req.getSession().getAttribute("user");
        //查询
        try{
            //加载注册驱动
            Class.forName(Connect_Key.driver);
            //获得链接 conn
            Connection conn = DriverManager.getConnection(Connect_Key.dbURL, Connect_Key.userName, Connect_Key.userPwd);
            Statement stmt = conn.createStatement();
            //sql
            String sql = "select * from 工单 where 用户ID = "+Integer.toString(user.getUserID());
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                String formID = rs.getString("工单号");
                String date = rs.getString("提交日期");
                String money = rs.getString("金额");
                String statue = rs.getString("状态");
                //重写键值对
                req.setAttribute("formID",formID);
                req.setAttribute("date",date);
                req.setAttribute("money",money);
                req.setAttribute("statue",statue);
            }
            //关闭资源
            stmt.close();
            conn.close();
            req.getRequestDispatcher("personal.jsp").forward(req,resp);
        }catch (Exception e){

        }

















        req.setAttribute("formID","111");
        req.getRequestDispatcher("personal.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
