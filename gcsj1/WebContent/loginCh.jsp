<%@ page language="java" import="java.util.*,java.sql.*,java.net.*" pageEncoding="utf-8"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    <base href="<%=basePath%>">  
      
    <title>My JSP 'Feilong_loginCh.jsp' starting page</title>  
      
    <meta http-equiv="pragma" content="no-cache">  
    <meta http-equiv="cache-control" content="no-cache">  
    <meta http-equiv="expires" content="0">      
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
    <meta http-equiv="description" content="This is my page">  
    <!-- 
    <link rel="stylesheet" type="text/css" href="styles.css"> 
    -->  
  
  </head>  
  <body>  
    <%      //接收用户名和密码    
            String user = new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");    
            String pwd = request.getParameter("pwd");  
        	System.out.println(user);	
        	System.out.println(pwd);
            String url = "jdbc:mysql://localhost:3306/gcsj";  
            String username = "root";  
            String password = "123456";
            String driver="com.mysql.jdbc.Driver";   
            Class.forName(driver);//加载驱动   
            Connection conn = DriverManager.getConnection(url,username,password);//得到连接  
            PreparedStatement pStmt = conn.prepareStatement("select * from userinfo where username = '" + user + "' and pswd = '" + pwd + "'");  
              ResultSet rs = pStmt.executeQuery();  
              session.setAttribute("name11", user);
                if(rs.next()){  
                    response.sendRedirect("slsubject.jsp"); //解决乱码   
                }else{  
                    response.sendRedirect("login1.jsp?errNo");//密码不对返回到登陆    
                }  
     rs.close();  
     pStmt.close();  
     conn.close();  
     %>  
  </body>  
</html>  
