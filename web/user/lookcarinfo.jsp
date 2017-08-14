<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="com.xu419.connect.conn" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: 22948
  Date: 2017/8/13
  Time: 22:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查看车辆信息</title>
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
    String sql = "SELECT * FROM cars";
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
    <p>车辆信息-<%=i%></p>
    <p>车牌号：<%=rs.getString("carID")%></p>
    <p>购买日期：<%=rs.getString("buydate")%></p>
    <p>发动机编号：<%=rs.getString("enqinenum")%></p>
    <p>车辆识别码：<%=rs.getString("vin")%></p>
</div>
<%
        i++;
    }
    con.close();
    stmt.close();
    rs.close();
%>
</body>
</html>
