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
    <title>registerע��</title>
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
            alert("�û�����������ĸ��ͷ���ҳ�����6��10λ");
            document.form1.user.focus();
            return false;


        }


        else if (password=="")
        {
            alert("���벻��Ϊ��");
            document.form1.password.focus();
            return false;
        }
        else if (password!=password2)
        {
            alert("���벻һ��");
            document.form1.password2.focus();
            return false;
        }
        else if (Email.indexOf("@")==-1) {
            alert("���������ϸ�ʽ������@");
            document.form1.Email.focus();
            return false;
        }
        else if (phone.length!=11)
        {
            alert("�ֻ��ű���Ϊ11λ");
            document.form1.phone.focus();
            return false;
        }
        else if (birthday=="")
        {
            alert("�������������");
            document.form1.birthday.focus();
            return false;
        }
         else if (high=="")
        {
            alert("���������");
            document.form1.high.focus();
            return false;
        }
        else if (hobby=="")
        {
            alert("�����밮��");
            document.form1.hobby.focus();
            return false;
        }
        else if (introduction=="")
        {
            alert("��������˽���");
            document.form1.introduction.focus();
            return false;
        }

        else window.alert("ע��ɹ�");
        return true;

    }

</script>


<h1>��ӭ��ע�᣺ </h1>
<form name="form1" method="post" action="post.jsp" target="_blank" onsubmit="return validate()">
    <label>�û���:</label><input name="user" type="text"><br>
    <label>��������:</label><input name ="password" type= "password"><br>
    <label>ȷ������:</label><input name="password2" type="password"><br>
    <label>��������:</label><input name ="Email" type="text"><br>
    <label>�����ֻ���:</label><input name="phone" type="number"><br>
    <label>��������:</label><input name="birthday" type="date"><br>
    <label>�������(cm):</label><input name="high" type="number"><br>
    <label>����:</label>
    <select name="city">
    <option selected>������</option>
    <option value="����">������</option>
    <option value="�Ϻ�">�Ϻ���</option>
    <option value="�㶫">�㶫��</option>
    <option value="�Ĵ�">�Ĵ���</option>
    <option value="����">������</option>
</select><br>
    <label>�Ա�</label>  <input type="radio" name="sex" checked value="man">��<input type="radio" name="sex" value="woman">Ů<br>
    <label>���ã�</label><input type="text" name="hobby"><br>
    <label>���˽��ܣ�</label><input type="text" name="introduction"  > <br>
    <label></label><input type="submit"   value="ע��"> </label>
    <input type="reset" value="����" name="reset">
</form>



</body>
</html>
