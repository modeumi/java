<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page errorPage="ErrorPage_Error.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	name �Ķ���� : <%=request.getParameter("name").toUpperCase() %>
		
</body>
</html>