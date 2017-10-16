<%@ page language="java" import="java.util.*,java.sql.*,java.net.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
    <%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%      //接收用户名和密码    
            String user = new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");    
            String pwd = request.getParameter("pwd");  
  
            String url = "jdbc:mysql://localhost:3306/gcsj";  
            String username = "root";  
            String password = "123456";
            String driver="com.mysql.jdbc.Driver";   
            Class.forName(driver);//加载驱动   
            Connection conn = DriverManager.getConnection(url,username,password);//得到连接  
            PreparedStatement pStmt = conn.prepareStatement("select * from manager where name = '" + user + "' and Password = '" + pwd + "'");  
              ResultSet rs = pStmt.executeQuery();  
                if(rs.next()){  
                    response.sendRedirect("guanli/main.jsp"); //解决乱码   
                }else{  
                    response.sendRedirect("login.jsp?errNo");//密码不对返回到登陆    
                }  
     rs.close();  
     pStmt.close();  
     conn.close();  
     %>  

</body>
</html>