<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
    position: absolute;
    width: 100%;
    height: 100%;
	padding-top: 54px;
}

section {
	display: flex;
	align-items: center;
	justify-content: center;
	/* 	height: 100vh; */
}

/* 추가한 스타일 */
nav{
padding-top: 10px;
padding-bottom: 10px;
}

</style>
</head>
<%@ include file="header.jsp"%>
<body>
<div class="mainframe">
	
	<nav>
		<%@ include file="nav.jsp"%>
		<hr>
	</nav>
	<%@ include file="Mypage.jsp"%>
	
	<footer><%@ include file="footer.jsp"%></footer>
</body>
</html>