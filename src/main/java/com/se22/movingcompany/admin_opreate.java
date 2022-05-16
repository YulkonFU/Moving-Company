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
import java.sql.ResultSet;
import java.sql.Statement;

public class admin_opreate extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");

        String option = req.getParameter("option");
        String condition = req.getParameter("condition");
        String update = req.getParameter("update");

        System.out.println(option);

        switch (option){
            case "查询":
                if(condition.equals("")){
                    req.setAttribute("error","条件不能为空");
                    req.getRequestDispatcher("administrator.jsp").forward(req,resp);
                }
                Connect_Key.where = condition;
                req.getRequestDispatcher("administrator.jsp").forward(req,resp);
                break;
            case "修改":
                if(condition.equals("") || update.equals("")){
                    req.setAttribute("error","条件或修改不能为空");
                    req.getRequestDispatcher("administrator.jsp").forward(req,resp);
                }
                try{
                    //加载注册驱动
                    Class.forName(Connect_Key.driver);
                    //获得链接 conn
                    Connection conn = DriverManager.getConnection(Connect_Key.dbURL, Connect_Key.userName, Connect_Key.userPwd);
                    Statement stmt = conn.createStatement();
                    //sql
                    String sql = "update 工单 set "+update+" where "+condition;
                    stmt.executeQuery(sql);
                    //关闭资源
                    conn.close();
                    Connect_Key.where="false";
                    req.setAttribute("error","修改成功");
                    req.getRequestDispatcher("administrator.jsp").forward(req,resp);
                    }catch (Exception e){
                        System.out.println("rong:"+e);
                    }
                break;
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
