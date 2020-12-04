<%--
  Created by IntelliJ IDEA.
  User: 52942
  Date: 2020/10/16
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GBK" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>register注册</title>
    <meta charset="GBK">
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
</head>
<body>




<script type="text/javascript">

    function validate()
    {
        user=document.form1.user.value;
        Email=document.form1.Email.value;
        password=document.form1.password.value;
        password2=document.form1.password2.value;
        phone=document.form1.phone.value;
        birthday=document.form1.birthday.value;
        high=document.form1.high.value;
        hobby=document.form1.hobby.value;
        introduction=document.form1.introduction.value;
        var x=document.form1.user.value.length;
        var userlength=document.form1.user.value.length;

        var reg=new RegExp("^[a-zA-Z]")
        if(!reg.test(user)||(userlength<6||userlength>10))
        {
            alert("用户名必须以字母开头，且长度在6到10位");
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
        else if (phone.length!=11)
        {
            alert("手机号必须为11位");
            document.form1.phone.focus();
            return false;
        }
        else if (birthday=="")
        {
            alert("请输入出生日期");
            document.form1.birthday.focus();
            return false;
        }
         else if (high=="")
        {
            alert("请输入身高");
            document.form1.high.focus();
            return false;
        }
        else if (hobby=="")
        {
            alert("请输入爱好");
            document.form1.hobby.focus();
            return false;
        }
        else if (introduction=="")
        {
            alert("请输入个人介绍");
            document.form1.introduction.focus();
            return false;
        }

        else window.alert("注册成功");
        return true;

    }

</script>


<h1>欢迎您注册： </h1>
<form name="form1" method="post" action="post.jsp" target="_blank" onsubmit="return validate()">
    <label>用户名:</label><input name="user" type="text"><br>
    <label>输入密码:</label><input name ="password" type= "password"><br>
    <label>确认密码:</label><input name="password2" type="password"><br>
    <label>输入邮箱:</label><input name ="Email" type="text"><br>
    <label>输入手机号:</label><input name="phone" type="number"><br>
    <label>出生年月:</label><input name="birthday" type="date"><br>
    <label>输入身高(cm):</label><input name="high" type="number"><br>
    <label>籍贯:</label>
    <select name="city">
    <option selected>北京市</option>
    <option value="杭州">杭州市</option>
    <option value="上海">上海市</option>
    <option value="广东">广东市</option>
    <option value="四川">四川市</option>
    <option value="重庆">重庆市</option>
</select><br>
    <label>性别：</label>  <input type="radio" name="sex" checked value="man">男<input type="radio" name="sex" value="woman">女<br>
    <label>爱好：</label><input type="text" name="hobby"><br>
    <label>个人介绍：</label><input type="text" name="introduction"  > <br>
    <label></label><input type="submit"   value="注册"> </label>
    <input type="reset" value="重置" name="reset">
</form>



</body>
</html>
