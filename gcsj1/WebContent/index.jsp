<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="GB2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF=8">
<title>Index</title>
</head>

<style>
.headimg{
	margin-left: 35%;
}
.body{
	background-image: url(image/banner.jpg);	
}
.img{
	margin-top:6%;
}
.button1{
	padding-left: 35px;
}
.a {
	font-size:16px
	margin-left: 70px;
} 
.a:link {
	color:#666;
	text-decoration:none;
}
.a:active:{
	margin-left:30%;
}
.a:visited {
	color:white;
	text-decoration:none;
}
.a:hover {
	color: black;
	text-decoration:none;
} 
.last{
	float:right;
	color:#FFF;
	margin-top:150px;
}
</style>
<%
	String path = request.getContextPath();
%>
<body class="body">
<div class="headimg">
	<div>
    	<table>
    	<tr>
    	<img src="image/tubiao.jpg" class="img"></tr>
    	<tr><td class="button1"><a class="a" href=<%=path +"/login1.jsp"%>>学生登陆</a></td>
    	<td class="button1"><a class="a" href=<%=path +"/register.jsp"%>>学生注册</a></td>
    	<td class="button1"><a class="a" href=<%=path +"/login.jsp"%>>管理员登陆</a></td>
    	
    	</table>
    </div>
</div>
<div class="last">
	<a>制作人：谢雨 郭明峰 牟洪雨 李迎正 唐家珞 周璐琳</a>
</div>
</body>
</html>
