<%@ page language="java" contentType="text/html; charset=gbk"
	pageEncoding="gbk" import="gly.*"%>
<%@page import="common.*"%>
<%@page import="java.util.*"%>
<%
	request.setCharacterEncoding("gbk");
%>
<!DOCTYPE html>
<%
	GlyInfo gly = (GlyInfo) session.getAttribute("glyinfo");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>����Ա��Ϣ�޸�</title>
<script
	src="http://upcdn.b0.upaiyun.com/libs/jquery/jquery-2.0.2.min.js"></script>
<script language="JavaScript" src="/OnlineJudge/js/semantic.min.js"></script>
<script language="JavaScript" src="/OnlineJudge/js/semantic.js"></script>
<link href="<%=request.getContextPath()%>/css/glylogin.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/semantic.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/table.css">
</head>
<style>
</style>
<body>
	<div class="ui visible inverted left vertical sidebar menu">
		<a class="item"
			href="<%=request.getContextPath()%>/servlet/GlyListAction"><i
			class="home icon"></i> ����Ա��Ϣ </a> <a class="item" href="updatemg.html"><i
			class="block layout icon"></i> ��ѯ���Լ�¼ </a> <a class="item"
			href="../Question/mainpage.jsp"><i class="smile icon"></i> �༭�Ծ� </a>
		<img class="ui medium circular image"
			style="width: 150px; margin: 70px 50px;"
			src="<%=request.getContextPath()%>/images/elliot.jpg"> <a
			class="sss1" style="margin: 90px; font-size: 30px;" href="mgexit.jsp"><%=MyTools.toChinese((String) session.getAttribute("user"))%></a>
	</div>
	<form id=form2 name=form2 method="post"
		action="<%=request.getContextPath()%>/servlet/GlyUpdateAction">
		<input type="hidden" name="id" value="<%=gly.getGlyID()%>">
		<center>
			<table class="bordered">
				<tr>
					<td colspan="2">����Ա��Ϣ�޸�</td>
				</tr>
				<!-- <tr>
					<td>����</td>
					<td><input type="text" required placeholder="����"
						name="gly_num" style="color:#fff"></input></td>
				</tr> -->
				<!-- <tr>
					<td>���û���</td>
					<td><input type="text" required placeholder="���û���"
						name="gly_oname" style="color:#fff"></input></td>
				</tr> -->
				<tr>
					<td>���û���</td>
					<td><input type="text" required placeholder="���û���"
						name="gly_nname" style="color: #fff"></input></td>
				</tr>
				<!-- <tr>
					<td>�Ա�</td>
					<td><input type="radio" name="gly_sex" value="0" checked>��<input
						type="radio" name="gly_sex" value="1">Ů</td>
				</tr> -->
				<tr>
					<td>������</td>
					<td><input type="password" required placeholder="������"
						name="gly_opassword" style="color: #fff"></input></td>
				</tr>
				<tr>
					<td>������</td>
					<td><input type="password" required placeholder="������"
						name="gly_npassword" style="color: #fff"></input></td>
				</tr>
			</table>
			<table class="bordered">
				<tr>
					<td><button class="sign-in" type="submit"
							onclick="return check()">
							��½
							</button></td>
					<td><button class="reset" type="reset">
							����
							</button></td>
				</tr>
			</table>

		</center>
	</form>
</body>
</html>
<script language="javascript">
	function check() {
		// TODO 1 ���û�����Ϊ��
		if (form2.gly_oname.value == "") {
			alert("��������ľ��û���!");
			form2.gly_oname.focus();
			return false;
		}
		// TODO 2 ���û�����Ϊ��
		if (form2.gly_nname.value == "") {
			alert("������������û���!");
			form2.gly_nname.focus();
			return false;
		}
		// TODO 3 �����벻Ϊ��
		if (form2.gly_opassword.value == "") {
			alert("�����벻��Ϊ��!");
			form2.gly_opassword.focus();
			return false;
		}
		// TODO 4 �����벻Ϊ��
		if (form2.gly_npassword.value == "") {
			alert("�����벻��Ϊ��!");
			form2.gly_npassword.focus();
			return false;
		}
		form2.submit();
	}
</script>