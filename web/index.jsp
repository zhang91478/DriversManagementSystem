<%@ page import="java.sql.Connection" %>
<%@ page import="com.xu419.connect.conn" %>
<%--
  Created by IntelliJ IDEA.
  User: 22948
  Date: 2017/7/23
  Time: 12:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"  %>
<html>
  <head>
    <title>立业货运管理系统</title>
  </head>
  <body>
  <form id="login" action="checklogin.jsp">
      账号：
      <input type="text" name="user_name"></br>
      密码：
      <input  type="password" name="user_passwd"></br>
      <input type="submit" value="登陆"><!--添加提交事件-->
      <input type="button" value="找回密码"
             onclick="javascrtpt:window.location.href='./backpasswd.jsp'"><!--添加注册事件-->
  </form>
  </body>
</html>
