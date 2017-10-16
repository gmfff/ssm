package Examquestion;

import java.sql.*;
import java.util.ArrayList;

import Examquestion.question;
import common.DBConnection;
import Examquestion.question;

public class question_con {
    private Connection con = null;
	public ArrayList<question> getAll() {
        ResultSet rs=null;
        Statement sql=null;
        ArrayList<question> queList=new ArrayList<question>();
        try {
        	con=DBConnection.getConnection();
            sql=con.createStatement();
            rs=sql.executeQuery("SELECT * from tb_select");
	    	while(rs.next()){
	    		question que=new question();
	    		que.setId(rs.getInt("id"));
	    		que.setQue(rs.getString("hh"));
	    		que.setSA(rs.getString("A"));
	    		que.setSB(rs.getString("B"));
	    		que.setSC(rs.getString("C"));
	    		que.setSD(rs.getString("D"));
	    		que.setAns(rs.getString("answer"));
	    		que.setWeight(rs.getString("Weight"));
	    		que.setSubject(rs.getString("subject"));
	    		queList.add(que);	    		
	    	}  
			rs.close();
			sql.close();
        } catch (Exception e) {
            System.out.println("获取所有题目信息失败！");
        } finally{
        	DBConnection.closeConnection();
		}		
        return queList;
    }
    public int insert(question que) {
    	PreparedStatement pStmt=null; 
    	int count=0;
        try {
        	con=DBConnection.getConnection();
    		pStmt = con.prepareStatement("insert into tb_select (key1,hh,A,B,C,D,answer,subject,Weight) values (?,?,?,?,?,?,?,?,?)");
    		pStmt.setString(1, String.valueOf(que.getKemu()));
    		pStmt.setString(2,que.getQue());		
    		pStmt.setString(3,que.getSA());		
    		pStmt.setString(4,que.getSB());		
    		pStmt.setString(5,que.getSC());		
    		pStmt.setString(6,que.getSD());		
    		pStmt.setString(7,que.getAns());
    		pStmt.setString(8,que.getSubject());
    		pStmt.setString(9,String.valueOf(que.getWeight()));
    		count=pStmt.executeUpdate();  
			pStmt.close();
        } catch (Exception e) {
           	e.printStackTrace();
            System.out.println("添加题目失败！");
        } finally{
        	DBConnection.closeConnection();
		}		
        return count;
    }
    public void delete(String num) {
    	PreparedStatement pStmt=null;
        try {
        	con=DBConnection.getConnection();
    		pStmt = con.prepareStatement("DELETE FROM tb_select WHERE id="+num);
    		int i = pStmt.executeUpdate();  
			pStmt.close();
        } catch (Exception e) {
           	e.printStackTrace();
            System.out.println("删除题目失败！");
        } finally{
        	DBConnection.closeConnection();
        }
    }
    public ArrayList<question> getone(int num){
    	 ResultSet rs=null;
         Statement sql=null;
         ArrayList<question> queList=new ArrayList<question>();
         try {
         	 con=DBConnection.getConnection();
             sql=con.createStatement();
             System.out.println(num);
             rs=sql.executeQuery("SELECT * from tb_select where id="+num);
             question que=new question();
             while(rs.next()){
            	 que.setKemu(rs.getString("key1"));
            	 que.setId(rs.getInt("id"));
            	 que.setQue(rs.getString("hh"));
            	 que.setSA(rs.getString("A"));
            	 que.setSB(rs.getString("B"));
            	 que.setSC(rs.getString("C"));
            	 que.setSD(rs.getString("D"));
            	 que.setAns(rs.getString("answer"));
            	 que.setSubject(rs.getString("subject"));
            	 que.setWeight(rs.getString("weight"));
            	 queList.add(que);
             }
             rs.close();
             sql.close();
         } catch (Exception e) {
             System.out.println("获取题目信息失败！");
         } finally{
         	DBConnection.closeConnection();
 		}		
         return queList;
    }
    @SuppressWarnings("finally")
	public boolean update(question que){
        PreparedStatement pstmt=null;  
        String sql="update tb_select set key1=?,hh=?,A=?,B=?,C=?,D=?,answer=?,subject=?,weight=? where id=?";  
        boolean flag=false;  
        try{  
            con=DBConnection.getConnection();  
            pstmt=con.prepareStatement(sql);  
            pstmt.setString(1, String.valueOf(que.getKemu()));
            pstmt.setString(2, que.getQue());
            pstmt.setString(3, que.getSA());  
            pstmt.setString(4, que.getSB());  
            pstmt.setString(5, que.getSC());  
            pstmt.setString(6, que.getSD());  
            pstmt.setString(7, que.getAns());
            pstmt.setString(8, que.getSubject());
            pstmt.setString(9, que.getWeight());
            pstmt.setInt(10,que.getId());
            flag=pstmt.executeUpdate()>0;  
        }catch(Exception e){  
            e.printStackTrace();  
        }finally{  
            try{  
                DBConnection.closeConnection();
            }catch(Exception e){  
                e.printStackTrace();  
            }  
            return flag;  
        }
    }
}