<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    <base href="<%=basePath%>">  
      
    <title>My JSP 'Feilong_chechRegister.jsp' starting page</title>  
      
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
    <%        
            String user = new String(request.getParameter("username").getBytes("ISO-8859-1"),"UTF-8");    
            String pwd = request.getParameter("password");
            String mail = request.getParameter("usermail");
            String tel = request.getParameter("usetel");
            String ad = request.getParameter("address");  
  		
            String url = "jdbc:mysql://localhost:3306/gcsj";  
            String username = "root";  
            String password = "123456";
            String driver="com.mysql.jdbc.Driver";   
            Class.forName(driver);//加载驱动   
            Connection conn = DriverManager.getConnection(url,username,password);//得到连接  
            PreparedStatement pStmt = conn.prepareStatement("select * from userinfo where username = '" + user + "'");  
              ResultSet rs = pStmt.executeQuery();  
                if(rs.next()){  
                    out.println("<script language='javascript'>alert('该用户已存在，请重新注册！');window.location.href='register.jsp';</script>");  
                }else{  
                    PreparedStatement tmt = conn.prepareStatement("Insert into userinfo(username, pswd, usermail, usetel, address)values"+"('" + user + "','" + pwd + "','" + mail + "','" + tel + "','" + ad + "')");  
                        int rst = tmt.executeUpdate();  
                        if (rst != 0){  
                              out.println("<script language='javascript'>alert('用户注册成功！');window.location.href='http://localhost:8080/Gly/index.jsp';</script>");    
                        }else{  
                           out.println("<script language='javascript'>alert('用户注册失败！');window.location.href='register.jsp';</script>");    
                        }  
                }  
     %>  
  </body>  
</html>
