package com.test;

import java.io.IOException;


import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.TestInfo;

import common.DBConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
/**
 * Servlet implementation class JisuanServlet
 */
@WebServlet("/JisuanServlet")
public class JisuanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JisuanServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String[] a = null;
		String b[][]=null;
		int success=0;
	
	
		HttpSession session =request.getSession();
	
		String ss=(String)session.getAttribute("name");
		Test1DB beanDB=new Test1DB();
		request.getSession().setAttribute("testList",beanDB.getAll(ss));
		System.out.println(ss);
		ArrayList<TestInfo> testList=(ArrayList<TestInfo>)session.getAttribute("testList");
		int count=testList.size();
		for(int i=0;i<count;i++){
			int j=i+1;
			
			TestInfo test=testList.get(i);
			a=request.getParameterValues(test.getId()+"answer");
			
			
			
			System.out.println(test.getAnswer());
			String c=test.getAnswer();
			
			if(c.equals(a[0])){
				success++;
			}
			
			
		}
		
		request.getSession().setAttribute("mark", success);
		System.out.println(success);
		
		 

	    
	
		
		response.sendRedirect(request.getContextPath()+"/result.jsp");
		
		
	}

}
