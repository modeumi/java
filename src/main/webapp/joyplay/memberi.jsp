<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page import = "java.sql.*" %>
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
	%>
	
	<sql:setDataSource var="dataSource"
		url="jdbc:mysql://localhost:3306/JSPBookDB"
		driver="com.mysql.jdbc.Driver" user="root" password="java" />
	<sql:query dataSource="${dataSource}" var="resultSet">
	SELECT * from pokemon where id = ?
		<sql:param value="<%=id%>" />
	</sql:query>
<c:forEach var="row" items="${resultSet.rows}">
    <c:out value="${row.columnName}" />
</c:forEach>
</body>
</html>