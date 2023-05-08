<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function check (){
	var form = document.loginform;
	if( form.id.value.length <4 || form.id.value.length >12){
		alert("아이디는 4~12자");
		form.id.select();
		return ;
	}
	if (form.pass.value.length <4){
		alert ("비밀번호는 4자이상")
		form.pass.select();
		return ;
	}
	form.submit();
}

</script>
</head>
<body>
	<form name = "loginform" action =  "validation03_process.jsp" method="post">
		<p>
			아이디 : <input type="text" name="id">
		<p>
			비밀번호 : <input type="text" name="pass">
		<p>
			<input type="submit" value="로그인" onclick="check()">
	</form>

</body>
</html>