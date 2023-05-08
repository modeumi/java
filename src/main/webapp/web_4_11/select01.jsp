<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "java.sql.* "%>
<%@page import="java.sql.SQLException"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<table width="300" border="1">
		<tr>
			<th>id</th>
			<th>pass</th>
			<th>na</th>
		</tr>
		<% 
ResultSet rs = null;
Statement stmt = null;
try {
String sql = "select * from member";
stmt = conn.createStatement();
rs = stmt.executeQuery(sql);
while (rs.next()){
String id = rs.getString("id");
String pw = rs.getString("pass");
String na = rs.getString("name");
%>
		<tr>
			<td><%=id%></td>
			<td><%=pw%></td>
			<td><%=na%></td>
		</tr>
		<%
		}
}catch (SQLException ex){
out.println("Member 테이블 호출 실패<br>");
out.println("SQLException : " + ex.getMessage());
} finally {
if (rs != null){rs.close();} 
if (stmt !=null){stmt.close();}
if (conn != null){conn.close();}
}
%>
	</table>
</body>
</html>