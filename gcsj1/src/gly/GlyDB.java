package gly;
import java.sql.*;
import java.util.ArrayList;

import common.*;
import gly.GlyInfo;

public class GlyDB {
	private Connection con = null;
	/* ��ȡ���й���Ա��Ϣ */
	public ArrayList<GlyInfo> getAll() {
		ResultSet rs=null;
		Statement sql=null;
		ArrayList<GlyInfo> GlyList=new ArrayList<GlyInfo>();
		try {
			con=DBConnection.getConnection();
			sql=con.createStatement();
			//TODO 1 ִ�в�ѯ����ȡ���й���Ա��Ϣ
			rs=sql.executeQuery("SELECT * from manager");
			//TODO 2 ѭ�������γ���Ϣ���������ÿ����¼����Ϊһ���γ���Ϣ���󣬲��ѿγ���Ϣ������ӵ�����studentList�С�
			while(rs.next()){
				GlyInfo gly=new GlyInfo();
				gly.setGlyID(rs.getInt("id"));
				/*gly.setGlyNum(rs.getString("Num"));*/
				gly.setGlyName(rs.getString("name"));
				/*gly.setGlySex(rs.getInt("Sex"));*/
				GlyList.add(gly);	    		
			}  
			rs.close();
			sql.close();
		} catch (Exception e) {
			System.out.println("��ȡ���й���Ա��Ϣʧ�ܣ�");
		} finally{
			DBConnection.closeConnection();
		}		
		return GlyList;
	}
	/*ͨ���û�����ȡָ������Ա��Ϣ*/
	public GlyInfo getGlyByName(String name) {
		ResultSet rs=null;
		PreparedStatement pStmt=null; 
		GlyInfo gly=null;
		try {
			con=DBConnection.getConnection();
			pStmt = con.prepareStatement("SELECT * FROM manager where name=?");
			pStmt.setString(1,name);		
			rs = pStmt.executeQuery();
			if(rs.next()){
				gly=new GlyInfo();
				gly.setGlyID(rs.getInt("id"));
				/*gly.setGlyNum(rs.getString("Num"));*/
				gly.setGlyName(rs.getString("name"));
				/*gly.setGlySex(rs.getInt("Sex"));*/
			} 
			rs.close();
			pStmt.close();

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("��ȡָ������Ա��Ϣʧ�ܣ�");
		} finally{
			DBConnection.closeConnection();
		}		
		return gly;
	}
	/*ͨ��ID��ȡָ������Ա��Ϣ*/
	public GlyInfo getGlyByID(int id) {
		ResultSet rs=null;
		PreparedStatement pStmt=null; 
		GlyInfo gly=null;
		try {
			con=DBConnection.getConnection();
			pStmt = con.prepareStatement("SELECT * FROM manager where id=?");
			pStmt.setInt(1,id);		
			rs = pStmt.executeQuery();
			if(rs.next()){
				gly=new GlyInfo();
				gly.setGlyID(rs.getInt("id"));
				/*gly.setGlyNum(rs.getString("Num"));*/
				gly.setGlyName(rs.getString("name"));
				/*gly.setGlySex(rs.getInt("Sex"));*/
			} 
			rs.close();
			pStmt.close();

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("��ȡָ������Ա��Ϣʧ�ܣ�");
		} finally{
			DBConnection.closeConnection();
		}		
		return gly;
	}    
	/* �޸Ĺ���Ա��Ϣ */
	public int updateGly(GlyInfo gly) {
		PreparedStatement pStmt=null; 
		int count=0;
		try {
			con=DBConnection.getConnection();
			pStmt = con.prepareStatement("update manager set name=?,Password=? where id=?");
			/*pStmt.setString(1,gly.getGlyNum());*/
			pStmt.setString(1,gly.getGlyName());
			/*pStmt.setInt(3,gly.getGlySex());*/
			pStmt.setString(2,gly.getGlyPwd());
			pStmt.setInt(3,gly.getGlyID());
			count=pStmt.executeUpdate();
			pStmt.close();

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("�޸Ĺ���Ա��Ϣʧ�ܣ�");
		} finally{
			DBConnection.closeConnection();
		}		
		return count;
	}  
	/*��¼��֤*/
	public boolean loginSuccess(String userName,String password){
		boolean returnValue = false;
		String sql = "SELECT * FROM manager";
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try{
			conn = DBConnection.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				String userNameInDB = rs.getString("name");
				String passwordInDB = rs.getString("Password");
				if(userNameInDB.equals(userName) &&
						passwordInDB.equals(password)){
					returnValue = true;
					break;
				}
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally{
			DBConnection.closeConnection();
		}

		return returnValue;

	}
	public boolean updateSuccess(/*String userName1,*/String password1){
		boolean returnValue1 = false;
		String sql = "SELECT * FROM manager";
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try{
			conn = DBConnection.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				/*String userNameInDB = rs.getString("name");*/
				String passwordInDB = rs.getString("Password");
				if(/*userNameInDB.equals(userName1) &&*/
						passwordInDB.equals(password1)){
					returnValue1 = true;
					break;
				}
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally{
			DBConnection.closeConnection();
		}

		return returnValue1;

	}
}