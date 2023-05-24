<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보수정</title>
<style>
body{
padding-top: 55px;
}
.update {
	width: 80%;
	height: 200%;
	background-color: white;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.3);
	list-style-type: none;
}
.impo, .memberimp {
	transform: translate(0%, -1%);
}

.delete {
	position: absolute;
	top: 34%;
	left: 83%;
	padding: 5px;
	color: red
}

section {
	display: flex;
	justify-content: center;
	align-items: center;
	text-align: left;
}

h2 {
	text-align: left;
}
.readonlyback {
background-color: #D8D8D8;
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
<%@ include file="header.jsp"%>
</head>
<body>
	<header>
		<p>
		<hr>
	</header>
	<nav>
	<%@ include file ="nav.jsp" %>
   </nav>
	<br>
	<section>
	<div class="update">
         <form action="UpdateServlet" method ="post">
			<center>
				<h2>■ 회원 정보 수정</h2>
				<hr>
			</center>
			<div class="loginimp">
				<div class="impo">
				<p>아이디 :<input type ="text" value="${sessionScope.log_id}" name ="id" id="id" readonly="readonly" class = "readonlyback">
					<p>
						비밀번호 : <input type="password" name="pw" id="pw"
							onchange="checkLogin()">
							<input type="button" value="🔒" onclick="showPassword1()">
					</p>
					<br>		
					<p>
						비밀번호확인 : <input type="password" name="pwc" id="pwc"
							onchange="checkPw()">
							<input type="button" value="🔒" onclick="showPassword1()">
					</p>
							<br>	
					<p>
						이름: <input type="text" name="name" onchange="checkname()">
					</p>
						<br>
						<p>
						별 명 :<input type ="text" name="nickname" id="nickname">
					<p>	
						프로필 이미지 : <a href=""><img class="profile" src="img/프로필.png"
							width="50px" height="50px"></a>
						</p>
						<br>
				</div>
			</div>	
			
			<div class="memberimp">
				<p>
					이메일 <input type="text" name="email" id="email"
						placeholder="이메일을 입력해주세요"> 
						@<span id="inputDomain"> 
						<input type="text" name="domain" id="domain"
						placeholder="도메인을 입력해주세요">
					    </span>
						<select name="site" onchange="changeEmailDomain()">
						<option value="직접입력">직접입력</option>
						<option value="@naver.com">naver.com</option>
						<option value="@daum.net">daum.net</option>
						<option value="@gmail.net">gmail.net</option>
					</select> 
				</p>
				<br>
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
				</p>
				<center>
				<br>
					<p>
						<input type="submit" value="수정 완료" name ="update">
				
				</center>
			</div>
		</form>
	</div>
	<div class="delete">
    <a href="Withdrawal Procedure.jsp">탈퇴하기</a>
	</div>
	</section>
	
	
 	<br> 
<footer><%@ include file="footer.jsp"%></footer>
</body>
</html>

