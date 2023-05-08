package bankapp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class A_Updatemoney {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	BankInfo bankinfo;
	A_Printer printer;
	public void depositmoney (String email, int balance) {
		bankinfo.deposit(balance);
		try {
			conn = DBAction.getConnection();
			pstmt = conn.prepareStatement("update rebank set balance = '" + bankinfo.getBalance() + "' where email = '"
					+ email + "'");
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
	public void withdrawmoney (String email, int balance) {
		bankinfo.withdraw(balance);
		try {
			conn = DBAction.getConnection();
			pstmt = conn.prepareStatement("update rebank set balance = '" + bankinfo.getBalance() + "' where email = '"
					+ email + "'");
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
