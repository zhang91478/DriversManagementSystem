<%--
  Created by IntelliJ IDEA.
  User: 22948
  Date: 2017/8/13
  Time: 21:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.removeAttribute("user");
    session.invalidate();
    out.print("<script>alert('用户即将退出，确定后退出该页面。')" +
            ";window.location.href='../index.jsp'</script>");
%>
