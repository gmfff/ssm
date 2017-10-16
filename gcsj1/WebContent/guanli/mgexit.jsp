<%@ page language="java" contentType="text/html; charset=gbk"
	pageEncoding="gbk"%>
<%@page import="common.*"%>
<%@page import="gly.*"%>
<%@page import="java.util.*"%>
<%request.setCharacterEncoding("gbk");%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>管理员退出登录</title>
<script
	src="http://upcdn.b0.upaiyun.com/libs/jquery/jquery-2.0.2.min.js"></script>
<script language="JavaScript" src="semantic.min.js"></script>
<script language="JavaScript" src="semantic.js"></script>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/semantic.css">
<link href="<%=request.getContextPath()%>/css/glylogin.css" rel="stylesheet"
	type="text/css">
</head>
<body>
	<div class="ui visible inverted left vertical sidebar menu">


		<a class="item" href="updatemg.html"><i class="home icon"></i>
			管理员信息 </a> <a class="item" href="index.html"><i
			class="block layout icon"></i> 查询考试记录 </a> <a class="item"
			href="../Question/mainpage.jsp"><i class="smile icon"></i> 编辑试卷 </a> <img
			class="ui medium circular image"
			style="width:150px; margin: 70px 50px;"
			src="<%=request.getContextPath()%>/images/elliot.jpg"> <a class="sss1"
			style="margin: 80px;font-size: 30px;"><%=MyTools.toChinese((String)session.getAttribute("user"))%></a>

	</div>
	<center>
		<%
			session.invalidate();
		%>
		<div id="login">
			<h1>是否确认退出？</h1>
			<form id="form3" name="form3" method="post"
				action="<%=request.getContextPath()%>/servlet/GlyExitAction">
				<button class="sign-in" type="submit">确认</button>
				<button class="reset" type="reset">取消</button>
			</form>
		</div>
	</center>
</body>
</html>
