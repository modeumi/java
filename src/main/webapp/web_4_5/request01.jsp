<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta charset="EUC-KR">
<title>Implicit Objects</title>
</head>
<body>
	<form action="request01_process.jsp" method="post">
		<p> 아 이 디 : <input type="text" name="id">
		<p> 비밀번호 : <input type="text" name="pw">
		<p> <input type="submit" value="전송" />	
	</form>
	<%-- input은 scanner 같은것 
	 	type 에서 text는 텍스트박스, checkbox는 체크박스, submit은 버튼 같은 형식--%>
	 	
	<%-- 9~12번 줄을 해석하면 10~11의 정보를 request01_process.jsp 에 담아 전송한다.
	 	10과 11 은 아이디,비밀번호 : 라는 택스트를 넣고 그안에 text를 기입하는 
	 	공간을 만들어서 해당 공간에 입력된 값은 각각 request01_process.jsp의
	 	id,pw의 형식에 담는다. 
	 	12의 action 같이 사용되는 type="submit"을 통해 버튼형식으로 사용되며 그 버튼에는
	 	전송 이라는 문구를 넣는다. 
	 	   --%>
	

</body>
</html>