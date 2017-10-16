package com.test;

import java.io.IOException;



import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.test.TestInfo;
/**
 * Servlet implementation class Subject11
 */
@WebServlet("/Subject11")
public class Subject11 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Subject11() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		TestInfo test=new TestInfo();
		
		Test1DB beanDB=new Test1DB();
		
	
		String a= request.getParameter("name");
		System.out.println(a);
		test.setName(a);
		String name1=test.getName();
		System.out.println(name1);
		request.getSession().setAttribute("testList", beanDB.getAll(request.getParameter("name")));
		request.getSession().setAttribute("name",a);
		response.sendRedirect(request.getContextPath()+"/test.jsp");
		
		
		
	}

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		doGet(request, response);
	}

}
