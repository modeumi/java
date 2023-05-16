package model;

	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.SQLException;

	public class DBConnection {
		public static Connection getConnection()throws SQLException,
		ClassNotFoundException{
			Connection conn =null;
			String url ="jdbc:mysql://localhost:3306/MOBEL";
			String user ="root";
			String password ="java";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(url,user,password);
			return conn;
		}

	}


