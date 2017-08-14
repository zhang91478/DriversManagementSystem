<%@ page import="java.sql.Connection" %>
<%@ page import="com.xu419.connect.conn" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%--
  Created by IntelliJ IDEA.
  User: 22948
  Date: 2017/8/12
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Connection con = new conn().getConn();
    Statement stmt = con.createStatement();
    String user_name=request.getParameter("user_name");
    String user_passwd=request.getParameter("user_passwd");
    String sql = "SELECT * FROM users WHERE account ="+"'"
          +user_name+"'"+"AND passwd = '"+user_passwd+"'";
    ResultSet rs = stmt.executeQuery(sql);
    if(rs.next()){
        rs.close();
        con.close();
        stmt.close();
        session.setAttribute("user",user_name);
        %>
        <script type="text/javascript">
            window.location.href='main.jsp';
        </script>
        <%
    }
    else {
        rs.close();
        con.close();
        stmt.close();
        out.print("<script type=\"text/javascript\">\n" + "alert(\"账号或密码错误请确认后登陆\")" +
                "</script>");
    }

%>
