package pokemon.com;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import pokemon.com.*;

public class PokemonMethod {

	public PokeUser passtoinfo (PokeUser pokeuser) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement("SELECT * FROM POKEMON WHERE PASS = ?");
			pstmt.setString(1, pokeuser.getPass());
			rs = pstmt.executeQuery();
			if (rs.next())
			pokeuser =new PokeUser()
					.setId(rs.getString("ID"))
					.setPass(rs.getString("pass"))
					.setName(rs.getString("name"))
					.setPhone(rs.getString("phone"));
			 pstmt.executeQuery();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
			if (pstmt != null) {pstmt.close();}
			if (conn != null) {conn.close();}
			}catch (Exception e) {}
		}
		return pokeuser;	
		}
}
