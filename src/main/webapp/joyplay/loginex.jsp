<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page import = "ch04.com.dto.MemberDB" %>
	<sql:setDataSource var="dataSource"
		url="jdbc:mysql://localhost:3306/JSPBookDB?autoReconnect=true&verifyServerCertificate=false&useSSL=true"
		driver="com.mysql.jdbc.Driver" user="root" password="java" />
	<sql:query dataSource="${dataSource}" var="resultSet">
	SELECT ID FROM pokemon 
	</sql:query>
	<c:forEach var="row" items="${resultSet.rowsByIndex}">
		<c:forEach var="column" items="${row}" varStatus="i">
<%-- 			<c:if test="${column != null}"> --%>
<%-- 				<c:out value="${column}" /> --%>
<%-- 			</c:if> --%>
		</c:forEach>
	</c:forEach>
	<sql:query dataSource="${dataSource}" var="resultSetp">
	SELECT PASS FROM pokemon 
	</sql:query>
	<c:forEach var="rowp" items="${resultSetp.rowsByIndex}">
		<c:forEach var="columnp" items="${rowp}" varStatus="i">
<%-- 			<c:if test="${columnp != null}"> --%>
<%-- 				<c:out value="${columnp}" /> --%>
<%-- 			</c:if> --%>
		</c:forEach>
	</c:forEach>
<%-- 	<c:if test = "${resultSet.rowCount == 0 }"> --%>
<!-- 	<p> 로그인에 실패 </p> -->
<%-- 	</c:if> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function login (){
	alert (${column});
	alert (${columnp});
// if (document.loginform.id.value.equals(${column}&&document.loginform.pass.value.equals(${columnp}){
// 	window.location.href = "pokemon.html";
// }
// 	alert ("로그인 실패");	
	
// }
}
</script>
</head>
<body>
<% 
MemberDB member = new MemberDB();
%>

<h2>-------- 로그인 ----------</h2> 
<form name = "login" >
<p>아이디 : <input type="text" name = "id" id = "id">
<p>비밀번호 : <input type="text" name = "pass" id = "pass">
<p><input type="button" value = "로그인" onclick="login();">



<%-- 	<sql:setDataSource var="dataSource" --%>
<%-- 		url="jdbc:mysql://localhost:3306/JSPBookDB?autoReconnect=true&verifyServerCertificate=false&useSSL=true" --%>
<%-- 		driver="com.mysql.jdbc.Driver" user="root" password="java" /> --%>
<%-- 	<sql:query dataSource="${dataSource}" var="resultSet"> --%>
<!-- 	SELECT ID FROM pokemon  -->
<%-- 	</sql:query> --%>

<%-- 	<c:forEach var="row" items="${resultSet.rowsByIndex}"> --%>
<%-- 		<c:forEach var="column" items="${row}" varStatus="i"> --%>
<%-- 			<c:if test="${column != null}"> --%>
<%-- 				<c:out value="${column}" /> --%>
<%-- 			</c:if> --%>
<%-- 		</c:forEach> --%>
<%-- 	</c:forEach> --%>
<%-- 	<c:if test = "${resultSet.rowCount == 0 }"> --%>
<!-- 	<p> 로그인에 실패 </p> -->
<%-- 	</c:if> --%>



</form>

</body>
</html>