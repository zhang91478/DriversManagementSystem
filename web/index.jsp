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
  <form method="post" >
  <table>
    <tr>
        <td>账号：</td>
        <td><input type="text" name="user_name"></td>
    </tr>
    <tr>
      <td>密码：</td>
      <td><input  type="password" name="user_passwd"></td>
    </tr>
    <tr>
      <td>  </td>
      <td><input type="submit" value="提交" ><!--添加提交事件-->
      <input type="button" value="找回密码" ></td><!--添加注册事件-->
    </tr>
   </table>
  </form>
  </body>
</html>
