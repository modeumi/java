package ch18.com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserInfoDaoImpl implements UserInfoDao  {
	
	public UserInfo selectOne(String id) throws Exception {
		Connection conn = DBConnection.getConnection();
		Statement stmt = null;
		ResultSet rs = null;
		UserInfo userinfo = null;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT ID,PASS,NAME FROM INFO WHERE ID = '" + id + "' ");
			if (rs.next()) {
				userinfo = new UserInfo()
						.setId(rs.getString("ID"))
						.setPw(rs.getString("pass"))
						.setName(rs.getString("NAME"));
			}
		} catch (Exception e) {
			throw e;

		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (stmt != null) {
					stmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
			}
		}
		return userinfo;
	}

	public UserInfo exist(String id, String pass) throws Exception {
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		UserInfo userinfo = null;
		try {
			pstmt = conn.prepareStatement("SELECT ID,PASS,NAME FROM INFO WHERE ID = ? AND PASS = ?");
			pstmt.setString(1, id);
			pstmt.setString(2, pass);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				userinfo = new UserInfo()
						.setId(rs.getString(1))
						.setPw(rs.getString(2))
						.setName(rs.getString(3));
			}
		} catch (Exception e) {
			throw e;
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
			}
		}
		return userinfo;
	}

	public int insert(UserInfo userinfo) throws Exception {
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement("INSERT INTO INFO (ID,PASS,NAME) VALUES (?,?,?)");
			pstmt.setString(1, userinfo.getId());
			pstmt.setString(2, userinfo.getPw());
			pstmt.setString(3, userinfo.getName());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			throw e;

		} finally {
			try {
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
			}
		}
	}

//	public UserInfo delete(UserInfo userinfo) throws Exception {
//		Connection conn = DBConnection.getConnection();
//		PreparedStatement pstmt = null;
//		try {
//			pstmt = conn.prepareStatement("DELETE FROM INFO WHERE ID = ? AND PASS = ?");
//			pstmt.setString(1, userinfo.getId());
//			pstmt.setString(2, userinfo.getPw());
//			pstmt.executeUpdate();
//		} catch (Exception e) {
//			throw e;
//		} finally {
//			try {
//				if (pstmt != null) {
//					pstmt.close();
//				}
//				if (conn != null) {
//					conn.close();
//				}
//			} catch (Exception e) {
//
//			}
//		}
//		return userinfo;
//	}
	public int delete (String id)throws Exception{
		Connection conn = DBConnection.getConnection();
		Statement stmt = null;
		try {
			stmt = conn.createStatement();
			return stmt.executeUpdate("DELETE FROM INFO WHERE ID = '" + id + "'");
		}catch (Exception e) {
			throw e;
		} finally {
			try {
				if (stmt != null) {stmt.close();}
				if (conn != null) {conn.close();}
			} catch (Exception e) {}
		}
	}

//	public UserInfo change(UserInfo userinfo) throws Exception {
//		Connection conn = DBConnection.getConnection();
//		PreparedStatement pstmt = null;
//		try {
//			pstmt = conn.prepareStatement("UPDATE INFO SET NAME =?, PASS = ? WHERE ID = ? ");
//			pstmt.setString(1, userinfo.getName());
//			pstmt.setString(2, userinfo.getPw());
//			pstmt.setString(3, userinfo.getId());
//			pstmt.executeUpdate();
//		} catch (Exception e) {
//			throw e;
//		} finally {
//			try {
//				if (pstmt != null) {
//					pstmt.close();
//				}
//				if (conn != null) {
//					conn.close();
//				}
//			} catch (Exception e) {
//
//			}
//		}
//		return userinfo;
//	}
//	
	public int update(UserInfo userinfo) throws Exception {
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement("UPDATE INFO SET NAME =?, PASS = ? WHERE ID = ? ");
			pstmt.setString(1, userinfo.getName());
			pstmt.setString(2, userinfo.getPw());
			pstmt.setString(3, userinfo.getId());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			throw e;
		} finally {
			try {
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
				
			}
		}
	}
	public List<UserInfo> selectList() throws Exception {
		Connection conn =DBConnection.getConnection();
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList<UserInfo> userinfos = null;
		try {
			stmt =conn.createStatement();
			rs = stmt.executeQuery("SELECT ID,PASS,NAME FROM INFO ORDER BY NAME ASC");
			userinfos = new ArrayList<UserInfo>();
			while (rs.next()) {
				userinfos.add(new UserInfo()
						.setId(rs.getString("ID"))
						.setPw(rs.getString("pass"))
						.setName(rs.getString("name")));
			}
		}catch (Exception e) {
			throw e;
		}finally {
			try {
				if (rs !=null) {rs.close();}
				if (stmt !=null) {stmt.close();}
				if (conn !=null) {conn.close();}
			}catch (Exception e) {}
		}
		return userinfos;
	}
}