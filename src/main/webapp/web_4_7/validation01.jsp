<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function checkform(){
	alert ("아아디 : " + document.loginform.id.value + "\n"+
			"비밀번호 : " + document.loginform.pass.value + "\n");
	
}
</script>
</head>
<body>
	<form name = "loginform">
		<p> 아이디 : <input type = "text" name ="id">
		<p> 비밀번호 : <input type = "text" name ="pass">
		<p> <input type ="submit" value = "로그인" onclick="checkform()">	
	
	</form>

</body>
</html>