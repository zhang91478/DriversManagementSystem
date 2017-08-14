<%@ page import="java.sql.Connection" %>
<%@ page import="com.xu419.connect.conn" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: 22948
  Date: 2017/8/13
  Time: 22:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加调度信息</title>
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
        String sql = "INSERT INTO carsdispatch VALUES ('"+
        request.getParameter("11")+"','"+request.getParameter("22")+"','"
        +"','"+request.getParameter("33")+"','"+request.getParameter("44")
        +"','"+request.getParameter("55")+"','"+request.getParameter("66")+"','"+
        request.getParameter("77")+"','"+request.getParameter("88")+"','"+
        request.getParameter("99")+"','"+request.getParameter("1010")+"',"+
        request.getParameter("1111")+","+request.getParameter("1212")+")";
        stmt.execute(sql);
        con.close();
        stmt.close();
    %>">
    车牌号：<input type="text" placeholder="车牌号" name="11"/><br/>
    驾车司机编码：<input type="text" placeholder="驾车司机编号" name="22"/><br/>
    出发地：<input type="text" placeholder="省" name="33"/>
    <input type="text" placeholder="市" name="44"/>
    <input type="text" placeholder="县" name="55"/>
    <input type="text" placeholder="具体地址" name="66"/><br/>
    目的地：<input type="text" placeholder="省" name="77"/>
    <input type="text" placeholder="市" name="88"/>
    <input type="text" placeholder="县" name="99"/>
    <input type="text" placeholder="具体地址" name="1010"/><br/>
    收入：<input type="text" placeholder="收入" name="1111"/>
    支出：<input type="text" placeholder="支出" name="1212"/><br/>
    <input type="submit" value="提交"/>
</form>
<a href="main.jsp">返回上一级</a>
</body>
</html>
