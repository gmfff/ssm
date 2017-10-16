<%@ page language="java" contentType="text/html; charset=gbk"
	pageEncoding="gbk"%>
<%@ page import="gly.*"%>
<%@ page import="common.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%request.setCharacterEncoding("gbk");%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb18030" />
<title>管理员登录页面</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/glylogin.css">
</head>
<style>
body {
	background-image: url(<%=request.getContextPath()%>/images/banner.jpg);
}
</style>
<body>
	<center>
		<div id="login">
			<h1>管理员登录</h1>
			<form id="form1" name="form1" method="post"
				action="<%=request.getContextPath()%>/servlet/GlyLoginAction">
				<input type="text" required="required" placeholder="用户名"
					name="gly_name" id="gly_name"></input><input type="password"
					required="required" placeholder="密码" name="gly_password"
					id="gly_password"></input>
				<button class="sign-in" type="submit" onclick="return check()">登陆</button>
				<button class="reset" type="reset">重置</button>
			</form>
		</div>
	</center>
</body>
</html>
<script language="javascript">
	function check() {
		// TODO 1 
		if (form1.gly_name.value == "") {
			alert("用户名不能为空");
			form1.gly_name.focus();
			return false;
		}
		// TODO 2 
		if (form1.gly_password.value == "") {
			alert("密码不能为空");
			form1.gly_password.focus();
			return false;
		}
		form1.submit();
	}
</script>