<%@ page language="java" contentType="text/html; charset=GB18030"  import="com.history.*"
    pageEncoding="GB18030" %>
<%
String path = request.getContextPath();
request.setCharacterEncoding("gb2312");//post�ύ��ʽ�ĺ��ֱ���ת
scoresInfo user = (scoresInfo)session.getAttribute("user");//��ȡ�Ự��Ϣ
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/semantic.min.css">
<script src="http://upcdn.b0.upaiyun.com/libs/jquery/jquery-2.0.2.min.js"></script>
<script language="JavaScript" src="css/semantic.min.js"></script>
<script language="JavaScript" src="css/semantic.js"></script>
<link rel="stylesheet" type="text/css" href="css/semantic.css">

<title>Insert title here</title>
</head>
<body>
<style>  
  
#login_click{ margin-top:100px; height:40px; margin-left: 400px}  
#login_click a   
{  
      
  
    text-decoration:none;  
    background:#2f435e;  
    color:#f2f2f2;  
      
    padding: 10px 30px 10px 30px;  
    font-size:16px;  
    font-family: ΢���ź�,����,Arial,Helvetica,Verdana,sans-serif;  
    font-weight:bold;  
    border-radius:3px;  
      
    -webkit-transition:all linear 0.30s;  
    -moz-transition:all linear 0.30s;  
    transition:all linear 0.30s;  
      
    }  
   #login_click a:hover { background:#385f9e; }  
  
</style>  

<div class="ui bottom attached segment pushable">
  <div class="ui visible inverted left vertical sidebar menu">
    

   
    <img class="ui medium circular image" style="width:150px; margin: 70px 50px;" src="image/elliot.jpg">
    <a class="sss1" style="margin: 90px;font-size: 35;">gmf</a>
  
  </div>
  <div class="pusher">
  <h1  style="font-family:STXihei ;margin-top: 60px;margin-left:500px;font-size:50;">�û������¼:</h1>
    
     <div class="ui special cards" style="margin-left: 00px; margin-top: 40px; font-weight: bold; font-size: 14px;">
     <div>
     <table width="400" height="100" border="2" style="margin-left: 400px">
  <tr>
    <td width="150" height="93" onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����id:</td>
    <td width="150" onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=user.getId() %></td>
  </tr>
  <tr>
    <td width="150" height="93" onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';"">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�û���:</td>
    <td onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=user.getUsername() %></td>
  </tr>
  <tr>
    <td width="150" height="93"  onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���Կ�ĿΪ:</td>
    <td onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=user.getSubjectname() %></td>
  </tr>
  <tr>
    <td width="150" height="93"  onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���Գɼ�:</td>
    <td onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">.
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=user.getScore() %></td>
  </tr>
  <tr>
    <td width="150" height="93"  onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���Խ���ʱ��:</td>
    <td onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=user.getEndtime() %></td>
  </tr>
</table>
      
  </div>  
</div>
<div id="login_click" >  
        <a style="margin-left:120px;" id="btlogin1" href="<%=path %>/ShowServlet" >����</a>
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
</head>
<body>


</body>
</html>