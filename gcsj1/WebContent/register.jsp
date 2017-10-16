<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    <base href="<%=basePath%>">  
    <title>学生注册</title>  
    <meta http-equiv="pragma" content="no-cache">  
    <meta http-equiv="cache-control" content="no-cache">  
    <meta http-equiv="expires" content="0">      
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
    <meta http-equiv="description" content="This is my page">  
    <link href="/Gly/css/1.css" rel='stylesheet' type='text/css' media="all" > 
     
    <script>  
        function addCheck(){  
            var username=document.getElementById("username").value;  
            var password=document.getElementById("password").value;  
            var newword=document.getElementById("newword").value; 
            var usermail=document.getElementById("usermail").value;
            var usetel=document.getElementById("usetel").value;
            var address=document.getElementById("address").value;   
            if(username==""){  
                alert("用户名不能为空!");  
                document.getElementById("username").focus();    
                return false;  
                }  
            if(password==""){  
                alert("密码不能为空!");  
                 document.getElementById("password").focus();  
                 return false;  
                 }  
            if(password != newword){  
                alert("两次输入密码不相同!");  
                 document.getElementById("newword").focus();  
                 return false;  
                 }
            if(usermail==""){  
                alert("邮箱不能为空!");  
                 document.getElementById("usermail").focus();  
                 return false;  
                 }
             if(usetel==""){  
                alert("电话不能为空!");  
                 document.getElementById("usetel").focus();  
                 return false;  
                 }             
        }  
        function validate(){  
            var flag = addCheck();  
            if(flag == false)  
                return false;  
            return true;  
        }  
    </script>  
  <body>  
    <center>  
    <font face="楷体" size="6" color="#000">学 生 注 册</font>  
    <form action = "checkRegister.jsp" method = "post" onsubmit = "return validate()">  
    <table width="300" height = "180" border="5" bordercolor="#A0A0A0">  
      <tr>  
        <th>用户名：</th>  
        <td><input type="text" name="username" value="" maxlength = "20" ></td>  
      </tr>  
      <tr>  
        <th>输入密码：</th>  
        <td><input type="password" name="password" value="" maxlength = "20" ></td>  
      </tr>  
      <tr>  
        <th>确认密码：</th>  
        <td><input type="password" name="newword" value="" maxlength = "20" ></td>  
      </tr>  
       <tr>  
        <th>电子邮箱：</th>  
        <td><input type="text" name="usermail" value="" maxlength = "20" ></td>  
      </tr>  
      <tr>  
        <th>联系电话：</th>  
        <td><input type="text" name="usetel" value="" maxlength = "20" ></td>  
      </tr> 
       <tr>  
        <th>家庭地址：</th>  
        <td><input type="text" name="address" value="" maxlength = "20" ></td>  
      </tr> 
      <tr>  
        <td colspan = "2" align = "center">  
          <input type="submit" value="注  册">      
          <input type="reset" value="重  置">  
        </td>  
      </tr>  
    </table>  
    </form>  
    </center>  
  </body>  
</html>