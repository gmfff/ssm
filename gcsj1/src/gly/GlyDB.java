package gly;
import java.sql.*;
import java.util.ArrayList;

import common.*;
import gly.GlyInfo;

public class GlyDB {
	private Connection con = null;
	/* 获取所有管理员信息 */
	public ArrayList<GlyInfo> getAll() {
		ResultSet rs=null;
		Statement sql=null;
		ArrayList<GlyInfo> GlyList=new ArrayList<GlyInfo>();
		try {
			con=DBConnection.getConnection();
			sql=con.createStatement();
			//TODO 1 执行查询语句获取所有管理员信息
			rs=sql.executeQuery("SELECT * from manager");
			//TODO 2 循环遍历课程信息结果集，将每条记录保存为一个课程信息对象，并把课程信息对象添加到数组studentList中。
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
			System.out.println("获取所有管理员信息失败！");
		} finally{
			DBConnection.closeConnection();
		}		
		return GlyList;
	}
	/*通过用户名获取指定管理员信息*/
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
			System.out.println("获取指定管理员信息失败！");
		} finally{
			DBConnection.closeConnection();
		}		
		return gly;
	}
	/*通过ID获取指定管理员信息*/
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
			System.out.println("获取指定管理员信息失败！");
		} finally{
			DBConnection.closeConnection();
		}		
		return gly;
	}    
	/* 修改管理员信息 */
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
			System.out.println("修改管理员信息失败！");
		} finally{
			DBConnection.closeConnection();
		}		
		return count;
	}  
	/*登录验证*/
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