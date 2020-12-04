<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.mysql.cj.xdevapi.Statement" %>

<%--
  Created by IntelliJ IDEA.
  User: 52942
  Date: 2020/11/8
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
</head>
<body>
<h1>
    欢迎登录

</h1>
<form action="login_on.jsp" method="post"  >
 用户名：   <input type="text" name="name"><br>
 密码：   <input type="password" name="password"><br>
    <input type="submit" value="登录" onclick="">
    <input type="reset" value="重置">
</form>



</body>
</html>
