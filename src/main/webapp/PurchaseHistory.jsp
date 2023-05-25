<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="model.*"%>
<%
Map<Integer, ItemHistory> itemhistory = (Map<Integer, ItemHistory>) session.getAttribute("itemhistory");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>möbel</title>
<style type="text/css">
body {
	padding-top: 54px;
}

#banner {
	margin: 10%;
	margin-top : 3%;
	margin-bottom : 3%;
	border: 5px solid #32CD32;
	border-radius: 20px;
	width: 80%;
	height: 10%;
	text-align: center;
	background-color: lightgreen;
}

.itembody {
	margin-left: 10%;
	width: 80%;
	height: 100%;
	background-color: lightgreen;
	border: 5px solid #32CD32;
	border-radius: 20px;
}

.itemhis {
	margin: 2.5%;
	padding: 10px;
	background-color: white;
	width: 95%;
	display: block;
	text-align: left;
}

.itemimg {
text-align :left;
	width: 20%;
	display: inline-block;
}

.itemtext {
text-align :left;
	width: 60%;
	height: 20%;
	display: inline;
}

.itemdate {
	width: 80%;
	height: 10%;
	display: block;
	text-align: left;
}

.textslot {
	display: inline-grid;
}
.review_button {
 text-align: right;
 margin-right: 20px;
}
</style>
<script type="text/javascript">

function gocart(ordernum){
	document.getElementById(ordernum).action = "AddcartServlet";
	alert("장바구니에 등록되었습니다.");
	document.getElementById(ordernum).submit();
	
}

function gowrite(ordernum){
	document.getElementById(ordernum).action = "ReviewServlet";
	 document.getElementById(ordernum).submit();
	 var reviews = window.open('dummy.jsp','','width = 450px,height = 700px ,resizable=no, scrollbars=0');
}
</script>

<%@ include file="header.jsp"%>

</head>
<body>
	<div id="banner">
		<h2>구매내역</h2>
	</div>
	<div class="itembody">
		<c:if test="${empty itemhistory }">
			<div>
				아직 구매 내역이 없네영 <br> 물건을 사러 가세여
			</div>
			<div>
				<a href="Item_desk.jsp"> 물건 보러가기</a>
			</div>
		</c:if>
		<c:if test = "${not empty itemhistory}">
			<c:forEach var="items" items="${itemhistory}">
				<form action = "AddcartServlet" id = "${items.key}" method = "post">
				<input type="hidden" name = "reviewitem" value = "${items.key}">
				<input type="hidden" name = "reviewhistory" value = "${items.value.getReview()}">
				<input type="hidden" name = "itemnum" value = "${items.value.getItemid()}">
				<input type="hidden" name = "page" value = "PurchaseHistory.jsp">
				<input type="hidden" name = "quantity" value = "1">
				</form>
				<div class="itemhis">
					<div class="itemdate">주문 일자 : ${items.value.getDate()}</div>
						<span><img src="${items.value.getImg()}" class="itemimg"></span>
				<span class = "textslot">
					<span>
						상품명 : <a href="${items.value.getUrl()}">
							${items.value.getItemname()}</a></span>
					<span>금액 : ${items.value.getPrice()}</span>
					<span>수량 : ${items.value.getCount()}</span>
				</span>
				<div class = "review_button">
				
				<a href = "#" onclick  = "gocart('${items.key}')">
				<img src = "img/gocart.png"width="200px" height="70px"></a>
				
				<a href = "#" onclick = "gowrite('${items.key}')">
<!-- 				작성한 리뷰가 없을때 -->
				<c:if test = "${items.value.getReview() eq 'N'}">
				<img src = "img/review.png"width="200px" height="70px">
				</c:if >
<!-- 				리뷰가 있을때 -->
				<c:if test = "${items.value.getReview() eq 'Y' }">
				<img src = "img/updatereview.png"width="200px" height="70px">
				</c:if>
				
				</a>
				
				</div>
				</div>
					<hr />
			</c:forEach>
		</c:if>
	</div>


	<%@ include file="footer.jsp"%>
</body>
</html>