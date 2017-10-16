<%@ page language="java" contentType="text/html; charset=utf-8" import="com.test.*,java.util.*"
    pageEncoding="utf-8"%>
    <% 
    	String path =request.getContextPath();
    	ArrayList<TestInfo> reclist=(ArrayList<TestInfo>)session.getAttribute("testList");
    	session.removeAttribute("testList");
    	String name=session.getAttribute("name11").toString();
    	
    	if(reclist==null){
    		reclist=new ArrayList<TestInfo>();
    	}
    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=urf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="css/semantic.min.css">
<script src="http://upcdn.b0.upaiyun.com/libs/jquery/jquery-2.0.2.min.js"></script>
<script language="JavaScript" src="js/semantic.min.js"></script>
<script language="JavaScript" src="js/semantic.js"></script>
<link rel="stylesheet" type="text/css" href="css/semantic.css">
<title>test</title>
</head>
<body>
<div class="ui bottom attached segment pushable">
  <div class="ui visible inverted left vertical sidebar menu">
 

  
    <a class="item" href="slsubject.jsp"><i class="block layout icon"></i> 科目选择 </a>
     <a class="item"><i class="calendar icon"></i> 关于我们 </a>
    <a class="item"><i class="smile icon"></i> 退出系统</a>
   
    <img class="ui medium circular image" style="width:150px; margin: 70px 50px;" src="image/elliot.jpg">
    
    <a class="sss1" style="margin: 90px;font-size: 35;"><%=name%></a>
  
  </div>
  <div class="pusher">
 
<SCRIPT LANGUAGE="JavaScript"> 

var maxtime = 60*60 //一个小时，按秒计算! 
function CountDown(){ 
if(maxtime>=0){ 
minutes = Math.floor(maxtime/60); 
seconds = Math.floor(maxtime%60); 
msg = "距离结束还有"+minutes+"分"+seconds+"秒"; 
document.all["timer"].innerHTML=msg; 
if(maxtime == 5*60) alert('注意，还有5分钟!'); 
--maxtime; 
} 
else{ 
	document.getElementById("frm").submit();
clearInterval(timer); 
alert("时间到，结束!"); 


} 
} 
timer = setInterval("CountDown()",1000); 

</SCRIPT> 
<div id="timer" style="color:red"></div> 

   <h1 style="text-align:center;margin-top:50px;">测试题</h1>
  <form  id="frm" method="POST" name="Jisuan" action="JisuanServlet">
  <div id="txm">
   <% int count=reclist.size();
for(int i=0;i<count;i++){
	TestInfo test=reclist.get(i); 
	%>
  	
    <p style="margin-left:250px;"><%=i+1%>. <%=test.getQuestion()%></p>
    <label style="margin-left:260px;"><input type="radio" name="<%=test.getId()%>answer" value="A"  ><%=test.getA()%></label>
    </br>
    <label style="margin-left:260px;"><input type="radio" name="<%=test.getId()%>answer" value="B" ><%=test.getB()%></label>
    </br>
    <label style="margin-left:260px;"><input type="radio" name="<%=test.getId()%>answer" value="C" ><%=test.getC()%></label>
    </br>
    <label style="margin-left:260px;"><input type="radio" name="<%=test.getId()%>answer" value="D" ><%=test.getD()%></label>
     </br>
     <label style=" display:none;"><input type="radio" name="<%=test.getId()%>answer" value="E" checked="checked" ><%=test.getD()%></label>
    

    <p style="margin-left:260px;">难度系数：<%=test.getWeight()%></p>
    
        
    <% }%>
    <input type="submit" class="submit" value="提交" style="margin: 0 auto; display: block;" >
   
    </div>
    </form>

  <div style="margin-left:200px;">
   
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