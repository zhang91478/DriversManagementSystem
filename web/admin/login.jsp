<%--
  Created by IntelliJ IDEA.
  User: 22948
  Date: 2017/8/14
  Time: 15:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>立业货运管理系统管理员</title>
</head>
<body>
    <form id="login" action="checklogin.jsp" method="post">
        账号：
        <input type="text" name="admin_name"></br>
        密码：
        <input  type="password" name="admin_passwd"></br>
        <input type="submit" value="登陆"><!--添加提交事件-->
    </form>
</body>
</html>
