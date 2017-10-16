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
		//1����ȡ�ͻ�������
		GlyInfo gly=new GlyInfo();
		/*String userName = MyTools.toChinese(request.getParameter("gly_oname"));*///ȡ�þ��û���
		String password = request.getParameter("gly_opassword");//ȡ�þ�����
		//int id = (int)request.getSession().getAttribute("id");//��gly_nname����Attribute��
		//String nname = (String)request.getSession().getAttribute("nname");//��gly_nname����Attribute��
		//String npassword = (String)request.getSession().getAttribute("npassword");//��gly_npassword����Attribute��
		//String num = (String)request.getSession().getAttribute("num");//��gly_num����Attribute��
		//int sex = (int)request.getSession().getAttribute("sex");//��gly_sex����Attribute��
		boolean canUpdate = beanDB.updateSuccess(/*userName,*/ password);
		if(canUpdate){//������֤�����ѡ��
			gly.setGlyID(MyTools.strToint(request.getParameter("id")));
			/*gly.setGlyNum(request.getParameter("gly_num"));*/
			gly.setGlyName(MyTools.toChinese(request.getParameter("gly_nname")));
			/*gly.setGlySex(MyTools.strToint(request.getParameter("gly_sex")));*/
			gly.setGlyPwd(request.getParameter("gly_npassword"));
			//2���������ݴ���
			int count=beanDB.updateGly(gly);//����ҵ����Bean�ķ�����������
			JOptionPane.showMessageDialog(null,"���˺Ż�������Ӧ�óɹ���","��ϲ��",JOptionPane.ERROR_MESSAGE);
			response.sendRedirect(request.getContextPath()+"/guanli/glylogin.jsp" );//�ض���
		}else{
			JOptionPane.showMessageDialog(null,"���������","���棡",JOptionPane.ERROR_MESSAGE);
			response.sendRedirect(request.getContextPath()+"/guanli/update.jsp");

		}

		//gly.setGlyID(id);
		//gly.setGlyNum(num);
		//gly.setGlyName(nname);
		//gly.setGlySex(sex);
		//gly.setGlyPwd(npassword);
		//2���������ݴ���
		/*int count=beanDB.updateGly(gly);*///����ҵ����Bean�ķ�����������
		//3����ͻ���������Ӧ

		/*response.sendRedirect(request.getContextPath()+"/guanli/glylogin.jsp" );*///�ض���
	}

}
