<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	%>
	<sql:setDataSource var="dataSource"
		url="jdbc:mysql://localhost:3306/JSPBookDB"
		driver="com.mysql.jdbc.Driver" user="root" password="java" />
	<sql:update dataSource = "${dataSource}" var = "resultSet">
		DELETE FROM member where id = ? and pass = ?
		<sql:param value = "<%=id%>"/>
		<sql:param value = "<%=pass%>"/>
	</sql:update>
	<c:import var = "url" url= "sql01.jsp" />
	${url}

</body>
</html>