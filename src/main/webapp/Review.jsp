<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="model.Item"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	Map<Integer, Review> review = (Map<Integer, Review>) session.getAttribute("rewiew");
	Map<Integet, Reviewimg> img = (Map<Integer, Reviewimg>) session.getAttribute("rewiewimg");
	%>
	<c:if test="${empty review }">

	</c:if>
	<c:forEach var="entry" items="${review}">
		<c:set var="review" value="${entry.value}" />
		<table border="2px">
			<tr>
					<c:forEach var="imgentry" items="${img}">
						<c:set var="image" value="${imgentry.value}" />
						<td><img src="${img.getImg}"></td>
					</c:forEach>
				<td rowspan="3"><img src="${review.getImg }"></td>
				<td>${review.getName} <br>${review.getStar} /
					${review.getDate}
				</td>
			</tr>
			<tr>
				<td>${review.getText}</td>
			</tr>
		</table>
	</c:forEach>

</body>
</html>