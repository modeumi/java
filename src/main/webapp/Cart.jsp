<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*" %>
<%@ page import="model.Item"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
padding-top: 54px;
}

</style>
</head>
<%@ include file = "header.jsp" %>
<body>

<br>

<% Map<Integer, Item> cart = (Map<Integer, Item>) session.getAttribute("cart"); %>
	<c:if test="${empty cart}">
    <img src = "img/empty.png">
</c:if>
<c:if test="${not empty cart}">
    <table border="2px">
        <c:forEach var="entry" items="${cart}">
            <c:set var="item" value="${entry.value}"/>
            <tr>
            </tr>
            <tr>
                <td rowspan="2"><img src="${item.getImg()}" width="200px" height="200px"></td>
                <td>${item.getName()} </td>
            </tr>
            <tr>
                <td>\ ${item.getPrice()} </td>
            </tr>
        </c:forEach>
    </table>
</c:if>
<p>
	<button onclick = "window.history.back()">
	<span><img src ="img/로고.png" width = '100px' height = '100px'></span>
	</button>
	<br>
	<br>
	<%@ include file = "footer.jsp" %>
</body>
</html>