<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@ include file="dbconn.jsp" %>
<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	PreparedStatement pstmt = null;
	try {
		String sql = "insert into member(id, passwd, name) values(?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, passwd);
		pstmt.setString(3, name);
		pstmt.executeUpdate();
		out.println("Member ���̺� ������ �����߽��ϴ�.");
	} catch (SQLException ex) {
		out.println("Member ���̺� ������ �����߽��ϴ�.<br>");
		out.println("SQLException: " + ex.getMessage());
	} finally {
		if (pstmt != null) pstmt.close();
		if (pstmt != null) conn.close();		
	}
%>

</body>
</html>