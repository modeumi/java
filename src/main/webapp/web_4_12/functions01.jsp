<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p> java 문자열 검색
<p> Hello JSP =>
${fn:contains("Hello JSP","java")}
<p> hello jsp =>
${fn:containsIgnoreCase("hello jsp","java")}
</body>
</html>