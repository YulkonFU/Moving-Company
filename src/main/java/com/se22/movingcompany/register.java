package com.se22.movingcompany;

import com.se22.pojo.Connect_Key;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class register extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");

        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String confirmpassword = req.getParameter("confirmpassword");
        String strage = req.getParameter("age");

        if(strage.equals("")){
            req.setAttribute("error","年龄不能为空");
            req.getRequestDispatcher("register.jsp").forward(req,resp);
        }

        int age = Integer.parseInt(req.getParameter("age"));

        if(username.length()<4||username.length()>12){
            req.setAttribute("error","用户名长度限制在4到12个字符之间");
            req.getRequestDispatcher("register.jsp").forward(req,resp);
        }

        if(password.length()<6||password.length()>16){
            req.setAttribute("error","密码长度限制在6到16个字符之间");
            req.getRequestDispatcher("register.jsp").forward(req,resp);
        }

        if(! password.equals(confirmpassword)){
            req.setAttribute("error","两次密码不一致");
            req.getRequestDispatcher("register.jsp").forward(req,resp);
        }

        if(age<18){
            req.setAttribute("error","十八岁以上用户才能注册");
            req.getRequestDispatcher("register.jsp").forward(req,resp);
        }

        try{
            //加载注册驱动
            Class.forName(Connect_Key.driver);
            //获得链接 conn
            Connection conn = DriverManager.getConnection(Connect_Key.dbURL, Connect_Key.userName, Connect_Key.userPwd);
            Statement stmt = conn.createStatement();
            //sql
            String sql = "insert into 用户(用户名,密码) values('"+username+"','"+password+"')";
            stmt.executeQuery(sql);
        }catch (Exception e){
            System.out.println(e);
        }

        req.getRequestDispatcher("login.jsp").forward(req,resp);




    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

}
