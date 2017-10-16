<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="GB2312"%>
<%@page import="java.util.*,Examquestion.*,java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/semantic.min.css">
<script src="http://upcdn.b0.upaiyun.com/libs/jquery/jquery-2.0.2.min.js"></script>
<script language="JavaScript" src="js/semantic.min.js"></script>
<script language="JavaScript" src="js/semantic.js"></script>
<link rel="stylesheet" type="text/css" href="css/semantic.css">
<title>选择题修改入</title>
</head>
<style>
.body{
	background-image: url(image/banner.jpg);
}
li{
	font-size:16px
} 
li:link {
	color:#666;
	text-decoration:none;
}
li:active:{
	color:#333;
}
li:visited {
	color:purple;
	text-decoration:none;
}
li:hover {
	color:#333;
	text-decoration:none;
}
ul{
	color:#CCC;
	background-color:#000;
}
.b_table{
	width: 800px;
	float:left;
	margin-left: 500px;
	margin-top:100px;
}

</style>
<%
	String path = request.getContextPath();
	ArrayList<question> reclist=(ArrayList<question>)session.getAttribute("queList");
	session.removeAttribute("queList");
	if(reclist==null){//测试数据还未构建
		reclist=new ArrayList<question>();
	}
%>
<body>
<div class="ui bottom attached segment pushable">
  <div class="ui visible inverted left vertical sidebar menu">
 
  	 <a class="item" href="<%=path %>/Question/mainpage.jsp"><i class="home icon"></i> 返回 </a>
    <img class="ui medium circular image" style="width:150px; margin: 70px 50px;" src="image/elliot.jpg">
    <a class="sss1" style="margin: 90px;font-size: 35;">gmf</a>
  
  </div>
  <form name="frm" method="post" action="<%=path%>/fixquestionaction">
<div class="b_table">
  <table>
	<tr>
	  <td>修改选择题：</td></tr>
	  <input type="text" style="display:none" name="id" value=<%=reclist.get(0).getId() %>>
	  <input type="text" style="display:none" name="key1" value=<%=reclist.get(0).getKemu() %>>
	  <tr><td><input name="Que" rows="4" cols="91" value=<%=reclist.get(0).getQue() %> size="93"></td></tr>
	<tr><td>A.<input type="text" name="SA" value=<%=reclist.get(0).getSA() %> size="91"></td></tr>
	<tr><td>B.<input type="text" name="SB" value=<%=reclist.get(0).getSB() %> size="91"></td></tr>
	<tr><td>C.<input type="text" name="SC" value=<%=reclist.get(0).getSC() %> size="91"></td></tr>
	<tr><td>D.<input type="text" name="SD" value=<%=reclist.get(0).getSD() %> size="91"></td></tr>
    <tr><td>答案：
		 <input type="radio" name="Ans" id="0" value="A" <%= reclist.get(0).getAns().equals("A")?"Checked":"" %> size="4" >A
   		 <input type="radio" name="Ans" id="1" value="B" <%= reclist.get(0).getAns().equals("B")?"Checked":"" %> size="4" >B
   		 <input type="radio" name="Ans" id="2" value="C" <%= reclist.get(0).getAns().equals("C")?"Checked":"" %> size="4" >C
    	 <input type="radio" name="Ans" id="3" value="D" <%= reclist.get(0).getAns().equals("D")?"Checked":"" %> size="4" >D
    	</td></tr>
    	 <tr><td>难度：
    	 <input type="radio" name="Weight" id="1" value="1" <%= reclist.get(0).getWeight().equals("1")?"Checked":"" %> size="4">简单
    	 <input type="radio" name="Weight" id="2" value="2" <%= reclist.get(0).getWeight().equals("2")?"Checked":"" %> size="4">适中
    	 <input type="radio" name="Weight" id="3" value="3" <%= reclist.get(0).getWeight().equals("3")?"Checked":"" %> size="4">偏难
    	 </td></tr>
    	  <tr><td>科目：
    	 <input type="radio" name="subject" id="1" value="概率数理统计" <%= reclist.get(0).getSubject().equals("概率数理统计")?"Checked":"" %> >概率数理统计
    	 <input type="radio" name="subject" id="2" value="Web应用程序设计" <%= reclist.get(0).getSubject().equals("Web应用程序设计")?"Checked":"" %> >Web应用程序设计
    	 </td></tr>
    <tr><td colspan="2" align="center">
    <input type="reset"  value="重填" >
    <input type="submit"  value="提交"  onclick="return check();">
  </table>
</div>
</form>
</div>
</body>
</html>
<script language="JavaScript">
function check(){
	if(frm.question.value.length>200||frm.question.value==""){
		alert("请输入小于200位字符的题目描述!");
		frm.question.focus();
		return false;
	}
}
</script>
