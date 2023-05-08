<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인</h1>
	<form action='login' method='post'>
		아이디: <input type="text" name="id" /><br> 암호: <input
			type="password" name="pw" /><br> <input type='submit'
			value='로그인' /> <input type='reset' value='취소' />
	</form>


	<h1>가입</h1>
	<form method="post" action="insert">
		<p>
			아이디: <input type="text" name="id">
		<p>
			비밀번호: <input type="password" name="pw">
		<p>
			이름: <input type="text" name="name">
		<p>
			<input type="submit" value="전송">
	</form>


	<h1>delete</h1>
	<form action='delete' method='post'>
		이메일 : <input type='text' name='id' /> 
		<br> 
		암 호 : <input type='password' name='pw' /> 
		<br> 
		<input type='submit' value='전송' />
	</form>

	<h1>update</h1>
	<form action='update' method='post'>
		이메일 : <input type='text' name='id' /> 
		<br> 
		암 호 : <input type='password' name='pw' /> 
		<br> 
		이름 : <input type = "text" name= "name"/>
		<input type='submit' value='전송' />
	</form>
</body>
</body>
</html>