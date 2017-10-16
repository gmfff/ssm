<%@ page language="java" contentType="text/html; charset=utf-8" import="com.test.*,java.util.*,common.DBConnection,java.sql.Connection"
    pageEncoding="utf-8"%>
    <%@ page import="java.sql.*"%>
  
     <% 
    	String path =request.getContextPath();
    	ArrayList<TestInfo> reclist=(ArrayList<TestInfo>)session.getAttribute("testList");
    	session.removeAttribute("testList");
    	if(reclist==null){
    		reclist=new ArrayList<TestInfo>();
    	}
    	 String name=session.getAttribute("name11").toString();
    
    %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="css/semantic.min.css">
<script src="http://upcdn.b0.upaiyun.com/libs/jquery/jquery-2.0.2.min.js"></script>
<script language="JavaScript" src="js/semantic.min.js"></script>
<script language="JavaScript" src="js/semantic.js"></script>
<link rel="stylesheet" type="text/css" href="css/semantic.css">
<title>Insert title here</title>
</head>
<body>
	<%TestInfo test=reclist.get(1);%>
	<div class="ui bottom attached segment pushable">
  <div class="ui visible inverted left vertical sidebar menu">
 

 
    <a class="item" href="slsubject.jsp"><i class="block layout icon"></i> 继续考试 </a>
    <a class="item" href="resultAll.jsp"><i class="smile icon"></i> 成绩查询</a>
    <a class="item" href="index.jsp"><i class="calendar icon"></i>退出</a>
    <img class="ui medium circular image" style="width:150px; margin: 70px 50px;" src="image/elliot.jpg">
    <a class="sss1" style="margin: 90px;font-size: 35;"><%=name %></a>
  
  </div>
  <div class="pusher">
	<a>hello</a>
	<div class="ui two column grid" style="margin-left:280px;margin-top:300px;">
  	<div class="column">
    <div class="ui raised segment"><a class="ui red ribbon label"><%=test.getSubject() %></a> <span>你的考试成绩</span> 
    <p>
    <% 
    
    System.out.println(name);
		int mark=(Integer)session.getAttribute("mark");
		double xuanze=(mark/10)*100;
		int markAll=mark*10;
		String subject=test.getSubject();
	%>
	  <% 
   
      try{
 
    	  System.out.println("hello");
    String url = "jdbc:mysql://localhost:3306/gcsj";  
    String username = "root";  
    String password = "123456";
    String driver="com.mysql.jdbc.Driver";   
    Class.forName(driver);//加载驱动   
    Connection conn = DriverManager.getConnection(url,username,password);//得到连接  
    PreparedStatement tmt = conn.prepareStatement("insert into tb_score (id,username,subjectname,score,endtime) values (?,?,?,?,?)");
    tmt.setInt(1,0);
	tmt.setString(2,name);		
	tmt.setString(3,subject);		
	tmt.setInt(4,markAll);		
	tmt.setString(5,"2017");		
	
    int rst = tmt.executeUpdate();  
    
      }catch (Exception e) {
          System.out.println("添加失败！");
      }
    %>
    选择题答对了:<%=mark %>
    <br>
   选择题正确率：<%=xuanze %>
   <br>
   
 
  总得分为：<%=markAll %>
    </p>
    
    <div style="float:left">
    
    
    </div>
    
    </div>
  	</div>
  	
  	</div>
	
	</div>
	</div>
	<%
		String sql="insert into tb_score(id,username,subjectname, score,endtime) values('1','gmf','"+subject+"','"+markAll+"','2017')";
	 	Connection con=DBConnection.getConnection();
		 Statement stmt=con.createStatement();
		 try { 
			 stmt.execute(sql); 
			 }catch(Exception e) { 
			 e.printStackTrace(); 
			 } 
		
		 stmt.close();
		 
	%>
		

	
	

	
</body>
</html>