<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Session</title>
</head>
<body>
	<%
		String user_id = (String) session.getAttribute("userID");
		String user_pw = (String) session.getAttribute("userPW");
		out.println("汲沥等 技记狼 加己 蔼 [1] : " + user_id + "<br>");
		out.println("汲沥等 技记狼 加己 蔼 [2] : " + user_pw);	
	%>

</body>
</html>