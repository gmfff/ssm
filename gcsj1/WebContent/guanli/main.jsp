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
<title>管理员操作选择界面</title>
<script
	src="http://upcdn.b0.upaiyun.com/libs/jquery/jquery-2.0.2.min.js"></script>
<script language="JavaScript" src="semantic.min.js"></script>
<script language="JavaScript" src="semantic.js"></script>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/semantic.css">
</head>
<style>
#banner {
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -150px 0 0 -150px;
	width: auto;
	height: auto;
}

h2 {
	color: #000;
	text-shadow: 0 0 10px;
	letter-spacing: 1px;
	text-align: center;
	font-size: 2em;
	margin: 0.67em 0;
	font-style: normal;
}

.sign-in {
	padding: 10px;
	background-color: #4C9A39;
	width: auto;
	border: none;
	cursor: pointer;
	color: #fff;
	font-weight: 300;
	font-family: 'Nunito', sans-serif;
	font-size: 20px;
	margin-left: 40px;
	float: left;
	text-transform: uppercase;
	border-radius: 4px;
	transition: all 0.5s ease-in-out;
	-webkit-transition: all 0.5s ease-in-out;
	-moz-transition: all 0.5s ease-in-out;
	-o-transition: all 0.5s ease-in-out;
}
</style>
<body>
	<div class="ui visible inverted left vertical sidebar menu">
		<a class="item" href="<%=request.getContextPath()%>/servlet/GlyListAction"><iclass="home icon"></i> 管理员信息 </a>
			 <a class="item" href="../turn.jsp"><iclass="block layout icon"> 查询考试记录 </a> 
			<a class="item" href="../Question/mainpage.jsp"><i class="smile icon"></i> 编辑试卷 </a> <img
			class="ui medium circular image"
			style="width:150px; margin: 70px 50px;"
			src="<%=request.getContextPath()%>/image/elliot.jpg"> <a class="sss1"
			style="margin: 80px;font-size: 30px;" href="<%=request.getContextPath()%>/guanli/mgexit.jsp"><%=MyTools.toChinese((String) session.getAttribute("user"))%></a>
	</div>
	<div id="banner">
		<h2>登陆成功！请在左边导航栏选择一个操作继续！</h2>
	</div>
</body>
</html>
</em>
</em>