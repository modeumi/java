<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%

	%>
	<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	%>

	<sql:setDataSource var="dataSource"
		url="jdbc:mysql://localhost:3306/JSPBookDB?autoReconnect=true&verifyServerCertificate=false&useSSL=true"
		driver="com.mysql.jdbc.Driver" user="root" password="java" />
	<sql:query dataSource="${dataSource}" var="resultSet">
	SELECT ID FROM pokemon where ID = ? AND PASS = ?
	<sql:param value="<%=id%>" />
		<sql:param value="<%=pass%>" />
	</sql:query>

	<c:forEach var="row" items="${resultSet.rowsByIndex}">
		<c:forEach var="column" items="${row}" varStatus="i">
			<c:if test="${column != null}">
				<c:out value="${column}" />
			</c:if>
		</c:forEach>
	</c:forEach>
	<c:if test = "${resultSet.rowCount == 0 }">
	<p> 로그인에 실패 </p>
	</c:if>



</body>
</html>