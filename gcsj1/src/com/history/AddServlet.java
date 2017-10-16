package com.history;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.history.operate;
import com.history.scoresInfo;

/**
 * Servlet implementation class AddServlet
 */
@WebServlet("/AddServlet")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int id=Integer.parseInt(request.getParameter("id")); 
		String username = request.getParameter("username");
        String subjectname = request.getParameter("subjectname");
        float score = Float.parseFloat(request.getParameter("score"));
        String endtime = request.getParameter(request.getParameter("endtime"));
        scoresInfo scores = new scoresInfo();
        scores.setId(id);
        scores.setUsername(new String(username.getBytes("ISO-8859-1"),"UTF-8"));  //转值，中文需要转换为utf-8
        scores.setSubjectname(new String(subjectname.getBytes("ISO-8859-1"),"UTF-8"));
        scores.setScore(score);
        scores.setEndtime(new String(endtime.getBytes("ISO-8859-1"),"UTF-8"));
        operate dao = new operate();
        dao.addscores(scores);
        request.getRequestDispatcher("ShowServlet").forward(request, response);
	}

}
