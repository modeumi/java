<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "pokemon.com.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
사용자 정보	
<%
PokeUser userinfo = (PokeUser) request.getAttribute("Userinfo");
%>
id : <%=userinfo.getId() %>
pass : <%=userinfo.getPass() %>
name : <%=userinfo.getName() %>
</body>
</html>