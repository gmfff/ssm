<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="GB2312"%>
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
<title>ѡ����¼��</title>
</head>
<style>

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
	margin-left:500px;
	margin-top:100px;
}
.t_table{
	border:1px ;
}
</style>
<%
	String path = request.getContextPath();
%>
<body>
<div class="ui bottom attached segment pushable">
  <div class="ui visible inverted left vertical sidebar menu">
 
  	 <a class="item" href="<%=path %>/Question/mainpage.jsp"><i class="home icon"></i> ���� </a>
    <img class="ui medium circular image" style="width:150px; margin: 70px 50px;" src="../image/elliot.jpg">
    <a class="sss1" style="margin: 90px;font-size: 35;">gmf</a>
  
  </div>
  <form name="frm" method="post" action="<%=path%>/addquestionaction">
	<div class="b_table">
  	<table class="t_table">
		<tr>
		  <td>¼��ѡ���⣺</td>
   		  <tr><td><TEXTAREA name="question"  rows="4" cols="91"  
   		  onpropertychange="
   				if(this.value.length>200) {
   				this.value=value.substr(0,200);
    			alert('�������200���ַ�!');
    			}"></TEXTAREA></td></tr>
		<tr><td>A.<input type="text" name="A" value="" size="91" /></td></tr>
		<tr><td>B.<input type="text" name="B" value="" size="91" /></td></tr>
		<tr><td>C.<input type="text" name="C" value="" size="91" /></td></tr>
		<tr><td>D.<input type="text" name="D" value="" size="91" /></td></tr>
		<tr><td>�𰸣�<select  name="answer">
		 <option value="A" size="4" checked>A</option>
   		 <option value="B" size="4">B</option>
   		 <option value="C" size="4">C</option>
    	 <option value="D" size="4">D</option></select></td></tr>
    	 <tr><td>�Ѷȣ�<select name="weight">
    	 <option value="1" size="4" checked>��</option>
    	 <option value="2" size="4">����</option>
    	 <option value="3" size="4">ƫ��</option></select></td></tr>
    	 <tr><td>��Ŀ��<select name="subject">
    	 <option value="��������ͳ��" size="4" checked>��������ͳ��</option>
    	 <option value="WebӦ�ó������" size="4">WebӦ�ó������</option></select></td></tr>
    	 <tr><td colspan="2" align="center">
    	 <input type="reset"  value="����" >
    	 <input type="submit"  value="�ύ" onclick="return check();"></td></tr>
    	 </table>
    	 </div>
    	 <div>
    	 	
    	 </div>
    </form>
  
</body>
</html>
<script language="JavaScript">
function check(){
	if(frm.question.value.length>200||frm.question.value==""){
		alert("������С��200λ�ַ�����Ŀ����!");
		frm.question.focus();
		return false;
	}
}
</script>