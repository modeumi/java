package bankapp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class A_Transper {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	BankInfo bankinfo;
	
	public void transfer (String email, int money) {
		try {
			conn =DBAction.getConnection();
			pstmt = conn.prepareStatement("select balance from rebank where email = '"+email+"'");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				pstmt = conn.prepareStatement("update rebank set balace = '" + rs.getInt("balance")+money +"' where email ='"+email+"'");
				pstmt.executeUpdate();
				bankinfo.withdraw(money);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
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
