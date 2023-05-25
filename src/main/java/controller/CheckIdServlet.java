package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.DaoImpl;

/**
 * Servlet implementation class CheckIdServlet
 */
@WebServlet("/CheckIdServlet")
public class CheckIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckIdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		HttpSession session = request.getSession();
		DaoImpl daoimpl = new DaoImpl();
		String id= request.getParameter("idcheck");
		int check = daoimpl.Check_id(id);
		// 1이면 중복 2면 미중복 
		if (check == 1) {
			session.setAttribute("idcheck", "false");
			session.setAttribute("idfield", id);
			 String alertScript = "<script>alert('중복된 아이디 입니다.');" + 
			"location.reload();"+
			"window.history.back();document.getElementById('idcheck').value = '"+id+"';</script>";
		        response.getWriter().println(alertScript);
		}
		if (check == 2) {
			session.setAttribute("idcheck", "true");
			session.setAttribute("idfield", id);
			String alertScript = "<script>alert('사용 가능한 아이디 입니다.');" +
		"window.location.href = 'Idcheck.jsp';"+
		"document.getElementById('idcheck').value = '"+id+"';</script>";
	        response.getWriter().println(alertScript);
		}
		
	}

}
