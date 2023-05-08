<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인</h1>
	<form action = 'login' method='post'>
		이메일 : <input type ='text' name='id'/> <br>
		암 호 : <input type='password' name='pw'/> <br>
		<input type='submit' value='로그인' />
		<input type='reset' value='취소' />
	</form>
</body>
</html>