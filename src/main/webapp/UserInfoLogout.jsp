<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>로그아웃</h1>
<form action = "ControllerServlet?command=logout" method="post" >
<p>아이디 : <input type="text" name = "id" id = "id">
<p>비밀번호 : <input type="password" name = "pass" id = "pass">
<p><input type="submit" value = "로그아웃" >
<p><input type="reset" value = "취소">
</form>

</body>
</html>