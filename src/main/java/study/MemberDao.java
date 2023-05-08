package study;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;




public class MemberDao {
	private DataSource dataSource;
	private BankInfo bankinfo;
	
	public MemberDao() {
	}

	public MemberDao(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	public Banklogin login (String mail, String pass) {
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		Connection conn = null;
		try {
			conn =dataSource.getConnection();
			pstmt = conn.prepareStatement("select * from info where id = ?");
			pstmt.setString(1, mail);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if (rs.getString("pass").equals(pass)) {
					bankinfo = new BankInfo(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4));
					Banklogin banklogin = new Banklogin(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4));
					System.out.println("로그인 성공");
					return banklogin;
				}else if (!rs.next()) {
					System.out.println("입력 pass 일치 x");
				}
			}else if (!rs.next()) {
				System.out.println("입력 id 일치x");
			}
		}catch (Exception e) {
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
		return null;
	}
	
	public BankInfo selectByEmail(String email) {
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		Connection conn = null;
		try {
			System.out.println("1111");
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement("select * from info where id = '"+ email +"' ");
			rs = pstmt.executeQuery();
			while(rs.next()) {
				System.out.println("1312");
				BankInfo user = new BankInfo(rs.getString("id"), rs.getString("name"), rs.getString("pass"), rs.getInt("balance"));
				return user;
			}
			
			} catch (Exception e) {
			} finally {
				try {
					if (rs !=null) {
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
		return bankinfo;
	}

	public void insert(BankInfo member) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement("insert into info(id,name,pass,bal) values(?,?,?,0)");
			pstmt.setString(1, member.getEmail());
			pstmt.setString(2, member.getName());
			pstmt.setString(3, member.getPass());
			pstmt.executeUpdate();
		} catch (Exception e) {
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

	public void update(BankInfo member) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement("update info set pass =?, name =? where id = ?");
			pstmt.setString(1, member.getPass());
			pstmt.setString(2, member.getName());
			pstmt.setString(3, member.getEmail());
			pstmt.executeUpdate();
		} catch (Exception e) {
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

	public Collection<BankInfo> selectAll() {
		List<BankInfo> member = new ArrayList<>();
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement("select * from info ");
			rs = pstmt.executeQuery();
			while(rs.next()) {
				member.add(new BankInfo(rs.getString(1),rs.getString(2),rs.getString(3), rs.getInt(4)));
			}
			} catch (Exception e) {
			} finally {
				try {
					if (rs !=null) {
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
		return member;
	}

	public void delete(String email,String pass) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement("select * from info where id = '"+email+"'");
			rs = pstmt.executeQuery();
			if (rs.getString("pass").equals(pass)) {
				pstmt= conn.prepareStatement("delete from info where id = '"+ email +"'");
				pstmt.executeUpdate();
			}
		} catch (Exception e) {
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
	public void depositmoney (String email, int balance) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		bankinfo.deposit(balance);
		try {
			conn = dataSource.getConnection();
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
		Connection conn = null;
		PreparedStatement pstmt = null;
		bankinfo.withdraw(balance);
		try {
			conn = dataSource.getConnection();
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
	public void transfer (String email, int money) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null; 
		try {
			conn =dataSource.getConnection();
			pstmt = conn.prepareStatement("select balance from rebank where email = '"+email+"'");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				pstmt = conn.prepareStatement("update rebank set balace = '" + rs.getInt("balance")+money +"' where email ='"+email+"'");
				pstmt.executeUpdate();
				withdrawmoney(bankinfo.getEmail(), money);
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
	}
}

