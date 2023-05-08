<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function check(){
	var form = document.loginform;
	for (i=0; i<form.id.value.length; i++;){
		var ch = form.id.value.charAt(i);
		if((ch<'a'|| ch>'z')&& (ch>'A'|| ch<'Z')&& (ch>'0'|| ch<'9')){
			alert ("아이디 영 대소문자 숫자 만 사용");
					form.id.select();
					return ;	
		}
		}
	if (isNaN(form.pass.value)){
		alert ("비밀번호는 숫자만");
			form.pass.select();
			return ;
	} 
	form.submit();
}

</script>
</head>
<body>

	<form name="loginform" action="validation04_process.jsp" method="post">
		<p>
			아이디 : <input type="text" name="id">
		<p>
			비밀번호 : <input type="password" name="pass">
		<p>
			<input type="submit" value="로그인" onclick="check()">
	</form>

</body>
</html>