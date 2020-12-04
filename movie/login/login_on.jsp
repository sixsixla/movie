<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.mysql.cj.xdevapi.Statement" %>
<%--
  Created by IntelliJ IDEA.
  User: 52942
  Date: 2020/11/8
  Time: 14:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
</head>
<body>
<%
    String name=request.getParameter("name");
    String password=request.getParameter("password");
   // out.print(name);
    //out.print(password);

%>
<%
    //      定义一些参数
    String DRIVER_PATH = "com.mysql.cj.jdbc.Driver";    //驱动路径

    //我的数据库端口为3307，看这个教程需要改成你们的端口（默认3306），jspdb为你建的数据库的名称
    //?serverTimezone=UTC 这段要加上，不然会报错，我的是mysql8.0.15
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
       // out.println("数据库连接成功");
    }else {
       // out.println("数据库连接失败");
    }
    String sql="SELECT * from login where name='"+name+"' and password='"+password+"'";
    PreparedStatement preparedStatement = con.prepareStatement(sql);
    ResultSet rs = preparedStatement.executeQuery(sql);

%>

<%    int fla =0;//初始化flag
    if(rs.next()){//判断结果
        fla=1;
        session.setAttribute("Name", name);//将name的内容赋值给UserName

    }else{
        fla=2;

    }


%>

<%
    if(fla==1){%>
<<script type="text/javascript">alert("欢迎登录！")</script>
　<%   response.setHeader("Refresh", "0;url=../index.html"); %>



<%   } else if (fla==2){%>
<script type="text/javascript">alert("登录失败")</script>
　<%   response.setHeader("Refresh", "0;url=../login.html"); %>
<%
    }
%>

<%

    //关闭上面的几个对象，注意关闭顺序，最后使用的先关闭
    rs.close();
    preparedStatement.close();

%>

</body>
</html>
