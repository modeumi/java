<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="ch18.com.model.*" %>
<%@page import="java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<title>Database SQL</title>
</head>
<body>
	<table width="300" border="1">
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
		</tr>
		<%
			request.setCharacterEncoding("utf-8");
			List<UserInfo> userInfos = 
			(ArrayList<UserInfo>)request.getAttribute("userinfos");
			for(UserInfo userInfo : userInfos) {
		%>				
		<tr>
			<td><%=userInfo.getId() %></td>
			<td><%=userInfo.getPw() %></td>	
			<td><%=userInfo.getName() %></td>	
			
		</tr>
		<%  } %>
				
	</table>
</body>
</html>