<%@ page import="java.sql.Connection" %>
<%@ page import="com.xu419.connect.conn" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: 22948
  Date: 2017/8/14
  Time: 8:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加新用户</title>
    <script language="javascript" type="text/javascript">
        //禁用Enter键表单自动提交
        document.onkeydown = function(event) {
            var target, code, tag;
            if (!event) {
                event = window.event; //针对ie浏览器
                target = event.srcElement;
                code = event.keyCode;
                if (code == 13) {
                    tag = target.tagName;
                    if (tag == "TEXTAREA") { return true; }
                    else { return false; }
                }
            }
            else {
                target = event.target; //针对遵循w3c标准的浏览器，如Firefox
                code = event.keyCode;
                if (code == 13) {
                    tag = target.tagName;
                    if (tag == "INPUT") { return false; }
                    else { return true; }
                }
            }
        };
    </script>
</head>
<body>
<form onload="return false;" onsubmit="<%
    request.setCharacterEncoding("UTF-8");
    String account = (String)session.getAttribute("account");
    Connection con = new conn().getConn();
    Statement stmt = null;
    try {
        stmt = con.createStatement();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    String sql = "INSERT INTO users (account,name) VALUES ('"+request.getParameter("account")
    +"','"+request.getParameter("name")+"')";
    stmt.execute(sql);
    stmt.close();
    con.close();
%>" method="post" >
    <input type="text" placeholder="用户名" name="account"/><br/>
    <input type="text" placeholder="姓名" name="name"><br/>
    <input type="submit" name="添加">
</form>
<a href="main.jsp">返回上一级</a>
</body>
</html>
