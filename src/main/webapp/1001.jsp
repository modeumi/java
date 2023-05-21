<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="model.*"%>

<%
String logId = (String) session.getAttribute("log_id");
Map<Integer, Review> review = (Map<Integer, Review>) session.getAttribute("reviews");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
td {
	text-align: center;
}

body {
	z-index: 1;
	padding-top: 54px;
}

#itempage {
	display: flex;
	position: relative;
	margin-top: 30px;
	width: 80%;
	height: 100%;
	flex-direction: row;
	align-items: center;
}

#itemimg {
	position: relative;
	width: 70%;
	height: 30%;
}

#iteminfo {
	position: relative;
	width: 35%;
	height: 30%;
}

#but {
	margin-top: 70px;
}

#quantity {
	width: 30px;
}

#reviewpage {
	margin-top: 20px;
}

#review_banner {
	background-color: glay;
	border: 2px solid black;
	text-align: center;
	font: bold;
	width: 100%;
	height: 10%;
}

.reviewslot {
	margin: 5%;
	padding: 5%;
	width: 100%;
	display: block;
}

.itemhis {
	padding: 10px;
	background-color: white;
	width: 90%;
	display: block;
	text-align: left;
}
</style>
<script type="text/javascript">
		var sessionValue = "<%=logId%>
	";

	function decreaseQuantity() {
		event.preventDefault();
		var quantityInput = document.getElementById("quantity");
		var quantity = parseInt(quantityInput.value);
		if (quantity > 1) {
			quantityInput.value = quantity - 1;
		}
	}

	function increaseQuantity() {
		event.preventDefault();
		var quantityInput = document.getElementById("quantity");
		var quantity = parseInt(quantityInput.value);
		quantityInput.value = quantity + 1;
	}

	function opencart() {
		if (sessionValue !== "null") {
			document.getElementById("itemnum").action = "AddcartServlet";
			document.getElementById("itemnum").submit();
			const cart = window.open("addcart.jsp", "cart",
					"width = 300px, height = 200px");
			cart.opnert = window;
		} else {
			alert("로그인을 먼저 해주십시오.");
			location.href = "login.jsp";
		}
	}

	function gobuy() {
		if (sessionValue !== "null") {
			document.getElementById("itemnum").action = "NowBuyServlet";
			document.getElementById("itemnum").submit();
		} else {
			alert("로그인을 먼저 해주십시오.");
			location.href = "login.jsp";
		}
	}
</script>
<%@ include file="header.jsp"%>
</head>
<body>

	<div id="itempage">
		<div id="itemimg">
			<img src="img/desk/desk1.png" width="400px" height="400px">
		</div>
		<div id="iteminfo">
			<div>
				이뿐 하얀색 책상 <br> 색상 : white <br> 가격 : ${session.item_price}
				원 <br> 배송비 : 3000 원
			</div>
			<div id="but">
				<form id="itemnum" action="AddcartServlet" method="post">
					<input type="hidden" name="itemnum" value="1001"> <input
						type="hidden" name="page" value="1001.jsp">
					<div>수량</div>
					<br>
					<button onclick="decreaseQuantity()">-</button>
					<input type="text" id="quantity" name="quantity" value="1" readonly>
					<button onclick="increaseQuantity()">+</button>
					<p>
					<hr />
					<a href="#" onclick="gobuy()"><img src="img/buy.png"
						width="100px" height="40px"> </a> <a href="#"
						onclick="opencart()"><img src="img/cart.png" width="100px"
						height="40px"></a>
				</form>
			</div>
		</div>
		<div id="reviewpage">
			<c:if test="${empty review }">
		등록된 리뷰가 없습니다 .
		</c:if>
			<c:otherwise>
				<c:forEach var="review" items="${review}">
					<div class="reviewslot">
						<div class="itemdate">주문 일자 : ${review.getDate()}</div>
						<br>
						<div class="itemhis">
						<div> <img src="img/${review.getImg().getImage1()}" onmouseup="올리면 이미지 바뀌는거" onmouseout="때면 이미지 원상복구"></div>
							<div id="smallwidth">
								<img src="img/${review.getImg().getImage1()}" class="itemimg">
							</div>
							<div class="textslot">
								<span> ${review.getText()}</span>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:otherwise>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>