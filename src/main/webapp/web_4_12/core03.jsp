<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>구구단</h3>
	<table border="1">
		<c:forEach var="i" begin="1" end="9">
			<tr>
				<td colspan="9" width=100>${i} 단</td>
			</tr>
			<tr>
				<c:forEach var="j" begin="1" end="9">
					<td width=100>${i} X ${j} = ${i*j}</td>
				</c:forEach>
			</tr>
		</c:forEach>
	</table>

</body>
</html>