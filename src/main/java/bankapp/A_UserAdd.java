package bankapp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class A_UserAdd {
	private static BankInfo bankInfo;
	private static Connection conn = null;
	private static PreparedStatement pstmt = null;
	private static ResultSet rs = null;

	public static void useradd(addUserRe userRe) {
		List<String> emailList = new ArrayList<>();
		try {
			conn = DBAction.getConnection();
			pstmt = conn.prepareStatement("select email from rebank");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				emailList.add(rs.getString("email"));
			}
			for (String match : emailList) {
				if (!match.equals(userRe.getEmail())) {
					System.out.println("33");
					bankInfo.setEmail(userRe.getEmail());
					bankInfo.setName(userRe.getName());
					bankInfo.setPass(userRe.getPass());
				} else {
					System.out.println("동일한 이메일 존재");
				}
			}
			if (rs.next()) {
				System.out.println("22");
			pstmt =conn.prepareStatement("insert rebank(email,name,pass,balance) values('"+bankInfo.getEmail()+"','"+bankInfo.getName()+"','"+bankInfo.getPass()+"', 0) ");
			pstmt.executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
