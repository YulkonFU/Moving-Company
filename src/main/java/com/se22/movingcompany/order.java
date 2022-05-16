package com.se22.movingcompany;

import com.se22.pojo.City;
import com.se22.pojo.Connect_Key;
import com.se22.pojo.Form;
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
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class order extends HttpServlet {

    public static Form form=null;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");

        //获得会话
        HttpSession session = req.getSession();
        //获得用户
        User user = (User)session.getAttribute("user");

        String depcountry = req.getParameter("depcountry");
        String depcity = req.getParameter("depcity");
        String depaddress = req.getParameter("depaddress");
        String descountry = req.getParameter("descountry");
        String descity = req.getParameter("descity");
        String desaddress = req.getParameter("desaddress");
        String time = req.getParameter("time");
        String name = req.getParameter("name");
        String tel = req.getParameter("tel");
        String str_needcar = req.getParameter("needcar");



        if(str_needcar.equals("")){
            req.setAttribute("error","所需车辆个数不能为空");
            req.getRequestDispatcher("order.jsp").forward(req,resp);
        }

        int needcar = Integer.parseInt(str_needcar);

        String address1 = depcountry+" "+depcity+" "+depaddress;
        String address2 = descountry+" "+descity+" "+desaddress;

        if(depcity.equals("") || descity.equals("")){
            req.setAttribute("error","城市不能为空");
            req.getRequestDispatcher("order.jsp").forward(req,resp);
        }

        if(time.equals("")){
            req.setAttribute("error","时间不能为空");
            req.getRequestDispatcher("order.jsp").forward(req,resp);
        }

        if(name.equals("")){
            req.setAttribute("error","姓名不能为空");
            req.getRequestDispatcher("order.jsp").forward(req,resp);
        }

        if(tel.equals("")){
            req.setAttribute("error","电话不能为空");
            req.getRequestDispatcher("order.jsp").forward(req,resp);
        }

        LocalDateTime dateTime = LocalDateTime.now();   //获取当前时间
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
        String nowtime = dateTime.format(formatter); //规范化

        form = new Form(user.getUserID(),name,address1,address2,tel,nowtime,time);

        form.setNeedcar(needcar);

        System.out.println(form.toString());

        City city1 = City.getCity(depcity);     //出发城市
        City city2 = City.getCity(descity);     //到达城市

        form.setDistance((int) City.getDistance(city1,city2));

        form.setSort(City.getMovingType(city1,city2));

        form.setMoney((int) City.getPrice(City.getMovingType(city1,city2),City.getDistance(city1,city2),needcar));

        req.setAttribute("formID",form.getFormID());
        req.setAttribute("begindate",form.getBegindate());
        req.setAttribute("money",String.valueOf(form.getMoney()));
        req.setAttribute("oldaddress",form.getOldaddress());
        req.setAttribute("newaddress",form.getNewaddress());
        req.setAttribute("tel",form.getTel());
        req.setAttribute("name",form.getName());
        req.getRequestDispatcher("order_information.jsp").forward(req,resp);





    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
