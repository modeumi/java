<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Security</title>
</head>
<body>
	<form name="loginForm" action="j_security_check" method="post">
		<p> ����ڸ�: <input type="text" name="j_password">
		<p> ��й�ȣ: <input type="password" name="j_password">
		<p> <input type = "submit" value="����">	
	</form>
</body>
</html>