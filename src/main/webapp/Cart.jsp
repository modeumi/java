<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="model.Item"%>
<%
Map<Integer, Item> cart = (Map<Integer, Item>) session.getAttribute("cart");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	padding-top: 54px;
}

.banner_top {
	background-color: #EAEAEA;
	text-align: center;
	border: 4px groove #D5D5D5;
	font-size: 20px;
	font-face: '맑은고딕';
	margin-left: 10%;
	margin-bottom: 20px;
	width: 80%;
	height: 40px;
	width: 80%;
}

.mainbut {
	margin-top: 15px;
	text-align: center;
	width: 20%;
	height: 30px;
	background-color: white;
	border: 2px solid black;
	text-align: center;
}

li {
	list-style: none;
}

body a {
	text-decoration-line: none;
}

.itemlist {
	text-align: left;
}

#itemfield {
	width: 50%;
	height: 100%;
	margin-left: 10%;
	padding: 10px;
	border: 2px solid black
}

#quantity {
	width: 30px;
}
</style>

<script type="text/javascript">
// 체크박스에 따른 상태 변경

// 아이템 제거 -------------------------------------------
function removeItem(itemId) {
	  // cart 맵에서 아이템 제거
	  cart.delete(itemId);

	  // 페이지 새로고침
	  location.reload();
	}
	
//아이템 수량 변경 -----------------------------------------------------------------
function decreasecount(event) {
	event.preventDefault();
	var quantityInput = document.getElementById("quantity");
	var quantity = parseInt(quantityInput.value);
	if (quantity > 1) {
	  quantityInput.value = quantity - 1;
	}
	alert(quantity);
}

function increasecount(event) {
	event.preventDefault();
	var quantityInput = document.getElementById("quantity");
	var quantity = parseInt(quantityInput.value);
	quantityInput.value = quantity + 1;
}
var ans;
function submititem(){
	const deletei = window.open("deleteitem.jsp", "delete",
			"width = 300px, height = 200px");
	deletei.onbeforeunload = function() {
		if (ans == 1){
		document.getElementById("deleteitem").submit();
		}
	}
}
</script>

</head>
<%@ include file="header.jsp"%>
<body>

	<div class="banner_top">장바구니 현황</div>
	<br>
	<c:if test="${empty cart}">
		<img src="img/empty.png" style='margin: 30px'>
		<br>
		<a href="Item_desk.jsp"><button class="mainbut">상품 보러가기</button></a>
	</c:if>
	<c:if test="${not empty cart}">
		<div id="itemfield">
			<c:forEach items="${cart}" var="itemEntry">
				<div class="itemlist">
					<div>
					<form action = "deleteitemServlet" method = "post"  id= "deleteitem">
					<input type = "hidden" value = "${itemEntry.key}" name = "key">
					</form>
					<a href = "#"  onclick = "submititem()"><img src = "img/delete.png" width = "20px" height = "20px"></a>
<!-- 						<input type="checkbox" name="itemIds" -->
<%-- 							value="${itemEntry.key}" onchange="updateSelectedItems();" --%>
<!-- 							 checked="checked"> -->
					</div>
					<div>
						<img src="${itemEntry.value.getImg()}"
							width="200px" height="200px">
					<div>${itemEntry.value.getName()}</div>
					</div>
					<div>
						<div>\ ${itemEntry.value.getPrice()}</div>
					</div>
				</div>
				<div>
					수량
					<button onclick="decreasecount();">-</button>
					<input type="text" id="quantity" class="quantity"
						value="${itemEntry.value.getCount()}" readonly>
					<button onclick="increasecount();">+</button>
				</div>
				<div>
					총금액 : <span id="totalpay"> ${itemEntry.value.getPrice() * itemEntry.value.getCount()}
					</span>
				</div>
			</c:forEach>
		</div>
	</c:if>
	<p>
	<div>
		<span> 결재금액 </span> <span id="totalPrice"> 결재금액 </span> 원
	</div>
	<button>
		<span id="itemCount"> 상품 토탈갯수 </span> <span> 개 상품 구매하기</span>
	</button>
	<br>
	<button onclick="window.history.back()">
		<span>뒤로가기</span> <span><img src="img/로고.png" width='30px'
			height='30px'></span>
	</button>
	<br>
	<br>
	<%@ include file="footer.jsp"%>
</body>
</html>