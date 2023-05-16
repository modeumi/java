package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.DaoImpl;
import model.Member;

/**
 * Servlet implementation class Update
 */
@WebServlet(name = "UpdateServlet", urlPatterns = { "/UpdateServlet" })
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); 
	    response.setContentType("text/html; charset=utf-8"); 
	    HttpSession session = request.getSession();
	    
		try {
			DaoImpl userinfoDao = new DaoImpl();
			Member member = userinfoDao.update(new Member()
					.setPw(request.getParameter("pw"))
					.setName(request.getParameter("name"))
					.setEmail(request.getParameter("email"))
					.setPhone(request.getParameter("phone1"))
					.setId(request.getParameter("id"))
					.setNickname(request.getParameter("nickname")));
			    session.setAttribute("log_id", member.getId());
			    session.setAttribute("log_pw", member.getPw());
			    session.setAttribute("log_name", member.getName());
			    session.setAttribute("log_nickname", member.getNickname());
			    RequestDispatcher rd = request.getRequestDispatcher("Mypage2.jsp");
		        rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
