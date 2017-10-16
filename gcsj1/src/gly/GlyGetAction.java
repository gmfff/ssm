package gly;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gly.GlyDB;
import gly.GlyInfo;

public class GlyGetAction extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		GlyDB beanDB=new GlyDB();
		//1����ȡ�ͻ�������
		int id=Integer.parseInt(request.getParameter("id"));
		//2���������ݴ���
		GlyInfo gly=beanDB.getGlyByID(id);
		request.getSession().setAttribute("glyinfo", gly);
	 	//3����ͻ���������Ӧ
		response.sendRedirect(request.getContextPath()+"/guanli/update.jsp" );//�ض���
	}

}
