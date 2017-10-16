<%@ page language="java" contentType="text/html; charset=utf-8" import="com.test.*,java.util.*,common.DBConnection,java.sql.Connection"
    pageEncoding="utf-8"%>
      <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script language="JavaScript" src="js/semantic.min.js"></script>
<script language="JavaScript" src="js/semantic.js"></script>
<link rel="stylesheet" type="text/css" href="css/semantic.css">
</head>
<body>
<div class="ui bottom attached segment pushable">
  <div class="ui visible inverted left vertical sidebar menu">
 
<%
	String name=session.getAttribute("name11").toString(); 
%>
 
    <a class="item" href="slsubject.jsp"><i class="block layout icon"></i> 继续考试 </a>
   
    <a class="item" href="index.jsp"><i class="calendar icon"></i>退出</a>
    <img class="ui medium circular image" style="width:150px; margin: 70px 50px;" src="image/elliot.jpg">
    <a class="sss1" style="margin: 90px;font-size: 35;"><%=name %></a>
  
  </div>
  <div class="pusher">
	<a>hello</a>
	<div class="ui two column grid" style="margin-left:280px;margin-top:300px;">
  	<div class="column">
    <div class="ui raised segment"><a class="ui red ribbon label">你的各科成绩</a>  
    <p>
   
   <br>
	 <% 
   
      try{
 
    	 
    String url = "jdbc:mysql://localhost:3306/gcsj";  
    String username = "root";  
    String password = "123456";
    String driver="com.mysql.jdbc.Driver";   
    Class.forName(driver);//加载驱动   
    Connection conn = DriverManager.getConnection(url,username,password);//得到连接  
    PreparedStatement tmt = conn.prepareStatement("select * from tb_score where username = '" + name + "'");
    ResultSet rs = tmt.executeQuery();
    List<String> list=new ArrayList<String>();
    List<Integer> list1=new ArrayList<Integer>();
    while(rs.next()){
    	out.println(rs.getString("subjectname"));
    	
    	out.println(rs.getInt("score"));
    	out.println("<br>");
    	
    }
    int rst = tmt.executeUpdate();  
    
      }catch (Exception e) {
          System.out.println("获取失败！");
      }
    %>
 	
   
 	
 
   
 
 
    </p>
    
    <div style="float:left">
    
    
    </div>
    
    </div>
  	</div>
  	
  	</div>
	
	</div>
	</div>
	

</body>
</html>