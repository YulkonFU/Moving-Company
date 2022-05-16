package com.se22.pojo;

import com.se22.movingcompany.order;

public class Form {
    private int formID;         //工单号,自动生成
    private int userID;         //用户ID
    private String name;        //用户姓名
    private String oldaddress;  //旧地址
    private String newaddress;  //新地址
    private String tel;         //电话
    private String subdate;     //提交日期
    private String begindate;   //开始日期
    private String enddate;     //结束日期
    private String sort;        //距离分类
    private String state;       //状态
    private int needcar;        //所需车辆
    private int distance;       //距离
    private int money;          //金额
    private String evaluate;    //评价

    public int getFormID() {
        return formID;
    }

    public void setFormID(int formID) {
        this.formID = formID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getOldaddress() {
        return oldaddress;
    }

    public void setOldaddress(String oldaddress) {
        this.oldaddress = oldaddress;
    }

    public String getNewaddress() {
        return newaddress;
    }

    public void setNewaddress(String newaddress) {
        this.newaddress = newaddress;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getSubdate() {
        return subdate;
    }

    public void setSubdate(String subdate) {
        this.subdate = subdate;
    }

    public String getBegindate() {
        return begindate;
    }

    public void setBegindate(String begindate) {
        this.begindate = begindate;
    }

    public String getEnddate() {
        return enddate;
    }

    public void setEnddate(String enddate) {
        this.enddate = enddate;
    }

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public int getNeedcar() {
        return needcar;
    }

    public void setNeedcar(int needcar) {
        this.needcar = needcar;
    }

    public int getDistance() {
        return distance;
    }

    public void setDistance(int distance) {
        this.distance = distance;
    }

    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    public String getEvaluate() {
        return evaluate;
    }

    public void setEvaluate(String evaluate) {
        this.evaluate = evaluate;
    }


    public Form() {
    }

    public Form(int userID, String name, String oldaddress, String newaddress, String tel, String subdate, String begindate) {
        this.userID = userID;
        this.name = name;
        this.oldaddress = oldaddress;
        this.newaddress = newaddress;
        this.tel = tel;
        this.subdate = subdate;
        this.begindate = begindate;
    }

    @Override
    public String toString() {
        return "Form{" +
                "formID=" + formID +
                ", userID=" + userID +
                ", name='" + name + '\'' +
                ", oldaddress='" + oldaddress + '\'' +
                ", newaddress='" + newaddress + '\'' +
                ", tel='" + tel + '\'' +
                ", subdate='" + subdate + '\'' +
                ", begindate='" + begindate + '\'' +
                ", enddate='" + enddate + '\'' +
                ", sort='" + sort + '\'' +
                ", state='" + state + '\'' +
                ", needcar=" + needcar +
                ", distance=" + distance +
                ", money=" + money +
                ", evaluate='" + evaluate + '\'' +
                '}';
    }


}
