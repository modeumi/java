<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입.process</title>
</head>
<body>
	<%

	%>
	<%
	request.setCharacterEncoding("UTF-8");
	%>
	<%@ include file="../webDB/conn.jsp"%>
	<%
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String phone = phone1 + "-" + phone2 + "-" + phone3;
	PreparedStatement pstmt = null;
	String sql = "insert into pokemon(name, id, pass,phone) values(?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, id);
	pstmt.setString(3, pass);
	pstmt.setString(4, phone);
	pstmt.executeUpdate();
	%>
	<script type="text/javascript">
		alert("회원가입 성공")
		location.href = "login.jsp"
	</script>



</body>
</html>