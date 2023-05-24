<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
Map<Integer, Item> cart = (Map<Integer, Item>) session.getAttribute("cart");
Member member = (Member) session.getAttribute("member");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="header.jsp"%>
</head>
<script type="text/javascript">
	function allcheck() {
		var checkbox = document.getElementById("on");
		var checkboxes = document.querySelectorAll("input[type='checkbox']");
		checkboxes.forEach(function(cb) {
			cb.checked = checkbox.checked;
		});
	}
</script>
<style>
body {
	padding-top: 55px;
}

.fence {
	padding-bottom: 100px;
}

.maincontent {
	display: flex;
	position: relative;
	width: 100%;
	max-width: 1250px;
	padding: 0px 60px;
	padding-top: 55px;
	margin: 0px auto;
	box-sizing: border-box;
	flex-wrap: nowrap;
	flex-direction: row;
	justify-content: center;
	align-items: center;
}

.leftframe {
	width: 100%;
	max-width: 450px;
	width: 100%;
	padding: 15px;
	margin-left: 30px;
}

.rightframe {
	
}

.3-2-2 {
	display: flex;
	flex-wrap: nowrap;
	flex-direction: column;
	text-align: left;
}
</style>

<body>
	<div class="fence">
		<main class="maincontent">
			<div class="rightframe" style="">
				<h1 style="text-align: left;">주문/결제</h1>
				<h2 style="display: flex; justify-content: space-between; padding-top: 20px; margin-top: 10px; border-bottom: 1px solid; padding-bottom: 10px;">
					<div>배송지</div>
					<button type="button" class="changeaddress" style="border: none; background: white; font-size: 20px; color: green;">변경</button>
				</h2>
				<section class="1">
					<!-- 배송지 부분 -->
					<section class="1-1">
						<div class="address" style="display: flex;">주소값가져오기</div>
						<!-- 주소값가져오기 -->
						<div class="space"></div>
						<!-- 공백 -->
					</section>
				</section>
				<div class="2" style="">
					<!-- 이름 및 기본배송지 페이지  -->
					<section class="2-1">
						<div class="2-1-1">
							<div style="display: flex; margin-top: 10px; margin-bottom: 10px;">
								<div class="2-1-1-1" style="display: flex;">


									<!-- Display default text when session attribute is empty -->
									Default Name



								</div>
								<div class="2-1-1-2" style="text-align: left; border: 4px solid; border-radius: 20px; padding: 3px; border-color: lightgreen; margin-left: 5px; font-size: 10px;">기본배송지</div>
							</div>
							<!-- 라벨느낌 "이름" 옆에 붙어있는 것 -->
							<div class="2-1-1-3"></div>
							<!-- 공백 -->
						</div>
						<div class="2-1-2"></div>
						<div class="2-1-3"></div>
						<div class="2-1-4">
							<select name="deliveryRequest" required="" style="display: flex; width: 100%; border-radius: 10px;">
								<option value="">배송시 요청사항을 선택해주세요</option>
								<option value="leaveAtDoor">부재시 문앞에 놓아주세요</option>
								<option value="contactBeforeDelivery">배송 전 이미 연락해주세요</option>
								<option value="leaveAtSecurity">부재시 경비실에 맡겨주세요</option>
								<option value="contactBeforeDeliveryOrText">부재시 전화주시거나
									문자주세요</option>
							</select>
						</div>
					</section>
				</div>
				<div class="3" style="">
					<!-- 주문자 페이지 -->
					<section class="3-1">
						<div class="3-1-1">
							<div class="3-1-1-1">
								<h2 style="text-align: left; padding-top: 20px; margin-top: 10px; border-bottom: 1px solid; padding-bottom: 10px;">
									주문자</h2>
							</div>
							<div class="3-1-1-2"></div>
							<!-- 공백 -->
						</div>
					</section>
					<div class="3-2">
						<div class="3-2-1"></div>
						<section class="3-2-2" style="display: flex; flex-wrap: nowrap; flex-direction: column; text-align: left;">
							<label class="3-2-2-1" style="display: flex; justify-content: flex-start;"> <!-- 이름 입력하는 곳 -->
								<div class="3-2-2-1-1">이름 :</div> <input type="text" value="" style="margin-left: 10px; margin-bottom: 10px; border-radius: 5px;">

							</label> <label class="3-2-2-2" style="display: flex; margin-top: 10px; margin-bottom: 10px;">
								<!-- 이메일 입력하는 곳 -->
								<div class="3-2-2-2-1">이메일 :</div> <input type="text" value="" style="border-radius: 5px; margin-left: 10px; margin-right: 10px;">@
								<select name="email" required="" style="border-radius: 5px; margin-left: 10px;">
									<option value="naver">naver.com</option>
									<option value="gmail">gmail.com</option>
									<option value="daum">daum.net</option>
									<option value="kakao">kakao.com</option>
									<option value="hanmail">hanmail.net</option>
							</select>
							</label> <label class="3-2-2-3" style="display: flex; margin-top: 10px; margin-bottom: 10px;">
								<div class="3-2-2-3-1">연락처 :</div> <select name="email" required="" style="border-radius: 5px; margin-left: 10px; margin-right: 10px;">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
							</select> <input type="text" value="" style="border-radius: 5px;">
							</label>
						</section>
						<div class="4">
							<!-- 주문상품페이지 -->
							<div class="4-1">
								<h2 style="text-align: left; padding-top: 20px; margin-top: 10px; border-bottom: 1px solid; padding-bottom: 10px;">
									주문상품</h2>
							</div>
							<div class="4-2">
								<section class="4-2-1">
									<div class="4-2-1-1" style="border: 1px solid; flex-direction: row;">
										<div class="css-114dac7 e1qx8gyn5">
											<div class="css-s5xdrg e1qx8gyn4">
												<div class="css-1d4irc7 e1qx8gyn3">Red Bottle. inc.</div>
												<div class="css-o69atw e1qx8gyn2" style="display: flex; justify-content: space-between;">
													<span class="css-1ohhab7 e1qx8gyn1">배송비</span>0원
												</div>
											</div>
										</div>
										<div>
											<div class="css-p7mq5l e1l2pwkp9" style="display: flex; flex-direction: row;">
												<figure class="css-3tik1d e1ui16bi1">
													<img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/167701613072269056.jpg?w=72&amp;h=72&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/167701613072269056.jpg?w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/167701613072269056.jpg?w=144&amp;h=144&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/167701613072269056.jpg?w=256&amp;h=256&amp;c=c 3x" alt="[해외] 네스프레소 호환 100캡슐 10종 무료배송 신규맛 추가 상품 이미지" class="e1ui16bi0 css-ot5r0k">
												</figure>
												<div class="css-17fh4sh e1l2pwkp8">
													<div class="css-1ro907e e1l2pwkp7">[해외] 네스프레소 호환
														100캡슐 10종 무료배송 신규맛 추가</div>
													<ul class="css-11uminu e1l2pwkp6">
														<li>옵션1: 콜롬비아 50캡슐 / 옵션2: 콜롬비아 50캡슐</li>
													</ul>
													<div class="css-s5xdrg e1l2pwkp5">
														<span class="css-1yr3pdk e1l2pwkp4">62,300원</span>
														<div class="css-1tcfgij e1l2pwkp3"></div>
														<span class="css-1kjcy3l e1l2pwkp2">1개</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</section>
							</div>

						</div>
						<!-- 4 -->
						<div class="5">
							<h2 style="text-align: left; padding-top: 20px; margin-top: 10px; border-bottom: 1px solid; padding-bottom: 10px;">
								포인트</h2>
							<div class="5-1" style="display: flex;">
								<input type="text" value="" style="border-radius: 5px; margin-right: 10px;">
								<button style="border-radius: 5px; background-color: lightgreen; border-color: lightgreen;">전액사용</button>
							</div>
						</div>
<div class="6"><!-- 카톡 핸드폰 등등 결제수단 -->
<h2 style="text-align: left; padding-top: 20px; margin-top: 10px; border-bottom: 1px solid; padding-bottom: 10px;">
								결제수단</h2>
</div>
<div class="css-1msvccc e14xfypx0">
<section class="css-5tkz5f e7wda440">
<div class="css-2pv01r e149t0mw4" style="
    display: flex;
    width: 10px;
">
<button type="button" class="css-y8pr74 e149t0mw3">
<picture><source type="image/webp" src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_card.png?w=144&amp;h=144&amp;c=c&amp;webp=1" srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_card.png?w=144&amp;h=144&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_card.png?w=256&amp;h=256&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_card.png?w=360&amp;h=360&amp;c=c&amp;webp=1 3x">
<img alt="카드 아이콘" class="css-1i2eqgi e149t0mw2" src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_card.png?w=144&amp;h=144&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_card.png?w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_card.png?w=256&amp;h=256&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_card.png?w=360&amp;h=360&amp;c=c 3x"></picture><div class="css-10z9090 e149t0mw1">카드</div><div class="css-qdif5i e149t0mw0">할인카드 확인</div></button><button type="button" class="css-y8pr74 e149t0mw3"><picture><source type="image/webp" src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_vbank.png?w=144&amp;h=144&amp;c=c&amp;webp=1" srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_vbank.png?w=180&amp;h=180&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_vbank.png?w=256&amp;h=256&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_vbank.png?w=360&amp;h=360&amp;c=c&amp;webp=1 3x"><img alt="무통장입금 아이콘" class="css-1i2eqgi e149t0mw2" src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_vbank.png?w=144&amp;h=144&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_vbank.png?w=180&amp;h=180&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_vbank.png?w=256&amp;h=256&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_vbank.png?w=360&amp;h=360&amp;c=c 3x"></picture><div class="css-10z9090 e149t0mw1">무통장입금</div></button><button type="button" class="css-1apb5ze e149t0mw3"><picture><source type="image/webp" src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_kakaopay.png?w=144&amp;h=144&amp;c=c&amp;webp=1" srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_kakaopay.png?w=180&amp;h=180&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_kakaopay.png?w=256&amp;h=256&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_kakaopay.png?w=360&amp;h=360&amp;c=c&amp;webp=1 3x"><img alt="카카오페이 아이콘" class="css-1i2eqgi e149t0mw2" src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_kakaopay.png?w=144&amp;h=144&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_kakaopay.png?w=180&amp;h=180&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_kakaopay.png?w=256&amp;h=256&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_kakaopay.png?w=360&amp;h=360&amp;c=c 3x"></picture><div class="css-9n3kbk e149t0mw1">카카오페이</div><div class="css-qdif5i e149t0mw0">1만원 즉시할인</div></button><button type="button" class="css-y8pr74 e149t0mw3"><picture><source type="image/webp" src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_payco.png?w=144&amp;h=144&amp;c=c&amp;webp=1" srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_payco.png?w=180&amp;h=180&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_payco.png?w=256&amp;h=256&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_payco.png?w=360&amp;h=360&amp;c=c&amp;webp=1 3x"><img alt="페이코 아이콘" class="css-1i2eqgi e149t0mw2" src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_payco.png?w=144&amp;h=144&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_payco.png?w=180&amp;h=180&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_payco.png?w=256&amp;h=256&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_payco.png?w=360&amp;h=360&amp;c=c 3x"></picture><div class="css-10z9090 e149t0mw1">페이코</div><div class="css-qdif5i e149t0mw0">최대2.5%적립</div></button><button type="button" class="css-y8pr74 e149t0mw3"><picture><source type="image/webp" src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_toss_v2.png?w=144&amp;h=144&amp;c=c&amp;webp=1" srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_toss_v2.png?w=180&amp;h=180&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_toss_v2.png?w=256&amp;h=256&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_toss_v2.png?w=360&amp;h=360&amp;c=c&amp;webp=1 3x"><img alt="토스페이 아이콘" class="css-1i2eqgi e149t0mw2" src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_toss_v2.png?w=144&amp;h=144&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_toss_v2.png?w=180&amp;h=180&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_toss_v2.png?w=256&amp;h=256&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_toss_v2.png?w=360&amp;h=360&amp;c=c 3x"></picture><div class="css-10z9090 e149t0mw1">토스페이</div><div class="css-qdif5i e149t0mw0">최대7%캐시백</div></button><button type="button" class="css-y8pr74 e149t0mw3"><picture><source type="image/webp" src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_naver.png?w=144&amp;h=144&amp;c=c&amp;webp=1" srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_naver.png?w=180&amp;h=180&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_naver.png?w=256&amp;h=256&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_naver.png?w=360&amp;h=360&amp;c=c&amp;webp=1 3x"><img alt="네이버페이 아이콘" class="css-1i2eqgi e149t0mw2" src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_naver.png?w=144&amp;h=144&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_naver.png?w=180&amp;h=180&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_naver.png?w=256&amp;h=256&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_naver.png?w=360&amp;h=360&amp;c=c 3x"></picture><div class="css-10z9090 e149t0mw1">네이버페이</div><div class="css-qdif5i e149t0mw0">최대2.5%적립</div></button><button type="button" class="css-y8pr74 e149t0mw3"><picture><source type="image/webp" src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_phone.png?w=144&amp;h=144&amp;c=c&amp;webp=1" srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_phone.png?w=180&amp;h=180&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_phone.png?w=256&amp;h=256&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_phone.png?w=360&amp;h=360&amp;c=c&amp;webp=1 3x"><img alt="핸드폰 아이콘" class="css-1i2eqgi e149t0mw2" src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_phone.png?w=144&amp;h=144&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_phone.png?w=180&amp;h=180&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_phone.png?w=256&amp;h=256&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_phone.png?w=360&amp;h=360&amp;c=c 3x"></picture><div class="css-10z9090 e149t0mw1">핸드폰</div></button></div><div class="open expanded" style="overflow: hidden;"><div class="css-1phqgz9 e9oydyo3"><div class="css-i4na0a e9oydyo2"><div class="css-1grttwy e9oydyo1">카카오페이 결제 혜택</div><div class="css-1ai935y e9oydyo0">- 카카오페이 내 KB국민카드로 20만원 이상 결제 시 1만원 즉시할인 (기간 내 1회)<br>- 5/15~31</div></div></div></div></section></div>
					</div>

				</div>
			</div>
			<div class="leftframe">
				<div class="l1">
					<div class="" style="position: sticky; top: 81px; transition: top 0.1s ease 0s;">
						<div class="css-mg34w8 e84q8kd0" style="position: relative;">
							<div class="css-j3we6u eir4d5m10">
								<div class="css-xu39do eir4d5m11">
									<div class="css-1q6dhpt eir4d5m9" style="border: solid; padding: 10px; border-color: gray; border-bottom: none;">
										<h2 class="css-i2317d eir4d5m8" style="text-align: left; padding-bottom: 15px;">결제금액</h2>
										<div class="css-1dj8hm0 eir4d5m7" style="display: flex; justify-content: space-between;">
											<div class=" css-qgowcx eir4d5m6">총 상품 금액</div>
											<div class="emphasis css-10ss856 eir4d5m5">62,300원</div>
										</div>
										<div class="css-1dj8hm0 eir4d5m7" style="display: flex; justify-content: space-between;">
											<div class=" css-qgowcx eir4d5m6">배송비</div>
											<div class=" css-10ss856 eir4d5m5">0원</div>
										</div>
										<div class="css-1dj8hm0 eir4d5m7" style="display: flex; justify-content: space-between;">
											<div class=" css-qgowcx eir4d5m6">포인트 사용</div>
											<div class=" css-10ss856 eir4d5m5">0원</div>
										</div>
										<br>
										<div class="css-13a9tqw eir4d5m4" style="display: flex; justify-content: space-between; border-top: dashed; padding-top: 15px; border-color: gray;">
											<div class="css-1j35hnv eir4d5m3">최종 결제 금액</div>
											<div class="css-1jhn24r eir4d5m2">
												<strong><span>62,300</span>&nbsp;원</strong>
												<div class="css-dlcp60 eir4d5m1"></div>
											</div>
										</div>
									</div>
									<div class="css-1in19nv ej8vd4l6">
										<label for="checkout-agree" class="css-17jncej ej8vd4l5" style="display: flex; border: solid; border-bottom: none; padding: 10px; border-color: gray;">
											<div class="_3zqA8 css-2szu7b ej8vd4l4">
												<input type="checkbox" class="_3UImz" id="on" name="isAgree" value="" onclick="allcheck()"><span class="_2mDYR"></span>
											</div>
											<div>아래 내용에 모두 동의합니다. (필수)</div>
										</label>
										<div class="" style="overflow: hidden;"></div>
										<div class="css-1u0aq6g ej8vd4l2" style="border: solid; padding: 10px; margin-bottom: 15px; background: rgb(247, 249, 250); border-top: none; border-color: gray;">
											<div class="css-3wz4c8 ezry9568" style="display: flex;">
												<div class="_3zqA8 check-all css-14lehnx ezry9567">
													<input type="checkbox" class="_3UImz" value="">
												</div>
												<button type="button" class="css-1tmurna ezry9561" id="on" style="border: none;">개인정보 수집 이용 및 제 3자 제공 동의 (필수)</button>
											</div>
											<div class="" style="overflow: hidden;"></div>
											<div class="css-g0kv1j ej8vd4l1" style="text-align: left;">
												본인은 만 14세 이상이며, 주문 내용을 확인하였습니다.
												<div class="css-xjfkcd ej8vd4l0">(주)mobel는 통신판매중개자로 거래
													당사자가 아니므로, 판매자가 등록한 상품정보 및 거래 등에 대해 책임을 지지 않습니다 (단,
													(주)mobel가 판매자로 등록 판매한 상품은 판매자로서 책임을 부담합니다).</div>
											</div>
										</div>
									</div>
								</div>
								<button class="_1eWD8 _3SroY _27do9 css-24tx2z eir4d5m0" type="button" style="width: 100%; height: 50px; font-size: 20px; background: lightgreen; border-color: lightgreen; border-radius: 10px;">62,300원
									결제하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- leftframe -->
		</main>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>