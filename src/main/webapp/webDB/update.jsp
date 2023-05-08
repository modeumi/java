<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>정보 수정</h3>
	<form action="update_process.jsp" name="joinform" method="post">
		<p>
			아이디 : <input type="text" name="id" id="id">
		<p>
			비밀번호 : <input type="password" name="pass" id="pass">
		<p>
			이름 : <input type="text" name="name" id="name">
		<p>
			<input type="submit" value="변경하기" > <input
				type="reset" value="다시쓰기">
	</form>

</body>
</html>