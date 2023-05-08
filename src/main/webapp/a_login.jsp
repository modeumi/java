<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.panel {
text-align:center;
position: absolute;
width: 90%;
height: 90%;
border : 2px solid black;
padding : 5px;
} 


</style>
<script type="text/javascript">
function finish() {
	var form = document.joinform;
	var regExpid = /^[a-zA-Z0-9ㅏ-ㅣ가-힣]+$/;
	var regExppass = /^[a-zA-Z0-9]/;
	
	var id = document.getElementById("id").value;
	if(!regExpid.test(id)){
		alert ("아이디를 입력해주세요.");
		return false;
	}
	
	var pass = document.getElementById("pass").value;
	if (!regExppass.test(pass)) {
		alert("비밀번호를 입력하세요.");
		return false;
	}
	return true;
}
	
</script>
</head>
<body>
<div class ="panel">
<a href = "a_pokemon.jsp"><img src ="img/boll.jpg" id = "img"></a>
<h2> 로그인 </h2>

<form action = "LoginServlet" method="post" name = "loginform" >
<p>아이디 : <input type="text" name = "id" id = "id">
<p>비밀번호 : <input type="text" name = "pass" id = "pass">
<p><input type="submit" value = "로그인" onclick="return finish()">
</form>
</div>

</body>
</html>