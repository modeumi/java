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
.fontst {
	font-size: 20px;
	font-face: '맑은고딕';
}

/*footer*/
.css-a23 {
	padding: 40px 0px;
	background-color: rgb(247, 249, 250);
}

.css-a24 {
	/*padding: 0px 16px;*/
	padding: 0px 60px;
	box-sizing: border-box;
	font-size: 12px;
	line-height: 16px;
	display: grid;
	grid-template-columns: 1fr 1px 1fr 1px 2fr;
	column-gap: 30px;
}

.css-a25 {
	color: rgb(47, 52, 56);
}

.css-a26 {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	gap: 2px;
}

.css-a27 {
	font-size: 18px;
	line-height: 24px;
	font-weight: 700;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
}

.css-a28 {
	display: inline-block;
	font-size: 12px;
	line-height: 1;
}

.css-a29 {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	margin: 20px 0px 8px;
}

.css-a30 {
	font-size: 16px;
	line-height: 20px;
	font-weight: 700;
	white-space: nowrap;
	margin-right: 6px;
}

.css-a31 {
	font-size: 14px;
	line-height: 20px;
}

.css-a32 {
	font-size: 12px;
	line-height: 20px;
	white-space: pre-wrap;
	margin-bottom: 12px;
}

a {
	/* color: inherit; */
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
}

.css-a33 {
	display: flex;
	flex-direction: column;
	gap: 12px;
	margin-top: 12px;
	/* flex-direction: row; */
}

.css-a34 {
	margin: 0px;
	background: none;
	font-style: inherit;
	font-variant: inherit;
	font-stretch: inherit;
	font-family: inherit;
	font-optical-sizing: inherit;
	font-kerning: inherit;
	font-feature-settings: inherit;
	font-variation-settings: inherit;
	font-size: 14px;
	line-height: 20px;
	display: inline-flex;
	-webkit-box-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	align-items: center;
	height: 32px;
	border-radius: 4px;
	padding: 0px 8px;
	font-weight: 400;
	box-sizing: border-box;
	text-align: center;
	color: rgb(47, 52, 56);
	border: 1px solid rgb(218, 221, 224);
	width: fit-content;
	white-space: nowrap;
}

.css-a35 {
	width: 1px;
	background-color: rgb(234, 237, 239);
	/* grid-column: 1 / 2;
    height: 1px; */
}

.css-a36 {
	/* display: block; */
	display: grid;
	grid-template-columns: repeat(2, 1fr);
	grid-template-rows: repeat(6, min-content);
	grid-auto-flow: column;
	gap: 20px 10px;
}

.css-b11 {
	margin: 8px 12px 8px 0px;
	margin-top: 8px;
	margin-right: 0px;
	margin-bottom: 8px;
	margin-left: 30px;
	font-size: 12px;
	line-height: 16px;
	display: inline-block;
	color: rgb(47, 52, 56);
	/*  white-space: nowrap; */
}

.css-b12 {
	/* grid-column: 1 / 2;
    height: 1px; */
	width: 1px;
	background-color: rgb(234, 237, 239);
	/* width: 1px; */
}

.css-b13 {
	font-size: 10px;
	line-height: 14px;
	display: flex;
	flex-direction: column;
	gap: 12px;
	color: rgb(130, 140, 148);
}

.css-b14 {
	overflow-x: hidden;
}

.css-b15 {
	margin-left: -9px;
}

.css-b16 {
	font-size: 12px;
	line-height: 20px;
	display: inline-block;
	white-space: nowrap;
}

.css-b17 {
	margin: 0px 4px;
}

.css-b18 {
	display: inline-block;
	font-style: normal;
}

.css-b19 {
	font-weight: 700;
	color: rgb(130, 140, 148);
}

.css-c20 {
	display: grid;
	column-gap: 16px;
	grid-template-columns: max-content 1fr;
}

/* 장바구니*/
button {
	font-size: inherit;
}

input, select, textarea {
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

p {
	display: block;
	margin-block-start: 1em;
	margin-block-end: 1em;
}

dl {
	display: block;
	margin-block-start: 1em;
	margin-block-end: 1em;
}

[class^="_"], [class*=" _"] {
	-webkit-font-smoothing: antialiased;
	/* -moz-osx-font-smoothing: grayscale; */
}

/* 위와 아래의 간격을 맞춰줌*/
blockquote, body, code, dd, div, dl, dt, fieldset, form, h1, h2, h3, h4,
	h5, h6, input, legend, li, ol, p, pre, td, textarea, th, ul {
	margin: 0;
	padding: 0;
}

/* .commerce-cart-wrap */
.cont12-cart-wrap {
	-webkit-box-flex: 1;
	flex: 1 0 auto;
	position: relative;
	background-color: #f5f5f5;
}
/* -webkit-flex: 1 0 auto; 
    -moz-box-flex: 1;
    -moz-flex: 1 0 auto;
    -ms-flex: 1 0 auto;  */
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

.row {
	display: flex;
	flex-wrap: wrap;
	box-sizing: border-box;
	margin-right: -10px;
	margin-left: -10px;
}

/* .col-lg-8 */
.col-a11 {
	padding-right: 10px;
	padding-left: 10px;
	position: relative;
	width: 100%;
	min-height: 1px;
	box-sizing: border-box;
	-webkit-box-flex: 0;
	flex: 0066.6666666667%;
	max-width: 66.6666666667%;
}

/* .col-md-7  */
.col-a13 {
	padding-right: 10px;
	padding-left: 10px;
}

.col-12 {
	padding-right: 10px;
	padding-left: 10px;
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

/* ._4VN_z  */
._catp2 {
	flex-direction: row;
	padding-right: 6px;
}

/* ._3xqzr  */
._catp1 {
	display: inline-flex;
	align-items: center;
	vertical-align: middle;
	width: 100%;
}

/* ._3zqA8, 체크박스 */
._catb3 {
	position: relative;
	display: inline-block;
	font-size: 0;
	padding: 9px;
}

/* ._3UImz  */
._Cui01 {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
	cursor: inherit;
	opacity: 0;
	box-sizing: border-box;
}

/* ._3UImz:checked + ._2mDYR */
._Cui01:checked+._Cui02 {
	border-color: #35c5f0;
	background-color: #35c5f0;
	color: #fff;
}

/* ._2mDYR  */
._Cui02 {
	display: inline-block;
	width: 22px;
	height: 22px;
	box-sizing: border-box;
	padding: 2px;
	border: 1px solid #ccc;
	border-radius: 4px;
	font-size: 16px;
	line-height: 1;
	transition: color .1s, border-color .1s, background-color .1s;
}

._2uftR {
	width: 1em;
	height: 1em;
}

._1an3J {
	font-size: 15px;
}

.commerce-cart__header__caption {
	display: inline-block;
	line-height: 21px;
	margin-bottom: 2px;
}

.commerce-cart__header__delete, .commerce-cart__header__delete-sold-out
	{
	display: inline-block;
	margin: 2px -3px 0;
	padding: 3px;
	background: none;
	border: none;
	color: #424242;
	font-family: inherit;
	font-weight: 400;
	font-size: 12px;
	line-height: 1;
	transition: opacity .1s;
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

/* .commerce-cart__delivery-group */
.cart_delg {
	border-top-left-radius: 0;
	border-top-right-radius: 0;
	border: 1px solid #ededed;
	border-radius: 6px;
	margin-bottom: 12px;
	background-color: #fff;
}

/* .commerce-cart__delivery-group__product-item */
.cart_dgpi {
	border-bottom: 1px solid #ededed;
} /* 이거 회색, 하얀색섞은거 */

/* .carted-product  */
.cart-p {
	padding: 20px 15px 20px 54px;
	position: relative;
	margin-right: 20px;
	margin-bottom: 12px;
}

/* 상품체크박스 */
/* .carted-product__select */
.cart-p_select {
	left: 20px;
	position: absolute;
	margin: -9px;
	top: 20px;
}

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
.css-deu03 {
	font-size: 14px;
	line-height: 18px;
	padding: 0px 24px 10px 0px;
}

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
.css-deu11 {
	font-size: 16px;
	line-height: 20px;
	font-weight: 600;
}

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

.cart-p_edit-btn, .cart-p_order-btn {
	position: relative;
	display: inline-block;
	margin: 2px 0 0 -3px;
	padding: 3px;
	background: none;
	border: none;
	color: #424242;
	font-family: inherit;
	font-weight: 400;
	font-size: 12px;
	line-height: 1;
	transition: opacity .1s;
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
	display: block;
	padding-top: 35px;
}

/* .commerce-cart__side-bar */
.cart-side {
	padding-top: 20px;
	padding-bottom: 20px;
}

.col-lg-4 {
	padding-right: 10px;
	padding-left: 10px;
	position: relative;
	width: 100%;
	min-height: 1px;
	box-sizing: border-box;
	-webkit-box-flex: 0;
	flex-basis: 33.3333%;
	max-width: 33.3333333333%;
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
	background-color : #40A940;
	text-decoration: none;
	/*transition: color 0.1s ease 0s, background-color 0.1s ease 0s,
		border-color 0.1s ease 0s;*/
	border-radius: 4px;
}

/* element.style {
    position: sticky;
    top: 80.75px;
    transition: top 0.1s ease 0s;
}    		       */
</style>
</head>
<div style="padding-top: 54px"><%@ include file="header.jsp"%></div>
<body>
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
				<div class="commerce-cart__content-wrap col-12 col-a13 col-a11">
					<div class="commerce-cart__content">
						<div class="sticky-container commerce-cart__header-wrap">
							<div class="sticky-child commerce-cart__header">
								<span class="commerce-cart__header__left"> <label
									class="_catp1 _catp2">
										<div class="_catb3">
											<input type="checkbox" class="_Cui01" value="" checked="">
											<span class="_Cui02"> <svg width="1em" height="1em"
													viewBox="0 0 16 16" class="_2uftR">
<path fill="currentColor" d="">
</path></svg></span>
										</div> <!-- M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z -->

										<span class="_1an3J"> <span
											class="commerce-cart__header__caption">모두선택</span></span>
								</label></span> <span class="commerce-cart__header__right">

									<button class="commerce-cart__header__delete" type="button">선택삭제</button>
								</span>
							</div>
						</div>
						<ul class="commerce-cart__content__group-list">
							<li class="commerce-cart__content__group-item">
								<article class="commerce-cart__group">
									<h1 class="commerce-cart__group__header">(주)더조은가구 배송</h1>
									<ul class="commerce-cart__group__item-list">
										<li class="commerce-cart__group__item">
											<article class="cart_delg">
											
											
												<c:forEach items="${cart}" var="itemEntry">
												<ul class="cart_delg__product-list">
													<li class="cart_dgpi"><article class="cart-p">
															<div class="cart-p_select">
																<div class="._catb3">
																	<input type="checkbox" class="_Cui01" value=""
																		checked=""> <span class="_Cui02"><svg
																			width="1em" height="1em" viewBox="0 0 16 16"
																			class="_2uftR">

<path fill="currentColor" d=""> 
</path>
</svg></span>
																</div>
															</div>
															<a
																class="product-small-item product-small-item--clickable"
																href="#">
																<div class="product-small-item_image">
																	<img alt="상품 이미지"
																		src="${itemEntry.value.getImg()}">
																</div>

																<div class="product-small-item_content">
																	<h1 class="product-small-item__title">${itemEntry.value.getName()}</h1>
																	<p class="css-deu01">무료배송&nbsp;|&nbsp;업체직접배송</p>
																</div>
															</a>
															<button class="cart-p_delete" type="button"
																aria-label="삭제" onclick="submititem()">
																<svg width="12" height="12" viewBox="0 0 12 12"
																	fill="currentColor" preserveAspectRatio="xMidYMid meet">
                                                               
                                                               <path fill-rule="nonzero"
																		d="M6 4.6L10.3.3l1.4 1.4L7.4 6l4.3 4.3-1.4 1.4L6 7.4l-4.3 4.3-1.4-1.4L4.6 6 .3 1.7 1.7.3 6 4.6z">
                                                               
                                                               </path></svg>
                                                               <script type="text/javascript">
                                                               var ans;
                                                               function submititem(){
                                                               	const deletei = window.open("deleteitem.jsp", "delete",
                                                               			"width = 300px, hei`ght = 200px");
                                                               	deletei.onbeforeunload = function() {
                                                               		if (ans == 1){
                                                               		document.getElementById("deleteitem").submit();
                                                               		}
                                                               	}
                                                               }
                                                               </script>
															</button>
															<ul class="carted-product__option-list">

																<!-- __option-list__item" 상품코드박스 크기 늘려주는 용도-->
																<li class="cart-p__option-list__item"><article
																		class="css-deu02">
																		<h2 class="css-deu03">그레이</h2> <!-- 색깔정보... -->
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
																			<span id="itemprice${itemEntry.key}"> ${itemEntry.value.getPrice()}</span>
																			</div>
																		</div>
																	</article></li>
															</ul>
															<div class="cart-p_footer">
																<span class="cart-p_footer_left">
																	<button class="cart-p_edit-btn" type="button">옵션변경</button>|
																	<button class="cart-p_order-btn" type="button">바로구매</button>
																</span> <span class="cart-p_subtotal"> <span
																	class="cart-p_subtotal_number">총금액 : <span
																		id="totalpay${itemEntry.key}" onchange="changepay()">
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
										    <c:set var="totalPrice" value="${totalPrice + count * price}" />
										  </c:forEach>
												<footer class="cart-group_footer">
													<p class="cart-group_total">배송비 무료</p>
												</footer>
											</article>
										</li>
									</ul>
								</article>
							</li>
						</ul>
						<dl class="cart_sum cart-con_summary">
							<div class="cart_sum_row">
								<dt>총 상품금액</dt>
								<dd>
									<span class="number">${totalPrice}  원</span>
								</dd>
							</div>
							<div class="cart_sum_row">
								<dt>총 배송비</dt>
								<dd>
									+ <span class="number">0</span>원
								</dd>
							</div>
							<div class="cart_sum_row">
								<dt>총 할인금액</dt>
								<dd>
									- <span class="number">388,000</span>원
								</dd>
							</div>
							<div class="cart_sum_row cart_sum_row-total">
								<dt>결제금액</dt>
								<dd>
									<span class="number">1,712,000</span>원
								</dd>
							</div>
						</dl>
					</div>
				</div>


				<div class="cart-side-wrap col-12 col-md-5 col-lg-4">
					<div class="sticky-container cart-side-container"
						style="position: sticky; top: 80.75px; transition: top 0.1s ease 0s;">
						<div class="sticky-child cart-side" style="position: relative;">
							<dl class="cart_sum cart-side-sum">

								<div class="cart_sum_row">
									<dt>총 상품금액</dt>
									<dd>
										<span class="number">${totalPrice} </span>원
									</dd>
								</div>
								<div class="cart_sum_row">
									<dt>총 배송비</dt>
									<dd>
										+ <span class="number">3000</span>원
									</dd>
								</div>
								<div class="cart_sum_row">
									<dt>총 할인금액</dt>
									<dd>
										- <span class="number">500</span>원
									</dd>
								</div>
								<div class="cart_sum_row  cart_sum_row-total">
									<dt>결제금액</dt>
									<dd>
										<span class="number">${itemEntry.value.getPrice() * itemEntry.value.getCount() + 3000}</span>원
									</dd>
								</div>
							</dl>
						</div>

						<div class="cart-side_order">
							<a href = "PurchasePage.jsp"><button class="_1eWD8 _3SroY _27do9 cart-side_btn" type="button">
							<span> 총 </span>
		                    <span> ${totalCount} 개 </span>
			                <span>구매하기</span></button>
							</a>
			                </button>
						</div>
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



<!-- .carted-product__order-btn:nth-child(n+2) {
  	margin-left: 14px;} 
        
 svg[Attributes Style] {
    width: 12;
    height: 12;
    fill: currentcolor;}

 svg:not(:root) {
    overflow-clip-margin: content-box;
    overflow: hidden;}  -->


<!-- ol, ul {
    list-style: none;
    list-style-position: initial;
    list-style-image: initial;
    list-style-type: none;}  -->

