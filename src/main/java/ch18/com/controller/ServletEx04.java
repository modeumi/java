package ch18.com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ch18.com.model.*;
/**
 * Servlet implementation class ServletEx04
 */
@WebServlet("/ServletEx04")
public class ServletEx04 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection conn;
@Override
	public void init() throws ServletException {
		super.init();
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/JSPBOOKDB?autoReconnect=true&verifyServerCertificate=false&useSSL=true";
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, "root", "java");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void destroy() {
		try {
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletEx04() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");	
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		PrintWriter out = response.getWriter();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		UserInfo userinfo = null;
		out.println("<html>");
		out.println("<body>");
		try {
			pstmt = conn.prepareStatement("SELECT * FROM INFO WHERE ID =?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			RequestDispatcher rd = request.getRequestDispatcher("ServletEx03");
			RequestDispatcher rd2 = request.getRequestDispatcher("ServletExIDFail");
			RequestDispatcher rd3 = request.getRequestDispatcher("ServletExPassFail");
			if (rs.next()) {
				if(pass.equals(rs.getString("pass"))) {
					userinfo = new UserInfo();
					userinfo.setId(rs.getString("ID"));
					userinfo.setPw(rs.getString("pass"));
					userinfo.setName(rs.getString("name"));
//					out.println("<br><b>인증 성공</b>");
					HttpSession session = request.getSession();
					session.setAttribute("id", userinfo.getId());
//					rd.include(request, response);
					rd.forward(request, response);
				}else {
					out.println("pass wrong");
					rd3.include(request, response);
				}
			}else {
				out.println("ID wrong");
				rd2.include(request, response);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			out.println("</table>");
			out.println("</body>");
			out.println("</html>");
			out.close();
		}
	}

}
