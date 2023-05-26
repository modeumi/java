package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.DaoImpl;
import model.Member;

/**
 * Servlet implementation class JoinServlet
 */
@WebServlet("/JoinServlet")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JoinServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		DaoImpl memberinfoDao = new DaoImpl();
		String domain = request.getParameter("domain");
		String result = domain.replaceAll("\\s", "");
		  String phone = request.getParameter("phone1") + "-" + request.getParameter("phone2") + "-" + request.getParameter("phone3");
		    String email = request.getParameter("email" ) + "@" + result;		
		try {
			memberinfoDao.insert(new Member()
					.setId(request.getParameter("id"))
					.setPw(request.getParameter("pw"))
					.setName(request.getParameter("name"))
					.setEmail(email)
					.setPhone(phone)
					.setNickname(request.getParameter("nickname")));
			String alertScript = "<script>alert('회원 가입이 완료되었습니다!');"
					+ "window.location.href = 'login.jsp';</script>";
				response.getWriter().println(alertScript);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
