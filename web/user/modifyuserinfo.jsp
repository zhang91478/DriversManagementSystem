<%@ page import="java.sql.Connection" %>
<%@ page import="com.xu419.connect.conn" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: 22948
  Date: 2017/8/14
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    ResultSet rs = stmt.executeQuery(sql);
    String updatesql;
    updatesql = "update users set name = '"+request.getParameter("name")+"' where account ='"
            +(String)session.getAttribute("account")+"'";
    stmt.execute(updatesql);

    updatesql = "update users set age = '"+request.getParameter("age")+"' where account ='"
            +(String)session.getAttribute("account")+"'";
    stmt.execute(updatesql);

    updatesql = "update users set tel = '"+request.getParameter("tel")+"' where account ='"
            +(String)session.getAttribute("account")+"'";
    stmt.execute(updatesql);

    updatesql = "update users set email = '"+request.getParameter("email")+"' where account ='"
            +(String)session.getAttribute("account")+"'";
    stmt.execute(updatesql);

    updatesql = "update users set IDnum = '"+request.getParameter("IDnum")+"' where account ='"
            +(String)session.getAttribute("account")+"'";
    stmt.execute(updatesql);

    updatesql = "update users set nation = '"+request.getParameter("nation")+"' where account ='"
            +(String)session.getAttribute("account")+"'";
    stmt.execute(updatesql);

    updatesql = "update users set province = '"+request.getParameter("province")+"' where account ='"
            +(String)session.getAttribute("account")+"'";
    stmt.execute(updatesql);

    updatesql = "update users set county = '"+request.getParameter("county")+"' where account ='"
            +(String)session.getAttribute("account")+"'";
    stmt.execute(updatesql);

    updatesql = "update users set addr = '"+request.getParameter("addr")+"' where account = '"
            +(String)session.getAttribute("account")+"'";
    stmt.execute(updatesql);

    rs.close();
    stmt.close();
    con.close();
    out.print("修改成功，3S后自动");%><a href="lookuserinfo.jsp">跳转</a> <%
%>
<script type="text/javascript">
    window.setTimeout("location.href='lookuserinfo.jsp'",3000);
</script>
