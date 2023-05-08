<%@page import="pokemon.com.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.panel {
position: absolute;
width: 90%;
height: 90%;
border : 2px solid black;
padding : 5px;
} 

h2 {
text-align : center;
border-bottom : 3px solid; 
/* margin-bottom: 5px; */
padding-bottom: 25px;
}

#center {
transform : translate(120px, 230px);
}

</style>
<script type="text/javascript">

function passchange() {
	var passchange = document.getElementById("pass");
	passchange.placeholder = ""; 
}
function passchchange() {
	var passchchange = document.getElementById("passch");
	passchchange.placeholder = ""; 
}
function namechange() {
	var namechange = document.getElementById("name");
	namechange.placeholder = ""; 
}
function phonechange() {
	var phonechange = document.getElementById("phone");
	phonechange.placeholder = ""; 
}
function out (){
	var outp = document.getElementById("pass");
	var outpc = document.getElementById("passch");
	var outna = document.getElementById("name");
	var outph= document.getElementById("phone");
	
	if (outp === null){
		outp.placeholder = "비밀번호를 입력해주십시오.";
	}
	if (outpc === ""){
		outpc.placeholder = "비밀번호를 한번더 입력해주십시오.";
	}
	if (outna === ""){
		outna.placeholder = "성함을 입력해주십시오.";
	}
	if (outph === ""){
		outph.placeholder = "전화번호를 입력해주십시오.";
	}
}

function send(){
	var regExppass = /^[a-zA-Z0-9]/;
	var regExpname = /^[a-zA-Z가-힣]/;
	
	var name = document.getElementById("name").value;
	if (!regExpname.test(name)) {
		alert("성함을 입력해 주십시오");
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
	return true;
	
}
function location (){
	location.href = "p_UserInfo.jsp";
	
}


</script>
</head>
<body>
<div class =panel>
<h2> 정보 수정 </h2>
<form action = "ChangeServlet" method = "post">
<p> 비밀번호 : <input type="password" id = "pass" name = "pass" placeholder = "비밀번호를 입력해주십시오." onclick = "passchange()" onmouseout="out()" > 
<p> 비밀번호 체크 : <input type="password" id = "passch" name = "passch" placeholder = "한번더 입력해주십시오." onclick = "passchchange()" onmouseout="out()"> 
<p> 성함 : <input type="text" id = "name" name = "name" placeholder = "성함을 입력해주십시오." onclick = "namechange()" onmouseout="out()"> 
<p> 전화번호 : <input type="text" id = "phone" name = "phone" placeholder = "전화번호를 입력해주십시오." onclick = "phonechange()" onmouseout="out()"> 
<div id = "center">
<p><input type="submit" value = "변경" onclick = "return send()">    <input type="reset" value = "취소" onclick = "location()">
</div>
</form>
</div>

</body>
</html>