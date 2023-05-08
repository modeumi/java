<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function check() {
		var form = document.joinform;

		var id = document.getElementById("id").value;
		var regExpid = /^[a-zA-Z0-9ㅏ-ㅣ가-힣]/;

		if (!regExpid.test(id)) {
			alert("아이디형식 확인");
			return false;
		}

		var pass = document.getElementById("pass").value;
		var regExppass = /^[0-9]+$/;

		if (!regExppass.test(pass)) {
			alert("패스워드도 뭐 어쩌라고");
			return false;
		}

		var name = document.getElementById("name").value;
		var regExpname = /^[가-힣]+$/;

		if (!regExpname.test(name)) {
			alert("이름 한글");
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
			alert("전화 확인");
			return false;
		}
		var email = document.getElementById("email").value;
		var regExpemail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])+@[0-9a-zA-Z]+\.[a-zA-Z]{2,3}$/;

		if (!regExpemail.test(email)) {
			alert("e메일 양식 확인");
			return false;
		}
		return true;
	}
</script>

</head>
<body>
	<h3>회원가입</h3>
	<form action="validation05_process.jsp" name="joinform" method="post">
		<p>
			아이디 : <input type="text" name="id" id="id"> <input
				type="button" value="아이디 중복검사">
		<p>
			비밀번호 : <input type="password" name="pass" id="pass">
		<p>
			이름 : <input type="text" name="name" id="name">
		<p>
			연락처 : <select name="phone1" id="phone1">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="019">019</option>
			</select> - <input type="text" maxlength="4" size="4" name="phone2"
				id="phone2"> - <input type="text" maxlength="4" size="4"
				name="phone3" id="phone3">
		<p>
			이메일 : <input type="text" name="email" id="email">
		<p>
			성별 : <input type="radio" name="sex" value="남성" checked>남성 <input
				type="radio" name="sex" value="여성">여성
		<p>
			취미 : 독서<input type="checkbox" name="hobby1" checked> 운동<input
				type="checkbox" name="hobby2"> 영화<input type="checkbox"
				name="hobby3">
		<p>
			<textarea name="comment" cols="30" rows="3"
				placeholder="가입인사를 입력해주세요"></textarea>
		<p>
			<input type="submit" value="가입하기" onclick="return check()"> <input
				type="reset" value="다시쓰기">
	</form>

</body>
</html>