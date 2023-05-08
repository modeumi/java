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
<%@ include file = "../webDB/conn.jsp" %>
<% 
String id = request.getParameter("id");
String pass = request.getParameter("pass");
String name = request.getParameter("name");
ResultSet rs = null;
PreparedStatement pstmt = null;
try { 
	
	String sql = " select id,pass from member where id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	rs = pstmt.executeQuery();
	if (rs.next()){
		String rid = rs.getString("id");
		String rpass = rs.getString ("pass");
		if (id.equals(rid)&&pass.equals(rpass)){
			String sql2 = "delete from member where id = ? and pass = ?";
			pstmt= conn.prepareStatement(sql2);
			pstmt.setString(1, id);
			pstmt.setString(2, pass);
			pstmt.executeUpdate();
			out.print ("삭제");
			
			
		}else {
			out.print ("일치x");
			
		}
	}
}catch (SQLException e){
	out.print("error :  " +e.getMessage());
	
}finally {
	if (rs != null){rs.close();}
	if (pstmt != null){pstmt.close();}
	if (conn != null){conn.close();}
}




%>


</body>
</html>