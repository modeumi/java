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
 * Servlet implementation class MemberDelete
 */
@WebServlet("/MemberDelete")
public class MemberDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberDelete() {
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
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		try {
			DaoImpl infoDao = new DaoImpl();
			infoDao.delete(new Member()
			.setId(request.getParameter("id"))
			.setPw(request.getParameter("pw"))
			.setName(request.getParameter("name")));
			HttpSession session = request.getSession();
			 session.invalidate();
			 String alertScript = "<script>alert('탈퇴 되었습니다. 그 동안 이용해주셔서 감사합니다.');"
						+ "window.location.href = 'home.jsp';</script>";
			 response.getWriter().println(alertScript);
//			 RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
//		     rd.forward(request, response);
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
