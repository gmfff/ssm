package com.history;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
/**
 * �������ݿ�
 * 
 *
 */
public class DbHelper {
    private static String url = "jdbc:mysql://localhost:3306/gcsj";  //���ݿ��ַ
    private static String userName = "root";  //���ݿ��û���
    private static String passWord = "123456";  //���ݿ�����
    private static Connection conn = null;
    public  Connection getConnection(){
        if(null == conn){
            try {
                Class.forName("com.mysql.jdbc.Driver");
            }catch(Exception e){ 
	    		e.printStackTrace();
	    		System.out.println("����MYSQL���ݿ�����ʧ�ܣ�");
		    }try { //ͨ�����������������ȡ���ݿ�����
                conn = DriverManager.getConnection(url, userName, passWord);
        	}catch(Exception e){
            e.printStackTrace();
            System.out.println("��ȡ���ݿ�����ʧ�ܣ�");
        	}
    
       }
		return conn;
    }

    public void closeDB(Statement sta, Connection conn) {
        // �ر����ݿ����ӣ��޽������
        try {
            sta.close();
            conn.close();
        } catch (SQLException e) {

            e.printStackTrace();
        }

    }

    public void closeDB(ResultSet rs, Statement sta, Connection conn) {
        // �ر����ݿ����ӣ��н������
        try {
            rs.close();
            sta.close();
            conn.close();
        } catch (SQLException e) {

            e.printStackTrace();
        }

    }
}
