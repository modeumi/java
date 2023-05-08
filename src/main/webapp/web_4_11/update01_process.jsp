<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("UTF-8");%>
	<%@ include file="../webDB/conn.jsp"%>
	<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String name = request.getParameter("name");
	ResultSet rs = null;
	Statement stmt = null;
	try {
		String sql = "select id, pass from member where id = '"
				+id + "'";
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		if (rs.next()){
			String rid = rs.getString("id");
			String rpass = rs.getString("pass");
			if (id.equals(rid)&& pass.equals(rpass)){
				sql = "update member set name = '" + name +"' where id = '" + id +"'";
				stmt = conn.createStatement();
				stmt.executeUpdate(sql);
				out.println ("member 수정");
			}else {
				out.println("일치 비번 x ");
			}
		}else {
			out.println("일치 아이디 x ");
		}
	}catch (SQLException e){
		out.println("sqlexception :" + e.getMessage());
	}
	%>


</body>
</html>