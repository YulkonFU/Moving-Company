package com.se22.movingcompany;

import com.se22.pojo.Connect_Key;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class order_yes extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try{
            //加载注册驱动
            Class.forName(Connect_Key.driver);
            //获得链接 conn
            Connection conn = DriverManager.getConnection(Connect_Key.dbURL, Connect_Key.userName, Connect_Key.userPwd);
            Statement stmt = conn.createStatement();
            //sql
            String sql = "insert into 工单(用户ID,户主,地址,新地址,联系方式,提交日期,开始日期,距离分类,状态,所需车辆,距离,金额) values";
            sql+="("+order.form.getUserID()+",'"+order.form.getName()+"','"+order.form.getOldaddress()+"','"+order.form.getNewaddress()+"','"+order.form.getTel()+"','"+order.form.getSubdate()+"','"+order.form.getBegindate()+"','"+order.form.getSort()+"','已提交',"+Integer.toString(order.form.getNeedcar())+","+Integer.toString(order.form.getDistance())+","+Integer.toString(order.form.getMoney())+")";
            stmt.executeQuery(sql);
        }catch (Exception e){
            System.out.println(e);
        }

        req.getRequestDispatcher("index_ok.jsp").forward(req,resp);


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
