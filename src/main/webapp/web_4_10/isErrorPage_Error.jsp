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
	<p>������ �߻��Ͽ����ϴ�.
	<p> ���� ���� : <%=exception.getClass().getName()%>
	<p> ���� �޽��� : <%=exception.getMessage() %>
	

</body>
</html>