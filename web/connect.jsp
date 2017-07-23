<%@ page import="java.sql.*" %>
<%--
  Created by IntelliJ IDEA.
  User: zhang
  Date: 2017/7/23
  Time: 22:13
  To change this template use File | Settings | File Templates.
  this jsp is to record the message for mysql server.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

    String url="jdbc:mysql://123.206.43.242:3306:driver_man";//数据库链接
    try{
        Class.forName("com.mysql.jdbc.Driver");
    }
    catch (ClassNotFoundException e)
    {
        e.printStackTrace();
        out.print("Mysql驱动加载失败！");
    }
    String user = "root";
    String passed = "Zhangshubo91478";
%>
