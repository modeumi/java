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
	<jsp:setProperty name = "person" property="name" value = "ȫ�浿"/>
	<p> ���̵� : <jsp:getProperty property="id" name="person"/>
	<p> �� �� : <jsp:getProperty property="name" name="person"/>
	<%-- 	���� 2���̶� ���Ͽ� property�� name�� ������ ������ٸ� ǥ���ϴµ�  --%>
</body>
</html>