package com.history;

import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.history.scoresInfo;

public class operate {
    public List<scoresInfo> getAllScores(){  //查询所有信息
        List<scoresInfo> list = new ArrayList<scoresInfo>();  //创建集合
        DbHelper dbmanage = new DbHelper();
        Connection conn = dbmanage.getConnection();
        String sql  = "select * from tb_score";  //SQL查询语句
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rst = pst.executeQuery();
            while (rst.next()) {
            	scoresInfo scores = new scoresInfo();
            	scores.setId(rst.getInt("id"));  //得到ID
            	scores.setUsername(rst.getString("username"));
            	scores.setSubjectname(rst.getString("subjectname"));
            	scores.setScore(rst.getFloat("score"));
            	scores.setEndtime(rst.getString("endtime"));	
                list.add(scores);
            }
            rst.close();  //关闭
            pst.close();  //关闭
        } catch (SQLException e) {
            e.printStackTrace();  //抛出异常
            System.out.println("查询所有成绩失败!");
        }
        return list;  //返回一个集合
    }
    
    public boolean addscores(scoresInfo adds){  //添加信息
        String sql = "INSERT INTO `scores`(`id`,`username`,`subjectname`,`score`,`endtime`) VALUES (?,?,?,?,?)";  //添加的SQL语句
        DbHelper dbmanage = new DbHelper();
        Connection conn = dbmanage.getConnection();
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, adds.getId());
            pst.setString(2, adds.getUsername());
            pst.setString(3, adds.getSubjectname());
            pst.setFloat(4, adds.getScore());
            pst.setString(5, adds.getEndtime());
            int count = pst.executeUpdate();
            pst.close();
            return count>0?true:false;  //是否添加的判断
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("添加失败!");
        }
        return false;
    }
    public ArrayList<scoresInfo> selectNotDeleteList() {
        // 查询所有正常用户
        DbHelper dbmanage = new DbHelper();
        Connection conn = null;
        Statement sta = null;
        ResultSet rs = null;
        scoresInfo scores = null;
        ArrayList<scoresInfo> list = new ArrayList<scoresInfo>();
        try {
            conn = dbmanage.getConnection();
            sta = conn.createStatement();

            String sql = "SELECT * FROM scores WHERE id = 1";

            rs = sta.executeQuery(sql);
            while (rs.next()) {

                scores = new scoresInfo();

                scores.setId(rs.getInt("id"));  //得到ID
            	scores.setUsername(rs.getString("username"));
            	scores.setSubjectname(rs.getString("subjectname"));
            	scores.setScore(rs.getFloat("score"));
            	scores.setEndtime(rs.getString("endtime"));	

                list.add(scores);
            }

        } catch (SQLException e) {

            e.printStackTrace();
            System.out.println("列出失败");
        } finally {
        
        }
        return list;
    }
    public boolean deletescores(int id){  //删除
    	   String sql = "delete from scores where id = ?"; //删除的SQL语句，根据ID删除
    	   DbHelper dbmanage = new DbHelper();
           Connection conn = dbmanage.getConnection();
    	 try {
    		 	PreparedStatement pst = conn.prepareStatement(sql);
    		 	pst.setInt(1, id);
    		 	int count = pst.executeUpdate();
    		 	pst.close();
    		 	return count>0?true:false; //是否删除的判断
    	 } catch (SQLException e) {
    		 e.printStackTrace();
            System.out.println("删除失败!");
        }
        return false;
    }
    
    public scoresInfo selectscores(int id){  //根据ID进行查询
    	DbHelper dbmanage = new DbHelper();
        Connection conn = dbmanage.getConnection();
        String sql  = "select * from scores where id = "+id;
        scoresInfo  scores = null;
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rst = pst.executeQuery();
            while (rst.next()) {
            	scores = new scoresInfo();
            	scores.setId(rst.getInt("id"));  //得到ID
            	scores.setUsername(rst.getString("username"));
            	scores.setSubjectname(rst.getString("subjectname"));
            	scores.setScore(rst.getFloat("score"));
            	scores.setEndtime(rst.getString("endtime"));	
            }
            rst.close();
            pst.close();
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("ID查询失败!");
        }
        return scores;  //返回
    }
}