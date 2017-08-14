<%@ page import="java.util.Date" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="com.xu419.connect.conn" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: 22948
  Date: 2017/8/13
  Time: 22:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加新闻</title>
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
    <form method="post" onload="return false;" onsubmit="<%
        request.setCharacterEncoding("UTF-8");
        Connection con = new conn().getConn();
        Statement stmt = null;
        try {
            stmt = con.createStatement();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String sql = "INSERT INTO news (happentime,news) VALUES (now(),'"
        +request.getParameter("news")+"')";
        stmt.execute(sql);
        con.close();
        stmt.close();
    %>">
        <input type="text" placeholder="输入新闻内容" name="news"/>
        <input type="submit" value="提交"/>
    </form>
    <a href="main.jsp">返回上一级</a>
</body>
</html>
