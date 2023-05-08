package pokemon.com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class ChangeServlet
 */
@WebServlet("/ChangeServlet")
public class ChangeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangeServlet() {
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
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession sessione = request.getSession();
//		PokeUser user = (PokeUser) sessione.getAttribute("log_user");
		String logid = (String) sessione.getAttribute("log_id");
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement("UPDATE POKEMON SET PASS =?, NAME =?, PHONE =? WHERE ID = '" + logid + "'");
			pstmt.setString(1, request.getParameter("pass"));
			pstmt.setString(2, request.getParameter("name"));
			pstmt.setString(3, request.getParameter("phone"));
			pstmt.executeUpdate();
			response.sendRedirect("Changeform");
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
			if (pstmt != null) { pstmt.close();}
			if (conn !=null ) { conn.close();}
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

}
