<%@ page language="java" contentType="text/html; charset=utf-8" import="com.history.*"
 pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList" %>

<%
	String path = request.getContextPath();
	ArrayList<scoresInfo> scoreslist = (ArrayList<scoresInfo>)session.getAttribute("list");//获取会话信息
	session.removeAttribute("list");
	if(scoreslist == null){
		scoreslist = new ArrayList<scoresInfo>();
		
}%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/semantic.min.css">
<script src="http://upcdn.b0.upaiyun.com/libs/jquery/jquery-2.0.2.min.js"></script>
<script language="JavaScript" src="css/semantic.min.js"></script>
<script language="JavaScript" src="css/semantic.js"></script>
<link rel="stylesheet" type="text/css" href="css/semantic.css">

<style type="text/css">
<!--
#items {
width:700px;
height:200px;
margin-left:0;
}
#items ul, #items li {
list-style:none;
}
#items li {
width:800px;
height: 28px;
text-align: left;
background-image: url(../images/icon_text.gif);
background-repeat: no-repeat;
background-position: 50px left;
padding-left: 0px;
line-height:28px;
color:#CCC;
border-bottom:dashed 1px #CCC;
}
#items li a {
float:left;
text-align:le;
line-height:28px;
color:#666;
text-decoration:none;
}
#items li a:hover {
color:#F00;
}
-->
</style>
 
<div class="ui bottom attached segment pushable">
  <div class="ui visible inverted left vertical sidebar menu">
  

   <a class="item" href="guanli/main.jsp"><i class="home icon"></i> 返回 </a>
    
   
    <img class="ui medium circular image" style="width:150px; margin: 70px 50px;" src="image/elliot.jpg">
    <a class="sss1" style="margin: 90px;font-size: 35;">gmf</a>
  
  </div>
  <div class="pusher">
  <h1 align="center" style="font-family:STXihei ;font-size:44;">考试记录查询页面:</h1>
    
     <div class="ui special cards" style="margin-left:0;margin-top:10px;"> 
     </div>
<div id="items" style="margin-top:100px;">
<%
		//循环输出数据列表
		int count = scoreslist.size();
		for (int i = 0; i < count; i++){
			scoresInfo scores = scoreslist.get(i);
			
	%>
<ul>
<li><a style="font-size: 32;">考生<%=scores.getUsername()%>的考试记录</a></li><br>
<p><%=scores.getEndtime() %>:<%=scores.getSubjectname() %>成绩为：<%=scores.getScore() %><p>
<a style="font-size: 18;"href="<%=path %>/DeleteServlet?id=<%=scores.getId()%>">删除</a></p>
</ul>
	<% 
		}
%>
</div>
  </div>
<script type="text/javascript">
	
	$('.visible.example .ui.sidebar')
  .sidebar({
    context: '.visible.example .bottom.segment'
  })
  .sidebar('hide')
;
</script>