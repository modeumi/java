package app;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;


public class MemberDao {
	private JdbcTemplate jdbcTemplate;
	private DataSource dataSource;
	private static long nextId = 0;
	private Map<String, Member> map = new HashMap<>();

	public MemberDao() {
	}

	public MemberDao(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	/* public Member selectByEmail(String email) {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = dataSource.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from info where id = '"+ email +"'");
			if (rs.next()) {
				return new Member (rs.getString(1), rs.getString(2), rs.getString(3) ,LocalDateTime.now());
			}
		}catch (Exception e) {
				e.printStackTrace();
			}finally {
				try {
				if (rs != null) { rs.close();}
				if (stmt != null) { stmt.close();}
				if (conn != null) { conn.close();}
				}catch (Exception e) {
					e.printStackTrace();
				}
			}
		return null;
		}
	
	public void insert(Member member) {
		member.setId(++nextId);
		map.put(member.getEmail(), member);
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement("insert into info values(?,?,?)");
			pstmt.setString(1, member.getEmail());
			pstmt.setString(2, member.getPass());
			pstmt.setString(3, member.getName());
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

	public void update(Member member) {
		map.put(member.getEmail(), member);
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

	public Collection<Member> selectAll() {
		List<Member> member = new ArrayList<>();
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement("select * from info ");
			rs = pstmt.executeQuery();
			while(rs.next()) {
				member.add(new Member(rs.getString(1),rs.getString(2),rs.getString(3),null));
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

	public void delete(String email) {
		map.remove(email);
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement("delete from info where id = ?");
			pstmt.setString(1, email);
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
	*/
	public Member selectByEmail (String email) {
		List<Member> results = jdbcTemplate.query(
				"select * from member where email =?",
				new RowMapper<Member>() {
			@Override
			public Member mapRow(ResultSet rs, int rowNum) 
					throws SQLException{
				Member member = new Member (
						rs.getString("email"),
						rs.getString("pass"),
						rs.getString("name"),
						rs.getTimestamp("regdate").toLocalDateTime());
				member.setId(rs.getLong("id"));
				return member;
			}
		}, email);	
		return results.isEmpty() ? null : results.get(0);
		}
	
	public void insert (Member member) {
		KeyHolder keyHolder = new GeneratedKeyHolder();
		jdbcTemplate.update(new PreparedStatementCreator() {
			@Override
			public PreparedStatement createPreparedStatement(Connection con)
					throws SQLException{
				// 파라미터로 전달 받은 con을 이용하여 pstmt 생성
				PreparedStatement pstmt = con.prepareStatement(
						"insert into member (email, pass, name, regdate)" +
				"values (?, ?, ?, ?)",
				new String[] {"id"});
				//인덱스 파라미터값 설정
				pstmt.setString(1, member.getEmail());
				pstmt.setString(2, member.getPass());
				pstmt.setString(3, member.getName());
				pstmt.setTimestamp(4,
						Timestamp.valueOf(member.getRegisterDateTime()));
				//생성한 pstmt 객체 리턴 
				return pstmt;
			}
		}, keyHolder);
		Number keyValue = keyHolder.getKey();
		member.setId(keyValue.longValue());
	}
	public void update (Member member) {
		jdbcTemplate.update("update member set name = ? , pass = ? where email = ?",
				member.getName(),member.getPass(),member.getEmail());
	}
	
	public Collection<Member> selectAll () {
		List<Member> list = jdbcTemplate.query("select * from member", 
				new RowMapper<Member>() {
					@Override
					public Member mapRow(ResultSet rs, int rowNum) 
							throws SQLException{
						Member member = new Member (
								rs.getString("email"),
								rs.getString("pass"),
								rs.getString("name"),
								rs.getTimestamp("regdate").toLocalDateTime());
						member.setId(rs.getInt("id"));
						
						return member;
					}
				});
		return list;
	}
	
	public void delete (String email) {
		jdbcTemplate.update("delete from member where email = ?",email );
	}
	
}
