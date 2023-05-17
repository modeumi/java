package Dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import model.DBConnection;
import model.Item;
import model.Member;

public class DaoImpl {

	public Member selectOne(String id) throws Exception {
		Connection conn = DBConnection.getConnection(); // List<Member> templet(){}
		Statement stmt = null;
		ResultSet rs = null;
		Member member = null;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT ID, PASSWD, NAME FROM MEMBER WHERE ID ='" + id + "'");
			if (rs.next()) {
				member = new Member()
						.setId(rs.getString("ID"))
						.setPw(rs.getString("PASSWD"))
						.setName(rs.getString("NAME"))
						.setNickname(rs.getString("nickname"));
			}
		} catch (Exception e) {
			throw e;
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (stmt != null)
					rs.close();
				if (conn != null)
					rs.close();
			} catch (Exception e) {
			}
		}
		return member;
	}

	public Member exist(String id, String pw) throws Exception {
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Member member = null;
		try {
			pstmt = conn.prepareStatement("SELECT * FROM MEMBER WHERE ID =? AND PASSWD=?");
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				member = new Member().setId(rs.getString(1))
						.setNickname(rs.getString(2))
						.setPw(rs.getString(3))
						.setName(rs.getString(4))
						.setEmail(rs.getString(5))
						.setPhone(rs.getString(6));
				return member;
			}
		} catch (Exception e) {
			throw e;
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					rs.close();
				if (conn != null)
					rs.close();
			} catch (Exception e) {
			}
		}
		return member;
	}

	public int insert(Member Member) throws Exception {
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement("INSERT INTO MEMBER(ID, nickname ,PASSWD, NAME, EMAIL, PHONE)" + "VALUES(?,?,?,?,?,?)");
			pstmt.setString(1, Member.getId());
			pstmt.setString(2, Member.getNickname());
			pstmt.setString(3, Member.getPw());
			pstmt.setString(4, Member.getName());
			pstmt.setString(5, Member.getEmail());
			pstmt.setString(6, Member.getPhone());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			throw e;
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}

		}
	} 

	public Member update(Member Member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement("UPDATE MEMBER SET PASSWD=?, NAME=?, EMAIL=?, PHONE=?,nickname =? WHERE ID=?");
			pstmt.setString(1, Member.getPw());
			pstmt.setString(2, Member.getName());
			pstmt.setString(3, Member.getEmail());
			pstmt.setString(4, Member.getPhone());
			pstmt.setString(5, Member.getNickname());
			pstmt.setString(6, Member.getId());
			pstmt.executeUpdate();
			Member member = selectOne(Member.getId());
			return member;
		} catch (Exception e) {
			e.printStackTrace();// throw e;
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
		return Member; // throw e ; 이면 생략
	}

	public int delete(Member Member) throws Exception {
		Connection conn = DBConnection.getConnection();
		Statement stmt = null;
		try {
			stmt = conn.createStatement();
			return stmt.executeUpdate("DELETE FROM MEMBER WHERE ID='" + Member.getId() + "'");
		} catch (Exception e) {
			throw e;
		} finally {
			try {
				if (stmt != null)
					stmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
	}

	public List<Member> selectList() throws Exception {
		Connection conn = DBConnection.getConnection();
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList<Member> Members = null;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT ID, PASSWD, NAME FROM " + " MEMBER ORDER BY NAME ASC");
			Members = new ArrayList<Member>();
			while (rs.next()) {
				Members.add(new Member().setId(rs.getString("ID")).setPw(rs.getString("PASSWD"))
						.setName(rs.getString("NAME")));
			}
		} catch (Exception e) {
			throw e;
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (stmt != null)
					stmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
		return Members;
	}

	public int Idcheck(String id) {
		Connection conn = null;
	    PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = -1;
		String sql = "select id from member where id=?"; 
		try { 
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = 0;
				return result;
			}else {
				result = 1;
				return result;
			}
		}catch (SQLException e) {
			result = 1;
		}finally {
	         try {
	             if (rs != null) rs.close();
	             if (pstmt != null) pstmt.close();
	             if (conn != null) conn.close();
	         }catch (SQLException e) {
	             // error handling
	         }
	     }
	     return result;
	 }

	public Item addcart(int id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Item item = new Item();
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement("select * from item where id = '" + id + "' ");
			rs = pstmt.executeQuery();
			if (rs.next()) {
				item.setId(rs.getInt("id"));
				item.setName(rs.getString("name"));
				item.setImg(rs.getString("image"));
				item.setPrice(rs.getInt("price"));
				return item;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return item;
	}
	public void purchase (Item item,String id,String type) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		LocalDate date = LocalDate.now();
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement("insert into purchase_history values(?,?,?,?,?,?,?,?)");
			pstmt.setDate(1, Date.valueOf(date));
			pstmt.setString(2, id);
			pstmt.setInt(3,item.getId());
			pstmt.setString(4, item.getImg());
			pstmt.setString(5, item.getName());
			pstmt.setInt(6, item.getCount());
			pstmt.setInt(7, item.getPrice());
			pstmt.setString(8, type);
			pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
//	public Review getreview (Review review, int num) {
//		Connection conn = null;
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		try {
//			conn = DBConnection.getConnection();
//			pstmt = conn.prepareStatement("select * from review where itemid = ?");
//			pstmt.setInt(1, num);
//			rs = pstmt.executeQuery();
//			while (rs.next()) {
//				review.setItemid(rs.getInt(2));
//				review.setName(rs.getString(3));
//				review.setText(rs.getString(4));
//				review.set
//				Map<Integer,Review> item_review = hash
//				
//			}
//		}
//	}
	
}
