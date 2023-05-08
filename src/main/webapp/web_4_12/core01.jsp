<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	browser 변수 값 설정 
<%-- 	<% String str = "abc"; %> --%>
<%-- 	<%= str %> --%>
	<br>
	<c:set var ="browser" value = "abc"/>
	<c:out value ="${browser}" />
	<c:remove var = "browser"/>
	<c:out value ="${browser}" />
	
<%-- 위의 String과 c:set은 같은 방법  --%>
</body>
</html>