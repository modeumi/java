<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*"%>
<%@ page import="model.*"%>
<%
Map<Integer, ItemHistory> itemhistory = (Map<Integer, ItemHistory>) session.getAttribute("itemhistory");
Map<Integer, Review> myreview = (Map<Integer, Review>) session.getAttribute("myreview");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	padding-top: 55px;
}
a {
	text-decoration-line: none;
}
section {
	display: flex;
	align-items: center;
	justify-content: center;
	/* 	height: 100vh; */
}

.box {
	display: flex;
	align-items: center;
	justify-content: center;
}

.point, .ing {
	width: 1000px;
	height: 200px;
	background-color: white;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.3);
	list-style-type: none;
}

.box2 {
	width: 200px;
	height: 50px;
	background-color:#98FB98;;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.3);
	list-style-type: none;
}

.nickname {
	text-align: left
}

.empty-space {
	height: 115px;
}
</style>
</head>
<%@ include file="header.jsp"%>
<body>
	<%@ include file="Mypage.jsp"%>
	<nav>
		<%@ include file="nav.jsp"%>
		<hr>
	</nav>
	<section>
		<div class="point">
			<h3 class="nickname"></h3>
			<c:choose>
					<c:when test="${empty sessionScope.log_nickname}">
						<!-- Display default text when session attribute is empty -->
						<h4>Default Nickname님 반갑습니다.</h4>
					</c:when>
					<c:otherwise>
						<!-- Display session attribute value when it exists -->
						<h4><c:out value="${sessionScope.log_nickname}"/> 님 반갑습니다.</h4>
					</c:otherwise>
				</c:choose>
				<c:set var = "purchasecount" value = "${itemhistory.size()}" />
				<c:set var = "reviewcount" value = "${myreview.size()}" />
			<br>
			<div class="box">
				<table class="box2">
					<tr>
						<td>0<br>포인트
						</td>
						<td>|</td>
						<td>${purchasecount}<br>구매한상품
						</td>
						<td>|</td>
						<td>${reviewcount}<br>리뷰
						</td>
				</table>
				<div style = "text-align: center;"> 
				<a href = "PurchaseHistory.jsp"><img src = "img/bill.jpg" width="150px" height="150px"> 구매내역 </a>
				<div> 포인트 잔액 : ${sessionScope.log_point}</div>
			</div>
		</div>
	</section>
	<section>
		<div class="empty-space"></div>
	</section>
	<section>
		<div class="ing">
			<h3 class="product">진행중인 상품</h3>
			<br>
			<div class="box2">
				<table>
					<tr>
						<td>0<br>포인트
						</td>
						<td>|</td>
						<td>0<br>쿠폰
						</td>
						<td>|</td>
						<td>${reviewcount}<br>리뷰
						</td>
				</table>
			</div>
		</div>

	</section>
	<section>
		<div class="empty-space"></div>
	</section>
	<footer><%@ include file="footer.jsp"%></footer>
</body>
</html>