package Dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import model.DBConnection;
import model.Image;
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
				e.printStackTrace();
			}
		}
		return Members;
	}

	public int idcheck(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = -1;
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement("select id from member where id = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = 0;
				return result;
			} else {
				result = 1;
				return result;
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


	public void Insert_Purchase(Item item, String id, String type) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		LocalDate date = LocalDate.now();
		int point = item.getCount() * item.getPrice() / 100;
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(
					"insert into purchase_history(date,userid,itemid,image,itemname,count,price,type,point,review) values(?,?,?,?,?,?,?,?,?,?)");
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

	public Map<Integer, ItemHistory> Select_Purchase(String id) {
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
				ordernum = rs.getInt("ordernum");
				pstmt2.setString(1, rs.getString("itemid"));
				rs2 = pstmt2.executeQuery();

				if (rs2.next()) {
					items.setUrl(rs2.getString("url"));
				}

				items.setItemid(rs.getInt("itemid"));
				items.setImg(rs.getString("image"));
				items.setItemname(rs.getString("itemname"));
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

	public Review write(Review review) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		LocalDate date = LocalDate.now();
		try {
			conn = DBConnection.getConnection();
			pstmt = conn
					.prepareStatement("insert into review(ordernum,itemid,userid,nickname,text,star,date) value (?,?,?,?,?,?,?) ");
			pstmt.setInt(1, review.getOrdernum());
			pstmt.setInt(2, review.getItemid());
			pstmt.setString(3, review.getUserid());
			pstmt.setString(4, review.getNickname());
			pstmt.setString(5, review.getText());
			pstmt.setDouble(6, review.getStar());
			pstmt.setDate(7, Date.valueOf(date));
			review = getreview(review.getOrdernum());
			return review;
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
		return review;
	}

	public Image imageload(int num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Image image = new Image();
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement("select * from image where ordernum =?");
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				image.setImage1(rs.getString(2));
				image.setImage2(rs.getString(3));
				image.setImage3(rs.getString(4));
				return image;
			}
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
		return image;
	}

	public Review firstreview(int num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		PreparedStatement pstmt2 = null;
		ResultSet rs = null;
		ResultSet rs2 = null;
		Review review = new Review();
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement("select * from purchase_history where ordernum = ?");
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				pstmt2 = conn.prepareStatement("select * from member where id = ?");
				pstmt2.setString(1, rs.getString("userid"));
				rs2 = pstmt2.executeQuery();
				if (rs2.next()) {
					review.setNickname(rs2.getString("nickname"));
				}
				review.setOrdernum(num);
				review.setDate(rs.getDate("date"));
				review.setUserid(rs.getString("userid"));
				review.setText("상품은 어떠셧나요? 고객님의 소중한 리뷰 감사합니다!");
				review.setImg(null);
				review.setStar(0);
				review.setItemid(rs.getInt("itemid"));
				return review;
			}
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
		return review;
	}

	public Review getreview(int num) {
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
				Image img = imageload(num);
				review.setOrdernum(rs.getInt("ordernum"));
				review.setItemid(rs.getInt("itemid"));
				review.setUserid(rs.getString("userid"));
				review.setNickname(rs.getString("nickname"));
				review.setText(rs.getString("text"));
				review.setImg(img);
				review.setStar(rs.getInt("star"));
				review.setDate(rs.getDate("date"));
				return review;
			}
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
		return review;
	}

	public ItemHistory OrderToItem(int num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ItemHistory history = new ItemHistory();
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement("select * from purchase_history where ordernum =?");
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				history.setDate(rs.getDate(2));
				history.setUserid(rs.getString(3));
				history.setItemid(rs.getInt(4));
				history.setImg(rs.getString(5));
				history.setItemname(rs.getString(6));
				history.setCount(rs.getInt(7));
				history.setPrice(rs.getInt(8));
				history.setType(rs.getString(9));
				history.setReview(rs.getString(11));
				return history;
			}
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
		return history;
	}

	public void Insert_Review(Review review) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		PreparedStatement pstmt2 = null;
		LocalDate date = LocalDate.now();
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement("insert into review(ordernum,itemid,userid,nickname,text,star,date)"
					+ " values (?,?,?,?,?,?,?)" + " on duplicate key update "
					+ "text = values(text), star = values(star), date = values(date); ");
			pstmt2 = conn.prepareStatement("update purchase_history set review = ? where ordernum = ?  ");

			pstmt.setInt(1, review.getOrdernum());
			pstmt.setInt(2, review.getItemid());
			pstmt.setString(3, review.getUserid());
			pstmt.setString(4, review.getNickname());
			pstmt.setString(5, review.getText());
			pstmt.setInt(6, review.getStar());
			pstmt.setDate(7, Date.valueOf(date));
			pstmt.executeUpdate();
			pstmt2.setString(1, "Y");
			pstmt2.setInt(2, review.getOrdernum());
			pstmt2.executeUpdate();
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

	public void Insert_Image(int order, Image image) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement("insert into image (ordernum, image1,image2,image3)" + " values (?,?,?,?)"
					+ " on duplicate key update "
					+ "image1 = values(image1), image2 = values(image2), image3 = values(image3); ");
			pstmt.setInt(1, order);
			pstmt.setString(2, image.getImage1());
			pstmt.setString(3, image.getImage2());
			pstmt.setString(4, image.getImage3());
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

	public Map<Integer, Review> Select_Review(int itemid) {
		Connection conn = null;
		PreparedStatement pstmt1 = null;
		PreparedStatement pstmt2 = null;
		ResultSet rs = null;
		ResultSet rs2 = null;
		Map<Integer, Review> reviews = new HashMap<>();
		try {
			conn = DBConnection.getConnection();
			pstmt1 = conn.prepareStatement("select * from review where itemid = ?");
			pstmt1.setInt(1, itemid);
			rs = pstmt1.executeQuery();
			while (rs.next()) {
				Review review = new Review();
				pstmt2 = conn.prepareStatement("select * from image where ordernum =?");
				pstmt2.setInt(1, rs.getInt(1));
				rs2 = pstmt2.executeQuery();
				if (rs2.next()) {
					Image image = new Image();
					image.setImage1(rs2.getString(2));
					image.setImage2(rs2.getString(3));
					image.setImage3(rs2.getString(4));
					review.setImg(image);
				}
				review.setOrdernum(rs.getInt(1));
				review.setItemid(rs.getInt(2));
				review.setUserid(rs.getString(3));
				review.setNickname(rs.getString(4));
				review.setText(rs.getString(5));
				review.setStar(rs.getInt(6));
				review.setDate(rs.getDate(7));
				reviews.put(rs.getInt(1), review);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
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
		return reviews;
	}
	public Map<Integer, Review> My_Select_Review(String id) {
		Connection conn = null;
		PreparedStatement pstmt1 = null;
		PreparedStatement pstmt2 = null;
		ResultSet rs = null;
		ResultSet rs2 = null;
		Map<Integer, Review> reviews = new HashMap<>();
		try {
			conn = DBConnection.getConnection();
			pstmt1 = conn.prepareStatement("select * from review where userid = ?");
			pstmt1.setString(1, id);
			rs = pstmt1.executeQuery();
			while (rs.next()) {
				Review review = new Review();
				pstmt2 = conn.prepareStatement("select * from image where ordernum =?");
				pstmt2.setInt(1, rs.getInt(1));
				rs2 = pstmt2.executeQuery();
				if (rs2.next()) {
					Image image = new Image();
					image.setImage1(rs2.getString(2));
					image.setImage2(rs2.getString(3));
					image.setImage3(rs2.getString(4));
					review.setImg(image);
				}
				review.setOrdernum(rs.getInt(1));
				review.setItemid(rs.getInt(2));
				review.setUserid(rs.getString(3));
				review.setNickname(rs.getString(4));
				review.setText(rs.getString(5));
				review.setStar(rs.getInt(6));
				review.setDate(rs.getDate(7));
				reviews.put(rs.getInt(1), review);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
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
		return reviews;
	}
	
	public void Update_Point (String id , int point ) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.getConnection();
			pstmt =conn.prepareStatement("update member set point =? where id = ?");
			pstmt.setInt(1, point);
			pstmt.setString(2, id);
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
		
}
