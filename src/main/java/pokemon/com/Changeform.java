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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Changeform
 */
@WebServlet("/Changeform")
public class Changeform extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Changeform() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PreparedStatement pstmt = null;
		Connection conn = null;
		ResultSet rs = null;
		HttpSession sessione = request.getSession();
//		PokeUser user = (PokeUser) sessione.getAttribute("log_user");
		String logid = (String) sessione.getAttribute("log_id");
		request.getSession().invalidate();

		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement("SELECT * FROM pokemon where id = '"+logid+"'");
			rs = pstmt.executeQuery();
			while (rs.next()) {
					HttpSession pokelogin = request.getSession();
					PokeUser userInfo = new PokeUser();
					
					userInfo.setId(rs.getString("id"));
					String Session_id = rs.getString("id");
					pokelogin.setAttribute("log_id", Session_id);
					
					userInfo.setPass(rs.getString("pass"));
					String Session_pass = rs.getString("pass");
					pokelogin.setAttribute("log_pass", Session_pass);
					
					userInfo.setName(rs.getString("name"));
					String Session_name = rs.getString("name");
					pokelogin.setAttribute("log_name", Session_name );
					
					userInfo.setPhone(rs.getString("phone"));
					String Session_phone = rs.getString("phone");
					pokelogin.setAttribute("log_phone", Session_phone);
					
					response.sendRedirect("p_UserInfo.jsp");
				}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
			if (rs != null) {rs.close();}
			if (pstmt != null) {pstmt.close();}
			if (conn != null) {conn.close();}
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
