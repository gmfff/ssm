package Examquestion;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class questionaddaction
 */
public class addquestionaction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addquestionaction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		question_con queDB=new question_con();
		//1����ȡ�ͻ����ύ����
		question que=new question();
		que.setQue(request.getParameter("question"));
		que.setSA(request.getParameter("A"));
		que.setSB(request.getParameter("B"));
		que.setSC(request.getParameter("C"));
		que.setSD(request.getParameter("D"));
		que.setAns(request.getParameter("answer"));
		que.setWeight(request.getParameter("weight"));
		que.setSubject(request.getParameter("subject"));
		if(request.getParameter("subject").equals("��������ͳ��")){
			que.setKemu("1");
		}else if(request.getParameter("subject").equals("WebӦ�ó������")){
			que.setKemu("2");
		}
		//2������ͻ����ύ����
		queDB.insert(que);		    
		//3����ͻ���������Ӧ 
		response.sendRedirect(request.getContextPath()+"/movetolist");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
