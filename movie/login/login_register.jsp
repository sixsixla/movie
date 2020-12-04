<%--
  Created by IntelliJ IDEA.
  User: 52942
  Date: 2020/11/8
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
    <meta charset="UTF-8">
</head>
<body>
<script type="text/javascript">

    function validate()
    {
        user=document.form1.user.value;
        Email=document.form1.Email.value;
        password=document.form1.password.value;
        password2=document.form1.password2.value;



        var reg=new RegExp("^[a-zA-Z]")
        if(!reg.test(user)||userlength>20)
        {
            alert("用户名必须以字母开头，且长度小于20位");
            document.form1.user.focus();
            return false;


        }


        else if (password=="")
        {
            alert("密码不能为空");
            document.form1.password.focus();
            return false;
        }
        else if (password!=password2)
        {
            alert("密码不一致");
            document.form1.password2.focus();
            return false;
        }
        else if (Email.indexOf("@")==-1) {
            alert("邮箱必须符合格式，包含@");
            document.form1.Email.focus();
            return false;
        }



        else window.alert("注册成功");
        return true;

    }

</script>
<style>
    fieldset{
        background-color: #f1f1f1;
        border:none;
        margin-bottom: 12px;
        overflow: hidden;
        padding: 0.625em;
    }
    label{
        display: inline-block;
        padding: 3px 6px;
        text-align: right;
        width: 200px;
        vertical-align: top;
    }
</style>


<h1>欢迎您注册： </h1><br>
<form name="form1" method="post" action="login_register_on.jsp" target="_blank" onsubmit="return validate()" >
    <label>用户名:</label><input name="user" type="text"><br><br>
    <label>输入密码:</label><input name ="password" type= "password"><br><br>
    <label>确认密码:</label><input name="password2" type="password"><br><br>
    <label>输入邮箱:</label><input name ="Email" type="text"><br><br>


    <label></label><input type="submit"   value="注册"> </label>
    <input type="reset" value="重置" name="reset">
</form>
</body>
</html>
