package Examquestion;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class fixquestionaction
 */
public class fixquestionaction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public fixquestionaction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		question_con queDB=new question_con();
		question que=new question();
		
		que.setId(Integer.valueOf(request.getParameter("id")));
		que.setQue(request.getParameter("Que"));
		que.setSA(request.getParameter("SA"));
		que.setSB(request.getParameter("SB"));
		que.setSC(request.getParameter("SC"));
		que.setSD(request.getParameter("SD"));
		que.setAns(request.getParameter("Ans"));
		que.setWeight(request.getParameter("Weight"));
		que.setSubject(request.getParameter("subject"));
		if(request.getParameter("subject").equals("概率数理统计")){
			que.setKemu("1");
		}else if(request.getParameter("subject").equals("Web应用程序设计")){
			que.setKemu("2");
		}	    
		queDB.update(que);
		
		request.getSession().setAttribute("queList",queDB.getAll());
		response.sendRedirect(request.getContextPath()+"/Question/xuanze_list.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
