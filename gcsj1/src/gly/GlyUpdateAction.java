package gly;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import common.MyTools;

public class GlyUpdateAction extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request,response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("gbk");
		response.setContentType("text/html;charset=gbk");
		GlyDB beanDB=new GlyDB();
		//1、获取客户端请求
		GlyInfo gly=new GlyInfo();
		/*String userName = MyTools.toChinese(request.getParameter("gly_oname"));*///取得旧用户名
		String password = request.getParameter("gly_opassword");//取得旧密码
		//int id = (int)request.getSession().getAttribute("id");//将gly_nname放在Attribute中
		//String nname = (String)request.getSession().getAttribute("nname");//将gly_nname放在Attribute中
		//String npassword = (String)request.getSession().getAttribute("npassword");//将gly_npassword放在Attribute中
		//String num = (String)request.getSession().getAttribute("num");//将gly_num放在Attribute中
		//int sex = (int)request.getSession().getAttribute("sex");//将gly_sex放在Attribute中
		boolean canUpdate = beanDB.updateSuccess(/*userName,*/ password);
		if(canUpdate){//根据验证情况，选择
			gly.setGlyID(MyTools.strToint(request.getParameter("id")));
			/*gly.setGlyNum(request.getParameter("gly_num"));*/
			gly.setGlyName(MyTools.toChinese(request.getParameter("gly_nname")));
			/*gly.setGlySex(MyTools.strToint(request.getParameter("gly_sex")));*/
			gly.setGlyPwd(request.getParameter("gly_npassword"));
			//2、进行数据处理
			int count=beanDB.updateGly(gly);//调用业务处理Bean的方法处理数据
			JOptionPane.showMessageDialog(null,"新账号或新密码应用成功！","恭喜！",JOptionPane.ERROR_MESSAGE);
			response.sendRedirect(request.getContextPath()+"/guanli/glylogin.jsp" );//重定向
		}else{
			JOptionPane.showMessageDialog(null,"旧密码错误！","警告！",JOptionPane.ERROR_MESSAGE);
			response.sendRedirect(request.getContextPath()+"/guanli/update.jsp");

		}

		//gly.setGlyID(id);
		//gly.setGlyNum(num);
		//gly.setGlyName(nname);
		//gly.setGlySex(sex);
		//gly.setGlyPwd(npassword);
		//2、进行数据处理
		/*int count=beanDB.updateGly(gly);*///调用业务处理Bean的方法处理数据
		//3、向客户端做出响应

		/*response.sendRedirect(request.getContextPath()+"/guanli/glylogin.jsp" );*///重定向
	}

}
