package bankapp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class A_Login {
	HttpServletRequest request;
	HttpServletResponse response;
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	BankInfo bankinfo;
	
	public void login (String mail, String pass) {
		
		HttpSession login = request.getSession();
		try {
			conn =DBAction.getConnection();
			pstmt = conn.prepareStatement("select * from rebank where email = '"+mail+"' and pass = '"+pass+"'");
			rs = pstmt.executeQuery();
			if (rs.next()) {
				String Email = rs.getString("email");
				String Pass = rs.getString("pass");
				String Name = rs.getString("name");
				int Bal = rs.getInt("balance");
				bankinfo.setEmail(Email);
				bankinfo.setPass(Pass);
				bankinfo.setName(Name);
				bankinfo.setBalance(Bal);
				login.setAttribute("info", bankinfo);
				login.setAttribute("log_id", Email);
				login.setAttribute("log_pass", Pass);
				login.setAttribute("log_name", Name);
				login.setAttribute("log_bal", Bal);
				System.out.println("로그인 성공");
			}else if (!rs.next()) {
				System.out.println("입력 정보 일치x");
			}
		}catch (Exception e) {
			System.out.println("입력 정보 일치x");

//			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
