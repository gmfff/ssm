<%@ page language="java" contentType="text/html; charset=utf-8" import="com.test.*"
    pageEncoding="utf-8"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="css/semantic.min.css">
<script src="http://upcdn.b0.upaiyun.com/libs/jquery/jquery-2.0.2.min.js"></script>
<script language="JavaScript" src="js/semantic.min.js"></script>
<script src="js/jquery-1.8.3.min.js" type="text/javascript" language="javascript"></script> 
<script language="JavaScript" src="js/semantic.js"></script>
<link rel="stylesheet" type="text/css" href="css/semantic.css">
<title>slsubject</title>
</head>
<body>
<% String path = request.getContextPath();%>
	<div class="ui bottom attached segment pushable">
  <div class="ui visible inverted left vertical sidebar menu">
 

    
    <a class="item" href="slsubject.jsp"><i class="block layout icon"></i> 科目选择 </a>
    <a class="item" href="resultAll.jsp"><i class="smile icon"></i> 成绩查询</a>
    <a class="item"><i class="calendar icon"></i>关于我们</a>
    <img class="ui medium circular image" style="width:150px; margin: 70px 50px;" src="image/elliot.jpg">
     <%  
      
    String name=session.getAttribute("name11").toString();
     System.out.println(name);
    
     
    %>
    <a class="sss1" style="margin: 90px;font-size: 35;"><%=name %></a>
  
  </div>
  <div class="pusher">
    
     <div class="ui special cards" style="margin-left:300px;margin-top:100px;">
  <div class="card">
    <div class="blurring dimmable image">
      
      <img src="image/elyse.png">
    </div>
    <div class="content">
      <a class="header" href="Subject11?name=1;">概率数理统计</a>
      <div class="meta">
        <span class="date">软工153,154</span>
      </div>
    </div>
    <div class="extra content">
      <a><i class="users icon"></i>Miss Xu</a>
    </div>
  </div>
  <div class="card">
    <div class="blurring dimmable image">
      
      <img src="image/matthew.png">
    </div>
    <div class="content">
      <a class="header"  href="Subject11?name=2">Web应用程序设计</a>
      <div class="meta">
        <span class="date">软工154,153</span>
      </div>
    </div>
    <div class="extra content">
      <a><i class="users icon"></i>Miss Yue</a>
    </div>
  </div>
  <div class="card">
    <div class="blurring dimmable image">
      
      <img src="image/molly.png">
    </div>
    <div class="content">
      <a class="header">操作系统原理</a>
      <div class="meta">
        <span class="date">软工153,154</span>
      </div>
    </div>
    <div class="extra content">
      <a><i class="users icon"></i>Mr Jiang</a>
    </div>
  </div>
</div>
<div class="ui special cards" style="margin-left:300px;margin-top:100px;">
  <div class="card">
    <div class="blurring dimmable image">
      
      <img src="image/elyse.png">
    </div>
    <div class="content">
      <a class="header">数据库原理</a>
      <div class="meta">
        <span class="date">软工153,154</span>
      </div>
    </div>
    <div class="extra content">
      <a><i class="users icon"></i>Miss Luo</a>
    </div>
  </div>
  <div class="card">
    <div class="blurring dimmable image">
      
      <img src="image/matthew.png">
    </div>
    <div class="content">
      <a class="header">数字电路与逻辑设计</a>
      <div class="meta">
        <span class="date">软工153,154</span>
      </div>
    </div>
    <div class="extra content">
      <a><i class="users icon"></i> Miss Xu </a>
    </div>
  </div>
  <div class="card">
    <div class="blurring dimmable image">
      
      <img src="image/molly.png">
    </div>
    <div class="content">
      <a class="header">马克思主义基本原理</a>
      <div class="meta">
        <span class="date">软化153,154</span>
      </div>
    </div>
    <div class="extra content">
      <a><i class="users icon"></i> Mr Xia </a>
    </div>
  </div>
</div>
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
</body>
</html>