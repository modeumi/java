package pokemon.com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class OpenMember
 */
@WebServlet("/OpenMember")
public class OpenMember extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public OpenMember() {
		super();
		Connection conn;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		PokeUser userInfo = new PokeUser();
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement("SELECT * FROM pokemon");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				userInfo.setId(rs.getString("id"));
				userInfo.setPass(rs.getString("pass"));
				userInfo.setName(rs.getString("name"));
				userInfo.setPhone(rs.getString("phone"));
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}

		}
	}
	// TODO Auto-generated constructor stub

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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
				doGet(request, response);
	}
}