<%--
  Created by IntelliJ IDEA.
  User: zhang
  Date: 2017/7/27
  Time: 22:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String account = (String) session.getAttribute("account");
    if(account==null){
        %>
            <script type="text/javascript">
                alert("请先登录");
                window.location.href='../index.jsp';
            </script>
        <%
    }
%>