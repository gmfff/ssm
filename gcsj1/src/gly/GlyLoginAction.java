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

		String userName = MyTools.toChinese(request.getParameter("gly_name"));//取得用户名
		String password = request.getParameter("gly_password");//取得密码
		request.getSession().setAttribute("user", request.getParameter("gly_name"));//将user放在Attribute中
		GlyDB beanDB = new GlyDB();//构建数据库对象
		boolean canLogin = beanDB.loginSuccess(userName, password);
		if(canLogin){//根据登陆情况，跳转页面
			response.sendRedirect(request.getContextPath()+"/guanli/main.jsp");
		}else{
			JOptionPane.showMessageDialog(null,"账号或密码错误！","警告！",JOptionPane.ERROR_MESSAGE);
			response.sendRedirect(request.getContextPath()+"/guanli/glylogin.jsp");

		}

	}

}
