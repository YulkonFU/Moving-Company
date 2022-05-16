package com.se22.pojo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class City {
    private String cityname;    //城市名
    private String province;    //省份
    private String country;     //国家
    private String lon;         //经度
    private String lat;         //纬度

    //空构造器
    public City() {
    }

    //有参构造器
    public City(String cityname, String province, String country, String lon, String lat) {
        this.cityname = cityname;
        this.province = province;
        this.country = country;
        this.lon = lon;
        this.lat = lat;
    }

    //set与get
    public String getCityName() {
        return cityname;
    }

    public String getProvince() {
        return province;
    }

    public String getCountry() {
        return country;
    }

    public String getLon() {
        return lon;
    }

    public String getLat() {
        return lat;
    }

    public void setCityname(String country) {
        this.cityname = cityname;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public void setLon(String lon) {
        this.lon = lon;
    }

    public void setLat(String lat) {
        this.lat = lat;
    }


    public static List<City> getCities() {
        List<City> cities = null;
        try {
            //加载注册驱动
            Class.forName(Connect_Key.driver);
            //获得链接 conn
            Connection conn = DriverManager.getConnection(Connect_Key.dbURL, Connect_Key.userName, Connect_Key.userPwd);
            Statement stmt = conn.createStatement();
            //sql
            String sql = "select * from 城市";
            ResultSet rs = stmt.executeQuery(sql);
            //获取结果并对结果进行遍历封装
            cities = new ArrayList<City>();
            while (rs.next()) {
                String cityname = rs.getString("城市名");
                String province = rs.getString("所属省");
                String country = rs.getString("所属国家");
                String lon = rs.getString("经度");
                String lat = rs.getString("纬度");
                cities.add(new City(cityname, province, country, lon, lat));
            }
            //关闭资源
            stmt.close();
            conn.close();
        } catch (Exception e1) {
            System.out.println("错误:" + e1);
        }
        return cities;
    }

    public static City getCity(String cityname) {
        List<City> cities = getCities();
        for (City city : cities) {
            //使用replace删去空格
            String tmp_city = city.getCityName().replace(" ", "");
            if (tmp_city.equals(cityname)) {
                return city;
            }
        }
        return null;
    }

    public static double getDistance(City city1, City city2) {
        double distance = 0;
        //经纬度
        double lon_1 = Double.parseDouble(city1.getLon());
        double lat_1 = Double.parseDouble(city1.getLat());
        double lon_2 = Double.parseDouble(city2.getLon());
        double lat_2 = Double.parseDouble(city2.getLat());
        //转换成真小数
        double tmp;
        tmp = lon_1 - (int) lon_1;
        lon_1 = (int) lon_1 + tmp / 3 * 5;
        tmp = lon_2 - (int) lon_2;
        lon_2 = (int) lon_2 + tmp / 3 * 5;
        tmp = lat_1 - (int) lat_1;
        lat_1 = (int) lat_1 + tmp / 3 * 5;
        tmp = lat_2 - (int) lat_2;
        lat_2 = (int) lat_2 + tmp / 3 * 5;
        //转换成弧度值
        lon_1 *= Math.PI / 180;
        lon_2 *= Math.PI / 180;
        lat_1 *= Math.PI / 180;
        lat_2 *= Math.PI / 180;
        //计算距离
        distance = 6371 * Math.acos(Math.cos(lat_1) * Math.cos(lat_2) + Math.cos(lon_1 - lon_2) * Math.sin(lat_1) * Math.sin(lat_2));
        return distance;
    }

    //得到搬家类型
    public static String getMovingType(City city1, City city2) {
        if (city1.getCityName().equals(city2.getCityName())) {
            return "同城";
        }
        if (city1.getCountry().equals(city2.getCountry())) {
            return "跨市";
        }
        return "出国";
    }

    //得到价格
    public static double getPrice(String movingtype, double distance, int carnum) {
        switch (movingtype) {
            case "同城":
                return 300 * (0.8 + 0.2 * carnum);
            case "跨市":
                return distance * 10 * (0.8 + 0.2 * carnum);
            case "出国":
                return distance * 8 * (0.8 + 0.2 * carnum);
        }
        return 0;
    }

}


