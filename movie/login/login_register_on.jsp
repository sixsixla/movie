<%--
  Created by IntelliJ IDEA.
  User: 52942
  Date: 2020/11/8
  Time: 15:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.mysql.cj.xdevapi.Statement" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
    <meta charset="UTF-8">
</head>
<body>
<%
    String name=request.getParameter("user");
    String password=request.getParameter("password");
    //out.print(name);
   // out.print(password);

%>
<% if (password==null){%>
<%   response.setHeader("Refresh", "0;url=../register.html"); %>
<%  }  %>
  <%

    //      定义一些参数
    String DRIVER_PATH = "com.mysql.cj.jdbc.Driver";    //驱动路径
    String URL = "jdbc:mysql://localhost:3306/test?serverTimezone=UTC";
    String USER_NAME = "root";      //数据库用户名
    String PASSWORD = "000000";     //数据库密码
%>


<%
    Connection con = null;
    Class.forName(DRIVER_PATH).newInstance();

    con = DriverManager.getConnection(URL,USER_NAME,PASSWORD);

//      判断数据库是否连接成功
    if (con != null){
      //  out.println("数据库连接成功");
    }else {
      //  out.println("数据库连接失败");
    }
 %>

<%
    String sql1="SELECT * from login where name='"+name+"'";
    PreparedStatement preparedStatement = con.prepareStatement(sql1);
    ResultSet rs = preparedStatement.executeQuery(sql1);

%>

<%    int fla =0;//初始化flag
    if(rs.next()){//判断结果
        fla=1;
       // session.setAttribute("Name", name);//将name的内容赋值给UserName

    }else{
        fla=2;

    }

    //out.println(fla);
%>

<%if(fla==1){%>

<script type="text/javascript">alert("用户名已存在")</script>
　<%   response.setHeader("Refresh", "0;url=../register.html"); %>



<%   } else if (fla==2) {


    String sql2 = "INSERT INTO login (name, password) VALUES ('" + name + "','" + password + "') ";
    PreparedStatement preparedStatement2 = con.prepareStatement(sql2);
    //out.print(sql2);
    boolean rs2 = preparedStatement2.execute(sql2);
%>
<script type="text/javascript">alert("注册成功")</script>
　<%   response.setHeader("Refresh", "0;url=../login.html"); %>
<%  }  %>

<%

    //关闭上面的几个对象，注意关闭顺序，最后使用的先关闭
   // rs.close();
    rs.close();

    preparedStatement.close();



%>


</body>
</html>
