package model;

	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.SQLException;

	public class DBConnection {
		public static Connection getConnection()throws SQLException,
		ClassNotFoundException{
			Connection conn =null;
			String url ="jdbc:mysql://localhost:3306/mobel?autoReconnect=true&verifyServerCertificate=false&useSSL=false&useUnicode=true&characterEncoding=utf8";
			String user ="root";
			String password ="java";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(url,user,password);
			return conn;
		}

	}


