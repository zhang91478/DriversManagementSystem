<%--
  Created by IntelliJ IDEA.
  User: 22948
  Date: 2017/7/23
  Time: 12:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>XXX公司司机管理系统</title>
  </head>
  <body>
  <%@include file="connect.jsp"%>
  <div>
    <form method="post" >
    <table>
      <tr>
          <td>账号：</td>
          <td><input type="text" name="user_name"></td>
      </tr>
      <tr>
        <td>密码：</td>
        <td><input type="password" name="user_passwd"></td>
      </tr>
      <tr>
        <td>  </td>
        <td><input type="submit" value="提交" ><!--添加提交事件-->
        <input type="submit" value="注册" ></td><!--添加注册事件-->
      </tr>
     </table>
    </form>
  </div>
  </body>
</html>
