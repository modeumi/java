<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isErrorPage="true" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<p>오류가 발생하였습니다.
	<p> 예외 유형 : <%=exception.getClass().getName()%>
	<p> 오류 메시지 : <%=exception.getMessage() %>
	

</body>
</html>