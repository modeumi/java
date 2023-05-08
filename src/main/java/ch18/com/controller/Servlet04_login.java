package ch18.com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ch18.com.model.DBConnection;
import ch18.com.model.UserInfo;

/**
 * Servlet implementation class Servlet04_login
 */
@WebServlet("/Servlet04_login")
public class Servlet04_login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet04_login() {
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
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		PrintWriter out = response.getWriter();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		UserInfo userinfo = null;
		out.println("<html>");
		out.println("<body>");
		try {
			Connection conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement("select * from info where id = ? ");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			RequestDispatcher rd = request.getRequestDispatcher("Servlet03");
			RequestDispatcher rd2 = request.getRequestDispatcher("ServletIdFail");
			RequestDispatcher rd3 = request.getRequestDispatcher("ServletPwFail");
			if(rs.next()) {
				if(pw.equals(rs.getString("pass"))){
					userinfo = new UserInfo().setId(rs.getString("id"))
											.setPw(rs.getString("pass"))
											.setName(rs.getString("name"));
//					out.println("id : " + userinfo.getId() + ", name : " + userinfo.getName());
//					out.println("<br><b> 인증되었습니다. </b>");
					rd.forward(request, response);
					HttpSession session = request.getSession();
					session.setAttribute("id",userinfo.getId() );
				}else {
//					out.println("pw x");
					rd3.forward(request, response);
				}
			}else {
//				out.println("id x");
				rd2.forward(request, response);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				/*if(stmt != null) stmt.close();*/
				if(pstmt != null) pstmt.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
			out.println("</body>");
			out.println("</html>");
			out.close();
		}
	}
	

}
