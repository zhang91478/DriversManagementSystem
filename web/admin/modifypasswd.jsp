<%@ page import="java.sql.Connection" %>
<%@ page import="com.xu419.connect.conn" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: 22948
  Date: 2017/8/13
  Time: 22:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    Connection con = new conn().getConn();
    Statement stmt = null;
    try {
        stmt = con.createStatement();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    String sql="SELECT account FROM users WHERE account ='"
            + request.getParameter("account")+"'";
    ResultSet rs = stmt.executeQuery(sql);
    if(rs.next()){
    sql = "UPDATE users SET passwd = '000000' WHERE account ='"
            + request.getParameter("account")+"'";
        stmt.execute(sql);
        %>
        <script type="text/javascript">
            alert("重置成功");
            window.location.href='main.jsp';
        </script>
        <%
    }
    else{
        %>
        <script type="text/javascript">
            alert("无此用户");
            window.location.href='main.jsp';
        </script>
        <%
    }
    stmt.close();
    con.close();
    rs.close();
%>
