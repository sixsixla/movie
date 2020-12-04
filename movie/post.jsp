<%--
  Created by IntelliJ IDEA.
  User: 52942
  Date: 2020/10/17
  Time: 13:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=GBK"
         pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="GBK">
    <title>显示表单信息</title>
</head>
<body>
<h1>读取所有表单参数</h1>
<table width="100%" border="1" align="center">
    <tr bgcolor="#949494">
        <th>参数名</th><th>参数值</th>
    </tr>
    <%
        request.setCharacterEncoding("GBK");
        Enumeration paramNames = request.getParameterNames();

        while(paramNames.hasMoreElements()) {
            String paramName = (String)paramNames.nextElement();
            out.print("<tr><td>" + paramName + "</td>\n");
            String paramValue = request.getParameter(paramName);
            out.println("<td> " + paramValue + "</td></tr>\n");
        }
    %>
</table>
</body>
</html>
