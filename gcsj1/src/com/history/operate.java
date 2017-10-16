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
    public List<scoresInfo> getAllScores(){  //��ѯ������Ϣ
        List<scoresInfo> list = new ArrayList<scoresInfo>();  //��������
        DbHelper dbmanage = new DbHelper();
        Connection conn = dbmanage.getConnection();
        String sql  = "select * from tb_score";  //SQL��ѯ���
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rst = pst.executeQuery();
            while (rst.next()) {
            	scoresInfo scores = new scoresInfo();
            	scores.setId(rst.getInt("id"));  //�õ�ID
            	scores.setUsername(rst.getString("username"));
            	scores.setSubjectname(rst.getString("subjectname"));
            	scores.setScore(rst.getFloat("score"));
            	scores.setEndtime(rst.getString("endtime"));	
                list.add(scores);
            }
            rst.close();  //�ر�
            pst.close();  //�ر�
        } catch (SQLException e) {
            e.printStackTrace();  //�׳��쳣
            System.out.println("��ѯ���гɼ�ʧ��!");
        }
        return list;  //����һ������
    }
    
    public boolean addscores(scoresInfo adds){  //�����Ϣ
        String sql = "INSERT INTO `scores`(`id`,`username`,`subjectname`,`score`,`endtime`) VALUES (?,?,?,?,?)";  //��ӵ�SQL���
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
            return count>0?true:false;  //�Ƿ���ӵ��ж�
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("���ʧ��!");
        }
        return false;
    }
    public ArrayList<scoresInfo> selectNotDeleteList() {
        // ��ѯ���������û�
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

                scores.setId(rs.getInt("id"));  //�õ�ID
            	scores.setUsername(rs.getString("username"));
            	scores.setSubjectname(rs.getString("subjectname"));
            	scores.setScore(rs.getFloat("score"));
            	scores.setEndtime(rs.getString("endtime"));	

                list.add(scores);
            }

        } catch (SQLException e) {

            e.printStackTrace();
            System.out.println("�г�ʧ��");
        } finally {
        
        }
        return list;
    }
    public boolean deletescores(int id){  //ɾ��
    	   String sql = "delete from scores where id = ?"; //ɾ����SQL��䣬����IDɾ��
    	   DbHelper dbmanage = new DbHelper();
           Connection conn = dbmanage.getConnection();
    	 try {
    		 	PreparedStatement pst = conn.prepareStatement(sql);
    		 	pst.setInt(1, id);
    		 	int count = pst.executeUpdate();
    		 	pst.close();
    		 	return count>0?true:false; //�Ƿ�ɾ�����ж�
    	 } catch (SQLException e) {
    		 e.printStackTrace();
            System.out.println("ɾ��ʧ��!");
        }
        return false;
    }
    
    public scoresInfo selectscores(int id){  //����ID���в�ѯ
    	DbHelper dbmanage = new DbHelper();
        Connection conn = dbmanage.getConnection();
        String sql  = "select * from scores where id = "+id;
        scoresInfo  scores = null;
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rst = pst.executeQuery();
            while (rst.next()) {
            	scores = new scoresInfo();
            	scores.setId(rst.getInt("id"));  //�õ�ID
            	scores.setUsername(rst.getString("username"));
            	scores.setSubjectname(rst.getString("subjectname"));
            	scores.setScore(rst.getFloat("score"));
            	scores.setEndtime(rst.getString("endtime"));	
            }
            rst.close();
            pst.close();
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("ID��ѯʧ��!");
        }
        return scores;  //����
    }
}