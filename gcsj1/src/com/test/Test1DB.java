package com.test;
import java.sql.Connection;






import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import common.DBConnection;
import com.test.TestInfo;
public class Test1DB {
	private Connection con=null;
	
	public ArrayList<TestInfo> getAll(String name){
		ResultSet rs=null;
		Statement sql=null;
		
		ArrayList<TestInfo> testlist=new ArrayList<TestInfo>();
		try{
		
			con=DBConnection.getConnection();
			sql=con.createStatement();
			
			rs=sql.executeQuery("select * from tb_select where key1="+name);
		
			
		
			while(rs.next()){
				TestInfo test=new TestInfo();
				test.setQuestion(rs.getString("hh"));
				test.setId(rs.getInt("id"));
				test.setA(rs.getString("A"));
				test.setB(rs.getString("B"));
				test.setC(rs.getString("C"));
				test.setD(rs.getString("D"));
				test.setWeight(rs.getString("weight"));
				test.setAnswer(rs.getString("answer")); 
				test.setSubject(rs.getString("subject"));
				testlist.add(test);
			
			
			
			}
			rs.close();
			sql.close();
		}catch (Exception e) {
            System.out.println("获取考试题目失败！");
        } finally{
        	DBConnection.closeConnection();
		}		
        return testlist;
		
	}
	
	
}
