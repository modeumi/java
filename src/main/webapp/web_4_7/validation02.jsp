<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function check() {
		var form = document.loginform;
		if (form.id.value == "") {
			alert("아아디 입력 ");
			form.id.focus();
			return false;
		} else if (form.pass.value == "") {
			alert("비밀번호 입력");
			form.pass.focus();
			return false;
		}
		form.submit();
	}
</script>
</head>
<body>
<form name = "loginform" action = "validation02_process.jsp" method = "post"> 
<p> 아이디 : <input type = "text" name = "id">
<p> 비밀번호 : <input type = "text" name = "pass">
<p> <input type = "submit" value = "로그인" onclick="check()">
</form>
 
</body>
</html>