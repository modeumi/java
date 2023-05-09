<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>정보수정</title>
<style>
.update {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 600px;
	padding: 5px;
	border: 5px solid #123456;
}

.impo, .memberimp {
	transform: translate(10%, -1%);
}

.title img {
	display: block;
	margin: 0 auto;
}
.delete{
   position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(37%, -250%);
	width: 600px;
	padding: 5px;
	color: red
}

</style>
<script type="text/javascript">
function showPassword1() {
	var passwordInput = document.getElementById("pw");
	if (passwordInput.type === "password") {
		passwordInput.type = "text";
	} else {
		passwordInput.type = "password";
	}
}

</script>
<body>
	<div class="update">
		<form action="UpdateServlet" method="post" name="member">
			<div class="title">
				<img src="img/로고.png" width="150" height="100"><a
					href="./homepage.jsp"></a>
			</div>
			<center>
				<h2>회원 정보 수정</h2>
			</center>
			<div class="loginimp">
				<div class="impo">
					<p>
						비밀번호 : <input type="password" name="pw" id="pw"
							onchange="checkLogin()">
							<input type="button"
							value="🔒" onclick="showPassword1()">
							
					<p>
						비밀번호확인 : <input type="password" name="pwc" id="pwc"
							onchange="checkPw()">
							<input type="button"
							value="🔒" onclick="showPassword1()">	
					<p>
						이름: <input type="text" name="name" onchange="checkname()">
					<p>	
						프로필 이미지 : <a href=""><img class="profile" src="img/프로필.png" width="50px" height="50px"></a>
				</div>
			</div>	
			
			<div class="memberimp">
				<p>
					이메일 <input type="text" name="email" id="email"
						placeholder="이메일을 입력해주세요"> 
						@<span id="inputDomain"> 
						<input type="text" name="domain" id="domain" placeholder="도메인을 입력해주세요">
					    </span>
						<select name="site" onchange="changeEmailDomain()">
						<option value="직접입력">직접입력</option>
						<option value="@naver.com">naver.com</option>
						<option value="@daum.net">daum.net</option>
						<option value="@gmail.net">gmail.net</option>
					</select> 
				</p>
				<p>
					연락처 : <select name="phone1" onselect="checkMember()">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="019">019</option>
						<option value="017">017</option>
						<option value="016">016</option>
					</select> -<input type="text" maxlength="4" size="4" name="phone2">-
					<input type="text" maxlength="4" size="4" name="phone3"
						onchange="checkMember()">
				<center>
					<p>
						<input type="submit" value="수정 완료">
				</center>
			</div>
		</form>
	</div>
	<div class ="delete">
    <a href="Withdrawal Procedure.jsp">탈퇴하기</a>
	</div>
</body>
</html>

