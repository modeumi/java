<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta charset="EUC-KR">
<title>Implicit Objects</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("EUC-KR");
		String userid = request.getParameter("id");
		String password = request.getParameter("pw");
	%>
	<p> 후 아이디 : <%=userid%>
	<p> 후 비밀번호 : <%=password%>
</body>
</html>