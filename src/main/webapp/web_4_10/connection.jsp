<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% 
		Connection conn = null;
		try {
			String url = "jdbc:mysql://localhost:3306/JSPBookDB";
			String user = "root";
			String password = "java";
			
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
			out.println("�����ͺ��̽� ������ �����Ǿ����ϴ�.");
		} catch (SQLException ex) {
			out.println("���̹����̽� ������ ���еǾ����ϴ�.<br>");
			out.println("SQLException: " + ex.getMessage());
		} finally {
			if(conn != null)
				conn.close();
		}
	
	%>

</body>
</html>