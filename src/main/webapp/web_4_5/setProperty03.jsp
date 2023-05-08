<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="person" class= "ch04.com.dto.Person"/>
	<jsp:setProperty name = "person" property="id" value="20182005" />
	<jsp:setProperty name = "person" property="name" value = "홍길동"/>
	<p> 아이디 : <jsp:getProperty property="id" name="person"/>
	<p> 이 름 : <jsp:getProperty property="name" name="person"/>
	<%-- 	예제 2번이랑 비교하여 property와 name의 순서는 상관없다를 표현하는듯  --%>
</body>
</html>