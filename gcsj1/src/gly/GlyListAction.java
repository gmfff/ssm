package gly;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gly.GlyDB;

public class GlyListAction extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request,response); 
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		GlyDB beanDB=new GlyDB();
		request.getSession().setAttribute("GlyList",beanDB.getAll());
		response.sendRedirect(request.getContextPath()+"/guanli/updatemg.jsp");

	}

}
