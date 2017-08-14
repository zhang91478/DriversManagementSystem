<%@ page import="java.sql.Connection" %>
<%@ page import="com.xu419.connect.conn" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: 22948
  Date: 2017/8/13
  Time: 22:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查看个人信息</title>
    <%@ include file="isLogin.jsp" %>
</head>
<body>
    <%
        Connection con = new conn().getConn();
        Statement stmt = con.createStatement();
        String user_name = (String)session.getAttribute("account");
        String sql = "SELECT * FROM ";
    %>
</body>
</html>
