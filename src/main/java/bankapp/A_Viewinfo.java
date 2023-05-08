package bankapp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class A_Viewinfo {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	BankInfo bankinfo;
	A_Printer printer;
	public BankInfo viewinfo(String email) {
		try {
			conn = DBAction.getConnection();
			pstmt = conn.prepareStatement("select * from rebank where email = '" + email + "'");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				BankInfo bankinfo = new BankInfo(rs.getString("email"),rs.getString("pass"),
						rs.getString("name"),rs.getInt("balance") );
				printer.printer(bankinfo);
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
		return bankinfo;
	}
}
