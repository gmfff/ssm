<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="GB2312"%>
<%@page import="Examquestion.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../css/semantic.min.css">
<script src="http://upcdn.b0.upaiyun.com/libs/jquery/jquery-2.0.2.min.js"></script>
<script language="JavaScript" src="../js/semantic.min.js"></script>
<script language="JavaScript" src="../js/semantic.js"></script>
<link rel="stylesheet" type="text/css" href="../css/semantic.css">
<link rel="stylesheet" type="text/css" href="../css/xuanze.css">
<title>试题信息列表</title>
</head>
<style>
.b_table{
	width: 1000px;
	float:left;
	margin-left:300px;
	margin-top:100px;
}
.t_table{
	border:1px ;
}
</style>
<%
	String path = request.getContextPath();
	ArrayList<question> reclist=(ArrayList<question>)session.getAttribute("queList");
	session.removeAttribute("queList");
	if(reclist==null){
		reclist=new ArrayList<question>();
	}
%>
<body>

<div class="ui bottom attached segment pushable">
  <div class="ui visible inverted left vertical sidebar menu">
 
  	 <a class="item" href="../guanli/main.jsp"><i class="home icon"></i> 返回 </a>
    <img class="ui medium circular image" style="width:150px; margin: 70px 50px;" src="../image/elliot.jpg">
    <a class="sss1" style="margin: 90px;font-size: 35;">gmf</a>
  
  </div>
  <div class="b_table">
	<table width="100%" height="100" border="0" cellpadding="0" cellspacing="0" align="center" class="t_table">
			<tr class="td_header">
				<td height="25" colspan="6" class="tb_showall" align="center"">
					试题信息列表
				</td>
			</tr>
			<tr class="td_header">
			<td></td>
			<td>题目</td>
			<td>科目</td>
			<td></td>
			</tr>
			<%
			int count=reclist.size();
			for(int i=0,num=1;i<count;i++,num++){
				question ques=reclist.get(i);
				int j=ques.getId();
			%>
			<tr class="td_<%=i%2+1%>">
				<td><%=num%></td>
				<td><%=ques.getQue() %></td>
				<td><%=ques.getSubject() %></td>
				<td>
					<a href=<%=path +"/getoneaction?id=" +j%>>编辑</a>
					<a href=<%=path +"/deleteaction?id=" +j%>>删除</a>
				</td>
			</tr>
			<%
			}
			%>
			<tr><td colspan="4"><a href=<%=path +"/Question/xuanze_add.jsp"%>>添加试题</a>
				<td colspan="4"><a href=<%=path%>/movetolist>刷新列表</a> 
			</tr>
			</table>
</div>
</div>
  </body>
</html>