<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>정보수정</h1>
<form action = "ControllerServlet?command=update" method="post" >
<p>변경할 비밀번호 : <input type="password" name = "pass" id = "pass">
<p>변경할 이름 : <input type="text" name = "name" id = "name">
<p><input type="submit" value = "제출" >
<p><input type="reset" value = "취소">
</form>

</body>
</html>