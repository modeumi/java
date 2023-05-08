<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="ch18.com.model.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel ="stylesheet" href = "resources/css/bootstrap.min.css"/>
</head>
<body>
<div class = "container">
	<h1 class = "display-5"> 회원 목록</h1>
	</div>
	<div class ="container">
	<div style ="padding-top :10px">
	<table class = "table table-hover">
<!-- 	<table width="300" border="1"> -->
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
		</tr>
		<%
		List<UserInfo> userInfos = (ArrayList<UserInfo>) request.getAttribute("userinfos");
		for (UserInfo userInfo : userInfos) {
		%>
		<tr>
			<td><%=userInfo.getId()%></td>
			<td><%=userInfo.getPw()%></td>
			<td><%=userInfo.getName()%></td>
		</tr>
		<%
		}
		%>
	</table>
	</div>
	</div>
</body>
</html>