<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Database SQL</title>
</head>
<body>
   <form method="post" action="UserInfoAddServlet">
      <p>
         아이디: <input type="text" name="id">
      <p>
         비밀번호: <input type="password" name="pw">
      <p>
         이름: <input type="text" name="name">
      <p>
         <input type="submit" value="전송">
   </form>
</body>
</html>