<%@ page language="java" contentType="text/html; charset=gbk"
	pageEncoding="gbk"%>
<%@page import="common.*"%>
<%@page import="gly.*"%>
<%@page import="java.util.*"%>
<%request.setCharacterEncoding("gbk");%>
<%
	String path = request.getContextPath();
	ArrayList<GlyInfo> reclist = (ArrayList<GlyInfo>) session.getAttribute("GlyList");
	session.removeAttribute("GlyList");
	if (reclist == null) {//�������ݻ�δ����
		reclist = new ArrayList<GlyInfo>();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>����Աѡ�����</title>
<link href="<%=path%>/css/glylogin.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="semantic.min.css">
<script
	src="http://upcdn.b0.upaiyun.com/libs/jquery/jquery-2.0.2.min.js"></script>
<script language="JavaScript" src="semantic.min.js"></script>
<script language="JavaScript" src="semantic.js"></script>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/semantic.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/css/table.css">
</head>
<body>
	<div class="ui visible inverted left vertical sidebar menu"
		style="height:100%;">
		<a class="item" href="<%=path%>/guanli/updatemg.jsp"><i
			class="home icon"></i> ����Ա��Ϣ </a> <a class="item" href="updatemg.html"><i
			class="block layout icon"></i> ��ѯ���Լ�¼ </a> <a class="item"
			href="../Question/mainpage.jsp"><i class="smile icon"></i> �༭�Ծ� </a> <img
			class="ui medium circular image"
			style="width:150px; margin: 70px 50px;"
			src="<%=path%>/images/elliot.jpg"> <a class="sss1"
			style="margin: 90px;font-size: 30px;"
			href="<%=path%>/guanli/mgexit.jsp"> <%=MyTools.toChinese((String)session.getAttribute("user"))%>
		</a>
	</div>
	<center>
		<h2>����Աһ��</h2>
		<table class="bordered">
			<thead>
				<tr>
					<th>ID</th>
					<!-- <th>����</th> -->
					<th>�û���</th>
					<!-- <th>�Ա�</th> -->
					<th>ѡ��</th>
				</tr>
			</thead>
			<%
				int count = reclist.size();
				for (int i = 0; i < count; i++) {
					GlyInfo guanliyuan = reclist.get(i);
			%>
			<tr>
				<td><%=guanliyuan.getGlyID()%></td>
				<%-- <td><%=guanliyuan.getGlyNum()%></td> --%>
				<td><%=guanliyuan.getGlyName()%></td>
				<%-- <td><%=guanliyuan.getGlySex() == 0 ? "��":"Ů"%></td> --%>
				<td><a
					href="<%=path%>/servlet/GlyGetAction?id=<%=guanliyuan.getGlyID()%>">�޸���Ϣ</a></td>
			</tr>
			<%
				}
			%>
		</table>
	</center>
</body>
</html>