package ch04.com.dto;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBAction {
private static DBAction Instance = new DBAction();
public Connection conn = null;
public DBAction() {
	String driver = "com.mysql.cj.jdbc.Driver";
  	String url = "jdbc:mysql://localhost:3306/jspbookdb";
	try {
		Class.forName(driver);
		conn = DriverManager.getConnection(url,"root","java");
	}catch (Exception e) {
		e.printStackTrace();
	}
}
public static DBAction getInstance() {
	if (Instance == null) new DBAction();
	return Instance;
}
public Connection getConnection () {
	return this.conn;
}
}
