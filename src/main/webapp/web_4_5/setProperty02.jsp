<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="person" class="ch04.com.dto.Person" scope="request" />
	<p> ���̵� : <jsp:getProperty name="person" property="id" />
	<p> �� �� : <jsp:getProperty name="person" property="name"/>
<%-- 	<p> ���̵� : <%=person.getId()%> --%>
<%-- 	<p> �̸� : <%=person.getName()%> --%>
<%--	���� ���� ��� ��� --%>
		
	
</body>
</html>