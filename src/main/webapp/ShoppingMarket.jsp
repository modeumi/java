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
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Mobel</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">

<style type="text/css">
a {
	text-decoration: none;
}

p {
	display: block;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
}

button {
	writing-mode: horizontal-tb !important;
	text-rendering: auto;
	letter-spacing: normal;
	word-spacing: normal;
	text-transform: none;
	text-indent: 0px;
	text-shadow: none;
	font-size: inherit;
}

input, select {
	font-size: inherit;
	font-family: inherit;
	font-weight: inherit;
}

ul {
	display: block;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	padding-inline-start: 40px;
	list-style: none;
}

li {
	display: list-item;
	text-align: -webkit-match-parent;
}

footer, header, main {
	box-sizing: border-box;
	position: relative;
	display: block;
}

dl {
	display: block;
	margin-block-start: 1em;
	margin-block-end: 1em;
}

[class^="_"], [class*=" _"] {
	-webkit-font-smoothing: antialiased;
}

/* 위와 아래의 간격을 맞춰줌*/
blockquote, body, code, dd, div, dl, dt, fieldset, form, h1, h2, h3, h4,
	h5, h6, input, legend, li, ol, p, pre, td, textarea, th, ul {
	margin: 0;
	padding: 0;
}

.cont12-cart-wrap {
	-webkit-box-flex: 1;
	position: relative;
	background-color: #f5f5f5;
}

.container {
	margin-right: auto;
	margin-left: auto;
	width: 1136px;
	max-width: 100%;
	box-sizing: border-box;
	min-height: 1px;
}

.commerce-cart {
	position: relative;
}

/* .row { */
/* 	display: flex; */
/* 	flex-wrap: wrap; */
/* 	box-sizing: border-box; */
/* 	margin-right: -10px; */
/* 	margin-left: -10px; */
/* } */
.col-a11 {
	position: relative;
	min-height: 1px;
	box-sizing: border-box;
	-webkit-box-flex: 0;
}

.commerce-cart__content {
	margin: 0;
	padding-top: 30px;
	padding-bottom: 20px;
	position: relative;
}

.commerce-cart__header-wrap {
	z-index: 100;
}

.commerce-cart__header {
	padding: 0 21px;
	background: none;
	border: none;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: justify;
	justify-content: space-between;
	box-sizing: border-box;
	margin-bottom: 11px;
}

.commerce-cart__header__left, .commerce-cart__header__right {
	flex-basis: auto;
	margin: -9px;
}

.commerce-cart__group {
	margin-bottom: 12px;
}

.commerce-cart__group__header {
	border: solid #ededed;
	border-width: 1px 1px 0;
	border-radius: 6px 6px 0 0;
	padding-top: 10px;
	padding-bottom: 10px;
	font-size: 15px;
	font-weight: 500;
	line-height: 20px;
	text-align: center;
	color: #424242;
	background-color: #fff;
}

article {
	display: block;
}

.commerce-cart__group__item-list 
.commerce-cart__group__item:first-child {
	border-top-left-radius: 0;
	border-top-right-radius: 0;
}

.cart_delg {
	border-top-left-radius: 0;
	border-top-right-radius: 0;
	border: 1px solid #ededed;
	border-radius: 6px;
	margin-bottom: 12px;
	background-color: #fff;
}

.cart_dgpi {
	border-bottom: 1px solid #ededed;
	width: 100%;
} /* 이거 회색, 하얀색섞은거 */

/* .carted-product  */
.cart-p {
	padding: 3%;
	position: relative;
	margin-right: 2%;
	margin-bottom: 3%;
}

/* 상품체크박스 */
/* .carted-product__select */
.product-small-item {
	margin-right: 20px;
	margin-bottom: 12px;
	display: flex;
}

/* 이미지 적용 */
.product-small-item_image {
	-webkit-box-flex: 0;
	flex-basis: auto;
	position: relative;
	display: block;
	width: 70px;
	height: 70px;
	border-radius: 6px;
	background-color: #ededed;
	overflow: hidden;
}

/* 이미지 적용 */
.product-small-item_image img {
	display: block;
	position: absolute;
	top: 50%;
	left: 50%;
	width: 100%;
	transition: transform .2s;
	transform: translate(-50%, -50%) scale(1.0001);
}

.product-small-item_content {
	-webkit-box-flex: 1;
	flex-grow: 1;
	padding-left: 12px;
}

/* 타이틀 문구적용 */
.product-small-item__title {
	min-width: 0;
	font-size: 15px;
	font-weight: 500;
	color: #000;
	line-height: 21px;
	overflow-wrap: break-word;
	transition: opacity .1s;
}

/* 무료배송, 업체배송 문구 */
.css-deu01 {
	margin-top: 8px;
	font-weight: normal;
	font-size: 11px;
	line-height: 15px;
	color: rgb(117, 117, 117);
	overflow-wrap: break-word;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
}

.cart-p_delete {
	position: absolute;
	display: inline-block;
	top: 15px;
	right: 10px;
	padding: 5px;
	background: none;
	border: none;
	font-size: 0;
	transition: opacity .1s;
	color: #424242;
}

/*상품코드명 적용*/
.css-deu02 {
	position: relative;
	margin-bottom: 8px;
	padding: 12px;
	background-color: rgb(247, 249, 250);
	border-radius: 4px;
	color: rgb(47, 52, 56);
}

/*상품코드명 적용*/
.css-deu04 {
	position: absolute;
	display: inline-block;
	top: 0px;
	right: 0px;
	padding: 10px;
	background: none;
	border: none;
	font-size: 0px;
	transition: opacity 0.1s ease 0s;
	color: rgb(130, 140, 148);
}

.css-deu05 {
	display: inline-block;
	font-size: 16px;
	line-height: 1;
}

/* 수량추가 및 가격박스 */
/* .css-1nrstx4 */
.css-deu06 {
	display: flex;
	align-items: flex-end;
	-webkit-box-pack: justify;
	justify-content: space-between;
}

/* .css-i2qw7n  */
.css-deu07 {
	width: 70px;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: justify;
	justify-content: space-between;
	padding: 7px 6px;
	background: rgb(255, 255, 255);
	color: rgb(47, 52, 56);
	border: 1px solid rgb(218, 221, 224);
	border-radius: 4px;
	margin-top: 12px;
}

/* .css-ptm5qv */
.css-deu08 {
	display: inline-block;
	font-size: 18px;
	line-height: 1;
	cursor: pointer;
}

/* .css-d84j62 */
.css-deu09 {
	font-size: 14px;
	line-height: 18px;
	padding: 0px;
	border: 0px;
	background: none;
	color: rgb(47, 52, 56);
}

/* .css-sp8wxv  */
.css-deu10 {
	flex: 1 1 0%;
	text-align: right;
}

/* .css-1xrj6am  */
.cart-p_footer {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: justify;
	justify-content: space-between;
	margin-top: 16px;
}

.cart-p_footer_left {
	flex-basis: auto;
}

.cart-p_subtotal {
	flex-basis: auto;
	color: #000;
	font-size: 17px;
	font-weight: 700;
}

.cart-group_footer {
	padding-top: 10px;
	padding-bottom: 10px;
	font-size: 15px;
	line-height: 20px;
	text-align: center;
	color: #424242;
}

/* .commerce-cart__content__summary */
.cart-con_summary {
	display: none;
	background-color: #fff;
}

/* .commerce-cart__summary */
.cart_sum {
	padding-top: 10px;
	padding-right: 20px;
	padding-bottom: 10px;
	padding-left: 20px;;
}

/* .commerce-cart__summary__row */
.cart_sum_row {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: justify;
	justify-content: space-between;
	font-size: 15px;
	font-weight: 400;
	margin-top: 20px;
	margin-bottom: 20px;
	color: #424242;
}

/* .commerce-cart__summary__row>dd */
.cart_sum_row>dd {
	font-weight: 700;
	text-align: right;
}

/* .commerce-cart__summary__row>dt */
.cart_sum_row>dt {
	flex-basis: auto;
}

/* .commerce-cart__summary__row--total  */
.cart_sum_row-total {
	margin-top: 30px;
	margin-bottom: 20px;
	color: #000;
}

.cart_sum_row-total>dt {
	font-weight: 700;
}

.cart_sum_row-total>dd {
	font-size: 24px;
}

dd {
	display: block;
	margin-inline-start: 40px;
}

/*옆에 사이드 문구*/

/* .commerce-cart__side-bar-wrap */
.cart-side-wrap {
	display: inline;
	min-height: 1px;
	box-sizing: border-box;
	-webkit-box-flex: 0;
	max-width: 33.3333333333%;
}

/* .commerce-cart__side-bar */
.cart-side {
	padding-top: 20px;
	padding-bottom: 20px;
}

/* .commerce-cart__side-bar__summary */
.cart-side-sum {
	margin-bottom: 20px;
	border: 1px solid #ededed;
	border-radius: 6px;
	background-color: #fff;
}

/* .commerce-cart__side-bar__order__btn */
.cart-side_btn {
	display: block;
	width: 100%;
}

/* 사이드바 메뉴 상품 구매하기 버튼 */
._27do9 {
	padding: 15px 10px;
	line-height: 20px;
	font-size: 17px;
	min-height: 50px;
}

._3SroY {
	background-color: #40A940;
	border-color: #40A940;
	color: #fff;
}

._1eWD8 {
	user-select: none;
	position: relative;
	justify-content: center;
	align-items: center;
	box-sizing: border-box;
	font-family: "Noto Sans KR", "Noto Sans CJK KR", "맑은 고딕",
		"Malgun Gothic", sans-serif;
	font-weight: 700;
	text-align: center;
	cursor: pointer;
	margin: 0px;
	border-width: 1px;
	border-style: solid;
	border-image: initial;
	background-color: #40A940;
	text-decoration: none;
	border-radius: 4px;
}
.cart_delg__product-list{
width : 100%;
}
</style>
<script type="text/javascript">
//제품 삭제 (V)
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
    document.getElementById("totalpay"+itemId).innerHTML =  totalPrice;
    // 값을 서블렛으로 전송하여 갱신처리 
    document.getElementById("itemIdInput").value = itemId;
    document.getElementById("quantityInput").value = newQuantity;
    document.getElementById("myForm").submit();
    location.reload();
  }
  
</script>
</head>
<div style="padding-top: 54px"><%@ include file="header.jsp"%></div>
<body>
	<form id="myForm" action="updatecountServlet" method="post"
		target="_blank" style="display: none;">
		<input type="hidden" name="itemId" id="itemIdInput"> <input
			type="hidden" name="quantity" id="quantityInput">
	</form>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"></script>
	<br>
	<br>
	<br>

	<div class="cont12-cart-wrap">
		<div class="container">
			<div class="commerce-cart row">
				<div class="commerce-cart__content-wrap col-a13 col-a11">
					<div class="commerce-cart__content">
						<c:choose>
							<c:when test="${not empty cart}">
								<ul class="commerce-cart__content__group-list">
									<li class="commerce-cart__content__group-item">
										<article class="commerce-cart__group">
											<h1 class="commerce-cart__group__header">(주)더조은가구 배송</h1>
											<ul class="commerce-cart__group__item-list">
												<li class="commerce-cart__group__item">
													<article class="cart_delg">


														<c:forEach items="${cart}" var="itemEntry">
															<form action="deleteitemServlet" method="post"
																id="deleteitem">
																<input type="hidden" value="${itemEntry.key}" name="key">
															</form>
															<ul class="cart_delg__product-list">
																<li class="cart_dgpi"><article class="cart-p">
																		<a
																			class="product-small-item product-small-item--clickable"
																			href="#">
																			<div class="product-small-item_image">
																				<img alt="상품 이미지" src="${itemEntry.value.getImg()}">
																			</div>

																			<div class="product-small-item_content">
																				<h1 class="product-small-item__title">${itemEntry.value.getName()}</h1>
																				<p class="css-deu01">무료배송&nbsp;|&nbsp;업체직접배송</p>
																			</div>
																		</a>
																		<button class="cart-p_delete" type="button"
																			aria-label="삭제" onclick="submititem()">
																			<svg width="12" height="12" viewBox="0 0 12 12"
																				fill="currentColor"
																				preserveAspectRatio="xMidYMid meet">
                                                               
                                                               <path
																					fill-rule="nonzero"
																					d="M6 4.6L10.3.3l1.4 1.4L7.4 6l4.3 4.3-1.4 1.4L6 7.4l-4.3 4.3-1.4-1.4L4.6 6 .3 1.7 1.7.3 6 4.6z">
                                                               
                                                               </path></svg>
																		</button>
																		<ul class="carted-product__option-list">

																			<!-- __option-list__item" 상품코드박스 크기 늘려주는 용도-->
																			<li class="cart-p__option-list__item"><article
																					class="css-deu02">
																					<button type="button" aria-label="삭제"
																						class="css-deu04">
																						<span class="_dismiss_16 css-deu05"> </span>
																					</button>

																					<div class="css-deu06">
																						<div class="css-deu07 ">
																							<p>
																								<label>수량</span> <select name="quantity"
																									id="quantitydefault${itemEntry.key}"
																									onchange="changequantity(${itemEntry.key})">
																										<%
																										for (int i = 1; i <= 10; i++) {
																										%>
																										<option value="<%=i%>"><%=i%></option>
																										<%
																										}
																										%>
																								</select> <script>
					                                                                var countValue = ${itemEntry.value.getCount()}
					                                                                var quantitydefault = document.getElementById("quantitydefault${itemEntry.key}");
					                                                                quantitydefault.value = countValue;
					                                                                </script>
																						</div>
																						<div class="css-deu10 ">
																							가격 : <span id="itemprice${itemEntry.key}">
																								${itemEntry.value.getPrice()} 원</span>
																						</div>
																					</div>
																				</article></li>
																		</ul>
																		<div class="cart-p_footer">
																			<span class="cart-p_footer_left"> </span> <span
																				class="cart-p_subtotal"> <span
																				class="cart-p_subtotal_number">총금액 :
																		 <span id="totalpay${itemEntry.key}" onchange="changepay()">
																						${itemEntry.value.getPrice() * itemEntry.value.getCount()}
																				</span>
																			</span>원
																			</span>
																		</div>
																	</article></li>
															</ul>
														</c:forEach>
														<c:set var="totalCount" value="0" />
														<c:set var="totalPrice" value="0" />

														<c:forEach items="${cart}" var="itemEntry">
															<c:set var="item" value="${itemEntry.value}" />
															<c:set var="count" value="${item.getCount()}" />
															<c:set var="price" value="${item.getPrice()}" />

															<c:set var="totalCount" value="${totalCount + count}" />
															<c:set var="totalPrice"
																value="${totalPrice + count * price}" />
														</c:forEach>
														<div class="cart-side-wrap">
															<div class="sticky-container cart-side-container"
																style="position: sticky; top: 80.75px; transition: top 0.1s ease 0s;">
																<div class="sticky-child cart-side"
																	style="position: relative;">
																	<dl class="cart_sum cart-side-sum">
																		<div class="cart_sum_row">
																			<dt>총 상품금액</dt>
																			<dd>
																				<span class="number">${totalPrice} </span>원
																			</dd>
																		</div>
																		<div class="cart_sum_row">
																			<dt>예상 적립 포인트</dt>
																			<dd>
																				<span class="number">${Math.round(totalPrice/100)}
																				</span>P
																			</dd>
																		</div>
																	</dl>
																</div>

																<div class="cart-side_order">
																	<a href="PurchasePage2.jsp"><button
																			class="_1eWD8 _3SroY _27do9 cart-side_btn"
																			type="button">
																			<span> 총 </span> <span> ${totalCount} 개 </span> <span>구매하기</span>
																		</button> </a>
																</div>
															</div>
														</div>
														<footer class="cart-group_footer">
															<p class="cart-group_total">배송비 무료</p>
														</footer>
													</article>
												</li>
											</ul>
										</article>
									</li>
								</ul>
							</c:when>
							<c:when test="${empty cart}">
							<h2> 장바구니가 비어있네요! </h2>
 <a href = "Item_desk.jsp"><img src= "img/empty_cart.png" width="150px" height="150px">
 <h5>상품 보러가기</h5></a>
							</c:when>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<footer><%@ include file="footer.jsp"%></footer>
</body>
</html>