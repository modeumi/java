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
<%   request.setCharacterEncoding("utf-8"); %>
<%@ include file="../webDB/conn.jsp"%>
<% 
String id = request.getParameter("id");
String pass = request.getParameter("pass");
String name = request.getParameter("name");
ResultSet rs = null;
Statement stmt = null;
PreparedStatement pstmt = null;
String sql = "select * from member where id = '" + id +"'";
try {
stmt = conn.createStatement();
rs = stmt.executeQuery(sql);
if (rs.next()){
	String rsi = rs.getString ("id");
	String rsp = rs.getString ("pass");
	String sql2 = "delete from member where id = ? and pass = ? ";
	pstmt = conn.prepareStatement(sql2);
	pstmt.setString(1, id);
	pstmt.setString(2, pass);
	pstmt.executeUpdate();
}
}catch (SQLException e){
	out.println(" error : " + e.getMessage());
}finally{
	if (rs != null){rs.close();} 
	if (pstmt != null){pstmt.close();} 
	if (conn != null){conn.close();} 
}



%>


</body>
</html>