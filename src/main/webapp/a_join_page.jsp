<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page import="java.sql.*"%>
<%@ page import="ch04.com.dto.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

<style type="text/css">

.panel {
text-align:center;
position: absolute;
width: 90%;
height: 90%;
border : 2px solid black;
padding : 5px;
} 
#underline{
border-bottom: 3px solid black;
padding : 10px;
}

</style>

<script type="text/javascript">
function finish() {
	var form = document.joinform;
	var regExpid = /^[a-zA-Z0-9ㅏ-ㅣ가-힣]/;
	var regExppass = /^[a-zA-Z0-9]/;
	var regExpname = /^[a-zA-Z가-힣]/;

	var name = document.getElementById("name").value;
	if (!regExpname.test(name)) {
		alert("성함을 입력해 주십시오");
		return false;
	}
	
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
	
	var passcheck = document.getElementById ("passcheck").value;
	var check = (pass === passcheck);
	if (!check){
		alert ("비밀번호를 확인해 주십시오.");
		return false;
	}
	

	var phone1 = document.getElementById("phone1").value;
	var phone2 = document.getElementById("phone2").value;
	var phone3 = document.getElementById("phone3").value;
	var regExpphone1 = /^\d{3}$/;
	var regExpphone2 = /^\d{3,4}$/;
	var regExpphone3 = /^\d{4}$/;

	if (!regExpphone1.test(phone1) || !regExpphone2.test(phone2)
			|| !regExpphone3.test(phone3)) {
		alert("전화번호를 확인해주세요.");
		return false;
	}
	
	window.open("a_joinpanel.jsp", "", "width = 400, height = 200");
	window.close();
	return true;
}

	function check() {
		window.open("idnull.jsp", "", "width =200, height = 100");

	}

	function checkl() {
	 	MemberDB member = new MemberDB();
		String result = member.Idcheck(id);
		var idc = document.getElementById("id").value;

		if (idc === ""){
		
		}
		if (result == 0){
			window.open("equals.html","", "width =200, height = 100");
		}
		if (result == 1){
			window.open("nequals.html","", "width =200, height = 100");
		}
	}

	function join() {
	}
</script>
</head>
<body>
<div class = "panel">

	<a href = "a_pokemon.jsp" ><img src = "img/boll.jpg"></a>
	<br>
	<h3 id= "underline">회원가입</h3>
	<form name="joinform" action="JoinServlet" method="post">
		<p>
			성함 : <input type="text" name="name" id="name">
		<p>
			아이디 : <input type="text" name="id" id="id"> 
			<input	type="button" value="중복확인" onclick="check();" />
		<p>
			비밀번호 : <input type="password" name="pass" id="pass">
		<p>
			비밀번호 확인 : <input type="password" name="passcheck" id="passcheck">
		<p>
			전화번호 : <select name="phone1" id="phone1">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="019">019</option>
			</select> - <input type="text" maxlength="4" size="4" name="phone2"
				id="phone2"> - <input type="text" maxlength="4" size="4"
				name="phone3" id="phone3">
				<p id = "underline">
		<p>
			<input type="submit" value="회원가입" onclick="return finish()" />
			 <input	type="reset" value="취소" />
	</form>
	</div>

</body>
</html>