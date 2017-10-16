<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="GB2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=urf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="../css/semantic.min.css">
<script src="http://upcdn.b0.upaiyun.com/libs/jquery/jquery-2.0.2.min.js"></script>
<script language="JavaScript" src="../js/semantic.min.js"></script>
<script language="JavaScript" src="../js/semantic.js"></script>
<link rel="stylesheet" type="text/css" href="../css/semantic.css">
<title>信息列表</title>
</head>
<style>
#banner{
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -150px 0 0 -150px;
	width: auto;
	height: auto;
}
h2{
	color: #333;
	text-shadow: 0 0 10px;
	letter-spacing: 1px;
	text-align: center;
	font-size: 2em;
	margin: 0.67em 0;
	font-style:normal;
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
 

    <a class="item" href="update.html"><i class="home icon"></i> 修改管理员信息 </a>
    
    <a class="item" href="Select.html"><i class="block layout icon"></i> 查询考试记录 </a>
    <a class="item" href="kaoshijilu.html"><i class="block layout icon"></i> 编辑试卷 </a>
    <a class="item"><i class="smile icon"></i> 编辑试题<%response.sendRedirect(request.getContextPath()+"/movetolist");%></a>
    <img class="ui medium circular image" style="width:150px; margin: 70px 50px;" src="../image/elliot.jpg">
    <a class="sss1" style="margin: 90px;font-size: 35px;">gmf</a>
  
  </div>
  <div id="banner">  
    <h2>登陆成功！请在左边导航栏选择一个操作继续！</h2>  
	</div>
</body>  
</html>