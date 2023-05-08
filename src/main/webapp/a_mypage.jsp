<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.panel {
	text-align : center;
	position: absolute;
	width: 90%;
	height: 90%;
	border: 2px solid black;
	padding: 5px;
}

h2 {
	text-align: center;
}

p {
	text-align: center;
}

#button {
	test-align: center;
	margin-top : 35%;
}
</style>
</head>
<body>
	<div class="panel">
	<a href = "a_pokemon.jsp"><img src ="img/boll.jpg" id = "img"></a>
	<br>
		<h2>
			정보 확인을 위해 <br>비밀번호를 입력해주십시오.
		</h2>
		<form action="PasswordCheck" method="post">
			<p>
				비밀번호 : <input type="password" id="pass" name="pass">
			<p id="button">
				<input type="submit" name="제출" id = "button">
		</form>
	</div>

</body>
</html>