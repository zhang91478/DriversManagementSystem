<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.xu419.connect.conn" %><%--
  Created by IntelliJ IDEA.
  User: 22948
  Date: 2017/8/13
  Time: 22:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查看调度信息</title>
</head>
<body>
<%@ include file="isLogin.jsp" %>
<%
    String account = (String)session.getAttribute("account");
    Connection con = new conn().getConn();
    Statement stmt = null;
    try {
        stmt = con.createStatement();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    String sql = "SELECT * FROM carsdispatch WHERE account = '"+account+"'";
    ResultSet rs = null;
    try {
        rs = stmt.executeQuery(sql);
    } catch (SQLException e) {
        e.printStackTrace();
    }
    int i = 1;
    while(rs.next()){
%>
<div>
    <p>调度信息-<%=i%></p>
    <p>车牌号：<%=rs.getString("carID")%></p>
    <p>出发日期：<%=rs.getString("startday")%></p>
    <p>出发地址：<%=rs.getString("start_sheng")%><%=rs.getString("start_shi")%><%=rs.getString("start_xian")%><%=rs.getString("start_addr")%></p>
    <p>到达地址：<%=rs.getString("arrival_sheng")%><%=rs.getString("arrival_shi")%><%=rs.getString("arrival_xian")%><%=rs.getString("arrival_addr")%></p>
    <p>收入：<%=rs.getString("income")%></p>
    <p>支出：<%=rs.getString("expend")%></p>
</div>
<%
    }
    con.close();
    stmt.close();
    rs.close();
%>
</body>
</html>
