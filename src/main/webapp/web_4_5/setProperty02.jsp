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
	<p> 아이디 : <jsp:getProperty name="person" property="id" />
	<p> 이 름 : <jsp:getProperty name="person" property="name"/>
<%-- 	<p> 아이디 : <%=person.getId()%> --%>
<%-- 	<p> 이름 : <%=person.getName()%> --%>
<%--	위와 같은 출력 결과 --%>
		
	
</body>
</html>