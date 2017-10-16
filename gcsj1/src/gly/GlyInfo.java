package gly;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class GlyInfo {
	int glyID;
	/*String glyNum;*/
	String glyName;
	String glyPwd;
	/*int glySex;*/
	public int getGlyID() {
		return glyID;
	}
	public void setGlyID(int glyID) {
		this.glyID = glyID;
	}
	/*public String getGlyNum() {
		return glyNum;
	}
	public void setGlyNum(String glyNum) {
		this.glyNum = glyNum;
	}*/
	public String getGlyName() {
		return glyName;
	}
	public void setGlyName(String glyName) {
		this.glyName = glyName;
	}
	/*public int getGlySex() {
		return glySex;
	}
	public void setGlySex(int glySex) {
		this.glySex = glySex;
	}*/
	public String getGlyPwd() {
		return glyPwd;
	}
	public void setGlyPwd(String glyPwd) {
		this.glyPwd = glyPwd;
	}
	
}