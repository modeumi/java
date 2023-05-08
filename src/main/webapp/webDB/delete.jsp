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
PreparedStatement pstmt = null;
Connection conn = null;
String url = "jdbc:mysql://localhost:3306/JSPBookDB";
String user = "root";
String password = "java";
Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection(url, user, password);
	String sql = "delete from member where id = ?";
try {
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,"modeumi");
	pstmt.executeUpdate();
}catch (SQLException e){
	out.println("error :" +  e.getMessage());
}
%>

</body>
</html>