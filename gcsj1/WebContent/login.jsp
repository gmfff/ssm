<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    <base href="<%=basePath%>">  
      
    <title>管 理 员 登 录</title>  
      
    <meta http-equiv="pragma" content="no-cache">  
    <meta http-equiv="cache-control" content="no-cache">  
    <meta http-equiv="expires" content="0">      
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
    <meta http-equiv="description" content="This is my page">  
    <link href="/Gly/css/1.css" rel='stylesheet' type='text/css' media="all" > 
  <body>
  <h1>登 录 界 面</h1>  
    <%    
    String flag = request.getParameter("errNo");    
    try{  
         if(flag!=null)  
            //out.println("<script>");
    		out.println("<script language='javascript'>alert('用户名或密码错误！');</script>");
    		//out.println("</script>");
    }catch(Exception e){  
        e.printStackTrace();  
    }  
   %>   

<div class="log">
	<div class="content1">
		<h2>管 理 员 登 录</h2>
		<form method="POST" name="frmlogin" action="loginch1.jsp">
			<input type="text" name="name" value="username"  onclick="return check();">
			<input type="password" name="pwd" value="password" >
			<div class="button-row">
				<input type="submit" class="sign-in" value="登 录" >
				<input type="button" class="reset" value="返 回" onclick="javascript:window.location.href ='index.jsp'">
				<div class="clear"></div>
			</div>
		</form>
	</div>
	
</div>
</body>
</html>
