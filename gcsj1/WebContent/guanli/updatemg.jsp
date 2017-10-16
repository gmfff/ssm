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
	if (reclist == null) {//测试数据还未构建
		reclist = new ArrayList<GlyInfo>();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>管理员选择界面</title>
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
			class="home icon"></i> 管理员信息 </a> <a class="item" href="updatemg.html"><i
			class="block layout icon"></i> 查询考试记录 </a> <a class="item"
			href="../Question/mainpage.jsp"><i class="smile icon"></i> 编辑试卷 </a> <img
			class="ui medium circular image"
			style="width:150px; margin: 70px 50px;"
			src="<%=path%>/images/elliot.jpg"> <a class="sss1"
			style="margin: 90px;font-size: 30px;"
			href="<%=path%>/guanli/mgexit.jsp"> <%=MyTools.toChinese((String)session.getAttribute("user"))%>
		</a>
	</div>
	<center>
		<h2>管理员一览</h2>
		<table class="bordered">
			<thead>
				<tr>
					<th>ID</th>
					<!-- <th>工号</th> -->
					<th>用户名</th>
					<!-- <th>性别</th> -->
					<th>选项</th>
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
				<%-- <td><%=guanliyuan.getGlySex() == 0 ? "男":"女"%></td> --%>
				<td><a
					href="<%=path%>/servlet/GlyGetAction?id=<%=guanliyuan.getGlyID()%>">修改信息</a></td>
			</tr>
			<%
				}
			%>
		</table>
	</center>
</body>
</html>