package pokemon.com;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		Connection conn;
		PreparedStatement pstmt = null;
		ResultSet rsinfo = null;
		ResultSet rslog = null;
		ResultSet rspoke = null;
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String fail_pass = "window.open('a_login_pass_fail.jsp', '', 'width=250,height=200');";
		String fail_id = "window.open('a_login_id_fail.jsp', '', 'width=250,height=200');";
		String location = "location.href = 'a_login.jsp';";
		boolean matchid = false;
		boolean matchpass = false;
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement("SELECT * FROM pokemon");
			rsinfo = pstmt.executeQuery();
			while (rsinfo.next()) {
				if (id.equals(rsinfo.getString("id"))) {
					matchid = true;
					pstmt = conn.prepareStatement("SELECT * FROM pokemon where id = '" + id + "'");
					rslog = pstmt.executeQuery();
					while (rslog.next()) {
						if (pass.equals(rslog.getString("pass"))) {
							pstmt = conn.prepareStatement("select * from pokemon_userinfo where id ='" + id + "'");
							rspoke = pstmt.executeQuery();
							while (rspoke.next()) {
								HttpSession pokelogin = request.getSession();
								matchpass = true;
								PokeUser userInfo = new PokeUser();

								userInfo.setId(rslog.getString("id"));
								String Session_id = rslog.getString("id");
								pokelogin.setAttribute("log_id", Session_id);

								userInfo.setPass(rslog.getString("pass"));
								String Session_pass = rslog.getString("pass");
								pokelogin.setAttribute("log_pass", Session_pass);

								userInfo.setName(rslog.getString("name"));
								String Session_name = rslog.getString("name");
								pokelogin.setAttribute("log_name", Session_name);

								userInfo.setPhone(rslog.getString("phone"));
								String Session_phone = rslog.getString("phone");
								pokelogin.setAttribute("log_phone", Session_phone);
								
								pokelogin.setAttribute("log_background", rspoke.getString("background"));
								pokelogin.setAttribute("log_entry1", rspoke.getString("entry1"));
								pokelogin.setAttribute("log_entry2", rspoke.getString("entry2"));
								pokelogin.setAttribute("log_entry3", rspoke.getString("entry3"));
								pokelogin.setAttribute("log_entry4", rspoke.getString("entry4"));
								pokelogin.setAttribute("log_entry5", rspoke.getString("entry5"));
								pokelogin.setAttribute("log_entry6", rspoke.getString("entry6"));
								pokelogin.setAttribute("log_propile", rspoke.getString("propile"));
								

								pokelogin.setAttribute("log_user", userInfo);
								response.sendRedirect("a_pokemon.jsp");
							}
						}
					}
					if (!matchpass) {
						out.println("<html><head><title></title></head><body>");
						out.println("<script>" + fail_pass + location + "</script>");
						out.println("</body></html>");
						out.close();
					}
				}
			}
			if (!matchid) {
				out.println("<html><head><title></title></head><body>");
				out.println("<script>" + fail_id + location + "</script>");
				out.println("</body></html>");
				out.close();
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (rsinfo != null) {
					rsinfo.close();
				}
				if (rslog != null) {
					rslog.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}

		}
	}
}
