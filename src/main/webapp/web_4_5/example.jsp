<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "ch18.com.*"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1>계산기</h1>
	<form action ="../ServletEx02">
		<input type="text" name="v1" style="width: 50px;">
		<select name ="op">
		<option value="+">+</option>
		<option value="-">-</option>
		<option value="*">-</option>
		<option value="/">/</option>	
		</select>
		<input type="text" name="v2" style="width: 50px;">
		<input type="submit" value="=">
	</form>
</body>
</html>