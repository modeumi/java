<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 확인</title>
<style type="text/css">
body {
	text-align: center;
}

h1 {
	text-align: left;
	border-bottom: 3px solid black;
}
</style>
<script type="text/javascript">
</script>
</head>
<body>
	<h1>아이디 중복 확인</h1>
	<form action="CheckIdServlet" id="twoform" method="post">
		<input type="text" name="idcheck" name ="id" id="idcheck" value = "${sessionScope.idfield}">
	</form>
	<c:choose>
		<c:when test="${sessionScope.idcheck eq 'false' || empty sessionScope.idcheck}">
			<button onclick="Checkid()">중복확인</button>
		</c:when>
		<c:when test="${sessionScope.idcheck eq 'true'}">
			<button onclick="Changeid()">변경하기</button>
			<script>
				document.getElementById("idcheck").readOnly = true;
			</script>
			<button onclick="passValueAndClose()">사용하기</button>
		</c:when>
	</c:choose>
			<script type="text/javascript">
			var form = document.member;
			var idPattern = /^[a-zA-Z0-9]{5,20}$/; //ID pattern (5-20 letters or numbers)
			
			function Checkid() {
			var id = document.getElementById("idcheck").value;
				if (!idPattern.test(id)) {
					alert("ID는 5~20자의 영문 대소문자와 숫자로만 입력해주세요.");
					return;
				}
				document.getElementById("twoform").action = "CheckIdServlet";
				document.getElementById("twoform").submit();
			}
			function Changeid() {
				document.getElementById("twoform").action = "CheckOutIdServlet";
				document.getElementById("twoform").submit();
			}
			function passValueAndClose() {
				var idField = '${sessionScope.idfield}'; // 세션에서 실제 값을 가져옴

				// 요소가 존재하는지 확인 후 값 설정
				if (idField !== null && idField !== undefined) {
				  var idElement = window.opener.document.getElementById("idInput");
				  if (idElement !== null) {
				    idElement.value = idField;
				    idElement.readOnly = true;
				  }
				}
				window.close();
			}
			</script>
</body>
</html>