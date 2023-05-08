<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "ch18.com.controller.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>정보수정</h1>
<form action = "UserInfoUpdateFormAction" method="post" >
<p>아이디 : <input type="text" name = "id" id = "id">
<p><input type="submit" value = "제출" >
<p><input type="reset" value = "취소">
</form>

</body>
</html>