package gly;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.swing.*;

import common.MyTools;

public class GlyLoginAction extends HttpServlet {


	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String userName = MyTools.toChinese(request.getParameter("gly_name"));//ȡ���û���
		String password = request.getParameter("gly_password");//ȡ������
		request.getSession().setAttribute("user", request.getParameter("gly_name"));//��user����Attribute��
		GlyDB beanDB = new GlyDB();//�������ݿ����
		boolean canLogin = beanDB.loginSuccess(userName, password);
		if(canLogin){//���ݵ�½�������תҳ��
			response.sendRedirect(request.getContextPath()+"/guanli/main.jsp");
		}else{
			JOptionPane.showMessageDialog(null,"�˺Ż��������","���棡",JOptionPane.ERROR_MESSAGE);
			response.sendRedirect(request.getContextPath()+"/guanli/glylogin.jsp");

		}

	}

}
