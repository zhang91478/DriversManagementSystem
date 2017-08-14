<%@ page import="java.sql.Connection" %>
<%@ page import="com.xu419.connect.conn" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %><%--
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
        String sql = "SELECT * FROM users WHERE account = '"+account+"'";
        ResultSet rs = null;
        try {
            rs = stmt.executeQuery(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        rs.next();
    %>
    <form action="modifyuserinfo.jsp" method="post">
    姓名：<input type="text" value="<%=rs.getString("name")%>" name="name"><br/>
    年龄：<input type="text" value="<%=rs.getString("age")%>" name="age"><br/>
    电话：<input type="text" value="<%=rs.getString("tel")%>" name="tel"><br/>
    邮箱：<input type="text" value="<%=rs.getString("email")%>" name="email"><br/>
    身份证号：<input type="text" value="<%=rs.getString("IDnum")%>" name="IDnum"><br/>
    民族：<input type="text" value="<%=rs.getString("nation")%>" name="nation"><br/>
    籍贯：
    省：<input type="text" value="<%=rs.getString("province")%>" name="province">
    县/区：<input type="text" value="<%=rs.getString("county")%>" name="county">
    详细地址：<input type="text" value="<%=rs.getString("addr")%>" name="addr"><br/>
    <input type="submit" value="保存修改">
    </form>
    <%
        try {
        } catch (Exception e) {
        }
        try {
        } catch (Exception e) {
        }
        con.close();
        stmt.close();
        rs.close();
    %>
</body>
</html>
