package Dao;

import java.sql.Array;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import model.DBConnection;
import model.Item;
import model.ItemHistory;
import model.Member;
import model.Review;

public class DaoImpl {

	public Member selectOne(String id) throws Exception {
		Connection conn = DBConnection.getConnection(); // List<Member> templet(){}
		Statement stmt = null;
		ResultSet rs = null;
		Member member = null;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT * FROM MEMBER WHERE ID ='" + id + "'");
			if (rs.next()) {
				member = new Member().setId(rs.getString("ID")).setPw(rs.getString("PASSWD"))
						.setName(rs.getString("NAME")).setNickname(rs.getString("nickname"))
						.setPhone(rs.getString("phone")).setEmail(rs.getString("email")).setPoint(rs.getInt("point"));
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
				member = new Member().setId(rs.getString(1)).setNickname(rs.getString(2)).setPw(rs.getString(3))
						.setName(rs.getString(4)).setEmail(rs.getString(5)).setPhone(rs.getString(6))
						.setPoint(rs.getInt(7));
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
			pstmt = conn.prepareStatement(
					"INSERT INTO MEMBER(ID, nickname ,PASSWD, NAME, EMAIL, PHONE)" + "VALUES(?,?,?,?,?,?)");
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
			pstmt = conn
					.prepareStatement("UPDATE MEMBER SET PASSWD=?, NAME=?, EMAIL=?, PHONE=?,nickname =? WHERE ID=?");
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
			} else {
				result = 1;
				return result;
			}
		} catch (SQLException e) {
			result = 1;
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
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
				item.setUrl(rs.getString("url"));
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

	public void Point(int point, String id) {
		Connection conn = null;
		PreparedStatement pstmt1 = null;
		PreparedStatement pstmt2 = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.getConnection();
			pstmt1 = conn.prepareStatement("select point from member where id = ?");
			pstmt1.setString(1, id);
			rs = pstmt1.executeQuery();
			if (rs.next()) {
				pstmt2 = conn.prepareStatement("update member set point = ? where id = ?");
				pstmt2.setInt(1, rs.getInt("point") + point);
				pstmt2.setString(2, id);
				pstmt2.executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt2 != null) {
					pstmt1.close();
				}
				if (pstmt1 != null) {
					pstmt1.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	public void purchase(Item item, String id, String type) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		LocalDate date = LocalDate.now();
		int point = item.getCount() * item.getPrice() / 100;
		Point(point, id);
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement("insert into purchase_history values(?,?,?,?,?,?,?,?,?,?)");
			pstmt.setDate(1, Date.valueOf(date));
			pstmt.setString(2, id);
			pstmt.setInt(3, item.getId());
			pstmt.setString(4, item.getImg());
			pstmt.setString(5, item.getName());
			pstmt.setInt(6, item.getCount());
			pstmt.setInt(7, item.getPrice());
			pstmt.setString(8, type);
			pstmt.setInt(9, point);
			pstmt.setString(10, "N");
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
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

	public Map<Integer, ItemHistory> history(String id) {
		Connection conn = null;
		PreparedStatement pstmt1 = null;
		PreparedStatement pstmt2 = null;
		ResultSet rs = null;
		ResultSet rs2 = null;
		Map<Integer, ItemHistory> item = new HashMap<>();
		int ordernum = 0;
		try {
			conn = DBConnection.getConnection();
			pstmt1 = conn.prepareStatement("select * from purchase_history where userid = ?");
			pstmt2 = conn.prepareStatement("select * from item where id = ?");
			
			pstmt1.setString(1, id);
			rs = pstmt1.executeQuery();
			
			while (rs.next()) {
				ItemHistory items = new ItemHistory();
				ordernum = rs.getInt("order");
				pstmt2.setString(1, rs.getString("itemid"));
				rs2 = pstmt2.executeQuery();
				
				if (rs2.next()) {
					items.setUrl(rs2.getString("url"));
				}
					items.setId(rs.getInt("itemid"));
					items.setImg(rs.getString("image"));
					items.setName(rs.getString("itemname"));
					items.setCount(rs.getInt("count"));
					items.setPrice(rs.getInt("price"));
					items.setDate(rs.getDate("date"));
					items.setType(rs.getString("type"));
					items.setReview(rs.getString("review"));
					
					item.put(ordernum, items);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs2 != null) {
					rs2.close();
				}
				if (rs != null) {
					rs.close();
				}
				if (pstmt2 != null) {
					pstmt2.close();
				}
				if (pstmt1 != null) {
					pstmt1.close();
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

	public Review write (Review review) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		LocalDate date = LocalDate.now();
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement("insert into review(ordernum,itemid,name,image,text,star,date) value (?,?,?,?,?,?,?) ");
			pstmt.setInt(1, review.getOrdernum());
			pstmt.setInt(2, review.getItemid());
			pstmt.setString(3, review.getName());
			pstmt.setString(4, review.getText());
			pstmt.setArray(5, (Array) review.getImg());
			pstmt.setDouble(6, review.getStar());
			pstmt.setDate(7, Date.valueOf(date));
			review = getreview(review.getOrdernum());
			return review;
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
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
		return review;
	}
	
	
	public Review getreview (int num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Review review = new Review();
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement("select * from review where ordernum = ?");
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				review.setOrdernum(rs.getInt("ordernum"));
				review.setItemid(rs.getInt("itemid"));
				review.setName(rs.getString("name"));
				review.setText(rs.getString("text"));
				review.setImg((ArrayList<String>) rs.getArray("image"));
				review.setStar(rs.getDouble("star"));
				review.setDate(rs.getDate("date"));
				return review;
			}
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
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
		return review;
	}

}
