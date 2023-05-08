<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Statement stmt = null;
Connection conn = null;
String url = "jdbc:mysql://localhost:3306/JSPBookDB";
String user = "root";
String password = "java";
Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection(url, user, password);
try {
	out.println("데이터 베이스 드라이버 로딩성공<br>");
	conn = DriverManager.getConnection(url, "root", "java");
	out.println("데이터 베이스 연결 성공<br>");
	stmt = conn.createStatement();
	out.println("??<br>");
		String addtable = "CREATE TABLE pokemon("
				+ "NAME VARCHAR(10),"
				+ "ID VARCHAR(20),"
				+ "PASS VARCHAR(20))";
		stmt.executeUpdate(addtable);
	} catch (Exception e) {
		out.println("DB 드라이버 로딩 및 연결 실패");
	} finally {
			// 닫는 순서는 역순으로
			if (stmt != null) {
				stmt.close();
			}
			if (conn != null) {
				conn.close();
			}
	}


%>

</body>
</html>