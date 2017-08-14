<%@ page import="java.sql.Connection" %>
<%@ page import="com.xu419.connect.conn" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: zhang
  Date: 2017/7/27
  Time: 21:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"  %>
<html>
<head>
    <title>立业货运管理系统管理员</title>
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
<br/>
<%@ include file="isLogin.jsp" %>
<a href="addnewuser.jsp">添加新用户</a>
<a href="addcarinfo.jsp">添加车辆信息</a>
<a href="adddispath.jsp">添加调度信息</a>
<a href="addnews.jsp">添加新闻</a><br/>
<div>
<p>查询并重置用户密码</p>

    <form onsubmit="modifypasswd.jsp" onload="return false;" method="post" >
        <input type="text" placeholder="用户名" name="account"/><br/>
        <input type="submit" name="重置密码">
    </form>
<br/>
</div>
<div>
    <p>查询调度信息</p>
    <form onsubmit="deldispath.jsp" onload="return false;" method="post">
        <input type="text" placeholder="出发日期" name="startday"/>
        <input type="text" placeholder="车牌号" name="carID"/>
        <input type="text" placeholder="驾车司机" name="carID"/>
        <input type="submit" value="查询">
    </form>
</div>
<div>
    <p>查询车辆信息</p>
    <form onsubmit="delcarinfo.jsp" onload="return false;" method="post">
        <input type="text" placeholder="车牌号" name="carID"/>
        <input type="submit" value="查询">
    </form>
</div>
<div>
    <p>查询新闻</p>
    <form onsubmit="deldispath.jsp"  onload="return false;" method="post">
        <input type="text" placeholder="日期" name="datatime"/>
        <input type="submit" value="查询">
    </form>
</div>
<a href="quit.jsp">退出</a>
</body>
</html>
