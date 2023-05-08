package bankapp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class A_UserList {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	BankInfo bankinfo;

	public List<BankInfo> userlist (){
		List<BankInfo> info = new ArrayList<>();
		try {
			conn = DBAction.getConnection();
			pstmt = conn.prepareStatement("select * from rebank");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String email = rs.getString(1);
				String pass = rs.getString(2);
				String name = rs.getString(3);
				int balance = rs.getInt(4);
				BankInfo Bankinfo = new BankInfo(email,name,pass,balance);
				info.add(Bankinfo);
			}
		} catch (Exception e) {
			e.printStackTrace();
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
		return info;
	}
}
