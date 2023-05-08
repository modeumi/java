package bankapp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class A_PassUpdate {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	BankInfo bankinfo;
	
	public void passupdate(BankInfo bankinfo) {
		try {
			conn = DBAction.getConnection();
			pstmt = conn.prepareStatement("update rebank set pass = '" + bankinfo.getPass() + "' where email = '"
					+ bankinfo.getEmail() + "'");
			pstmt.executeUpdate();
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
