package com.history;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
/**
 * 连接数据库
 * 
 *
 */
public class DbHelper {
    private static String url = "jdbc:mysql://localhost:3306/gcsj";  //数据库地址
    private static String userName = "root";  //数据库用户名
    private static String passWord = "123456";  //数据库密码
    private static Connection conn = null;
    public  Connection getConnection(){
        if(null == conn){
            try {
                Class.forName("com.mysql.jdbc.Driver");
            }catch(Exception e){ 
	    		e.printStackTrace();
	    		System.out.println("加载MYSQL数据库驱动失败！");
		    }try { //通过驱动程序管理器获取数据库连接
                conn = DriverManager.getConnection(url, userName, passWord);
        	}catch(Exception e){
            e.printStackTrace();
            System.out.println("获取数据库连接失败！");
        	}
    
       }
		return conn;
    }

    public void closeDB(Statement sta, Connection conn) {
        // 关闭数据库连接（无结果集）
        try {
            sta.close();
            conn.close();
        } catch (SQLException e) {

            e.printStackTrace();
        }

    }

    public void closeDB(ResultSet rs, Statement sta, Connection conn) {
        // 关闭数据库连接（有结果集）
        try {
            rs.close();
            sta.close();
            conn.close();
        } catch (SQLException e) {

            e.printStackTrace();
        }

    }
}
