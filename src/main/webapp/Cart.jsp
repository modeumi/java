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

// 제품 삭제 (V)
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
// 제품 수량 변경(V)
function changequantity(itemId) {
	// itemId가 곧 itementry.key 니까 아래방법으로 가져와도 무관
    var quantitySelect = document.getElementById("quantitydefault" + itemId);
	// 선택한 값을 new로 int값으로 저장 
	var newQuantity = parseInt(quantitySelect.options[quantitySelect.selectedIndex].value);
    // 같은 방법으로 itemid에 맞는 가격을 가져옴
	var itemPriceElement = document.getElementById("itemprice" + itemId);
	var itemPrice = parseInt(itemPriceElement.innerHTML);
    var totalPrice = itemPrice * newQuantity;
    document.getElementById("totalpay"+itemId).innerHTML = totalPrice;
    // 값을 서블렛으로 전송하여 갱신처리 
    document.getElementById("itemIdInput").value = itemId;
    document.getElementById("quantityInput").value = newQuantity;
    document.getElementById("myForm").submit();
    location.reload();
  }

</script>

</head>
<%@ include file="header.jsp"%>
<body>

<form id="myForm" action="updatecountServlet" method="post" target="_blank" style="display: none;">
  <input type="hidden" name="itemId" id="itemIdInput">
  <input type="hidden" name="quantity" id="quantityInput">
</form>


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
						<form action="deleteitemServlet" method="post" id="deleteitem">
							<input type="hidden" value="${itemEntry.key}" name="key">
						</form>
						<a href="#" onclick="submititem()"><img src="img/delete.png"
							width="20px" height="20px"></a>
					</div>
					<div>
						<img src="${itemEntry.value.getImg()}" width="200px"
							height="200px">
						<div>${itemEntry.value.getName()}</div>
					</div>
					<div>
						<div>
							<span>\</span> <span id="itemprice${itemEntry.key}">${itemEntry.value.getPrice()}
							</span>
						</div>
					</div>
				</div>
				<div>
					수량 <select name="quantity" id="quantitydefault${itemEntry.key}"
						onchange="changequantity(${itemEntry.key})">
						<%
						for (int i = 1; i <= 10; i++) {
						%>
						<option value="<%=i%>"><%=i%></option>
						<%
						}
						%>
					</select>
					<script>
					  var countValue = ${itemEntry.value.getCount()}
					  var quantitydefault = document.getElementById("quantitydefault${itemEntry.key}");
					  quantitydefault.value = countValue;
					</script>
				</div>
				<div>
					총금액 : <span id="totalpay${itemEntry.key}" onchange = "changepay()">
						${itemEntry.value.getPrice() * itemEntry.value.getCount()} </span> 
				</div>
			</c:forEach>
			<script>
			var sendprice = document.getElementById("totalpay${itemEntry.key}");
			var sendcount = document.getElementById("quantitydefault${itemEntry.key}");
			</script>
		</div>
		<div>
		</div>
		<p>
		 <c:set var="totalCount" value="0" />
		  <c:set var="totalPrice" value="0" />
		
		  <c:forEach items="${cart}" var="itemEntry">
		    <c:set var="item" value="${itemEntry.value}" />
		    <c:set var="count" value="${item.getCount()}" />
		    <c:set var="price" value="${item.getPrice()}" />
		
		    <c:set var="totalCount" value="${totalCount + count}" />
		    <c:set var="totalPrice" value="${totalPrice + count * price}" />
		  </c:forEach>

  <div>
    총 결제 금액: ${totalPrice} 원
  </div>
		<button>
		<span> 총 </span>
		<span> ${totalCount} 개 </span>
			<span>구매하기</span>
		</button>
		<br>
		<button onclick="window.history.back()">
			<span>뒤로가기</span> <span><img src="img/로고.png" width='30px'
				height='30px'></span>
		</button>
	</c:if>
	<br>
	<br>
	<%@ include file="footer.jsp"%>
</body>
</html>