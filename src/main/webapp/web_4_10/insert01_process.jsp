<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Database SQL</title>
</head>
<body>
<%@ include file="dbconn.jsp" %>
<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	Statement stmt = null;
	try {
		String sql = "INSERT INTO Member(id, passwd, name) VALUES('" 
		+ id + "','" + passwd + "','" + name + "')";
		stmt = conn.createStatement();
		stmt.executeUpdate(sql);
		out.println("Member ���̺� ������ �����߽��ϴ�.");
	} catch (SQLException ex) {
		out.println("Member ���̺� ������ �����߽��ϴ�.<br>");
		out.println("SQLException:" + ex.getMessage());
	} finally {
		if (stmt != null) stmt.close();
		if (conn != null) conn.close();
	}	
		
%>	

</body>
</html>