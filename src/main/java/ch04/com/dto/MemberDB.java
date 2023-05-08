package ch04.com.dto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import ch04.com.dto.DBAction;

public class MemberDB {
	private static Connection conn;
	private static PreparedStatement pstmt;
	private static ResultSet rs;
	
	
	public int Idcheck (String id) {
		conn = DBAction.getInstance().getConnection();
		pstmt = null;
		rs = null;
		int result = -1;
		String sql = "select id from pokemon where id=?"; 
		try { 
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = 0;
			}else {
				result = 1;
			}
		}catch (SQLException e) {
			result = 1;
		}
		return result;
		}
	
	
	public List<Member> MemberList(){
		conn = DBAction.getInstance().getConnection();
		pstmt = null;
		rs = null;
		List<Member> list = new ArrayList<>();
		String sql = "select * from pokemon";
		try {
			pstmt  = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String name = rs.getString("name");
				String id = rs.getString("id");
				String pass = rs.getString("pass");
				Member member = new Member (name, id, pass);
				list.add(member);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	

	public List<String> IDList(){
		conn = DBAction.getInstance().getConnection();
		pstmt = null;
		rs = null;
		List<String> id = new ArrayList<>();
		String sql = "select id from pokemon";
		try {
			pstmt  = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				id.add(rs.getString("id"));
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return id;
	}
}
