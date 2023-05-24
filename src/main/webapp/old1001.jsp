<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*"%>
<%@ page import="model.*"%>

<%
String logId = (String) session.getAttribute("log_id");
Map<Integer, Item> ItemField = (Map<Integer, Item>) session.getAttribute("ItemField");
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
					<input type="hidden" name="itemnum" value="1001">
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
	</div>
	<%@ include file="reviewform.jsp"%>
	<%@ include file="footer.jsp"%>
</body>
</html>