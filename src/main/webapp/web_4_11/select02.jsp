<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page  import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "dbconn.jsp" %>
<table width = "300" border="1">
<tr>
	<th>id</th>
	<th>pa</th>
	<th>na</th>
	</tr>
	<%
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	try {
		String sql = "select * from member";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while (rs.next()){
			String id = rs.getString("id");
			String pass = rs.getString ("pass");
			String name = rs.getString ("name");
			%>
			<tr>
			<td><%=id%></td>
			<td><%=pass%></td>
			<td><%=name%></td>
			</tr>
		<%
		}
}catch (SQLException ex){
out.println("Member 테이블 호출 실패<br>");
out.println("SQLException : " + ex.getMessage());
} finally {
if (rs != null){rs.close();} 
if (pstmt !=null){pstmt.close();}
if (conn != null){conn.close();}
}
%>
</table>

</body>
</html>