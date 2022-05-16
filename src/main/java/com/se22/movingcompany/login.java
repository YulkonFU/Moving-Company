package com.se22.movingcompany;

import com.se22.pojo.Connect_Key;
import com.se22.pojo.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.*;

public class login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");

        //处理请求
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        if(password.equals("admin2021")){
            //重定向到管理员界面,密码:admin2021
            resp.sendRedirect("/se22/administrator.jsp");
        }

        try{
            //加载注册驱动
            Class.forName(Connect_Key.driver);
            //获得链接 conn
            Connection conn = DriverManager.getConnection(Connect_Key.dbURL, Connect_Key.userName, Connect_Key.userPwd);
            Statement stmt = conn.createStatement();
            //sql
            String sql = "select * from 用户";
            ResultSet rs = stmt.executeQuery(sql);
            //获取结果并对结果进行遍历封装
            ArrayList<User> users = new ArrayList<User>();
            while (rs.next()) {
                String tmp1 = rs.getString("用户ID");
                String tmp2 = rs.getString("用户名");
                String tmp3 = rs.getString("密码");
                users.add(new User(Integer.parseInt(tmp1),tmp2,tmp3));
            }
            //关闭资源
            stmt.close();
            conn.close();

            for(User user:users){
                if(user.getUsername().equals(username)){
                    if(user.getPassword().equals(password)){
                        req.getSession().setAttribute("user",user);
                        req.getSession().setAttribute("username",user.getUsername());
                        //转发,注意路径问题
                        req.getRequestDispatcher("index_ok.jsp").forward(req,resp);
                    }
                }
            }
            req.setAttribute("error","用户名或密码不正确");
            req.getRequestDispatcher("login.jsp").forward(req,resp);


        }catch (Exception e){
            System.out.println("错误:"+e);
        }





    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
