<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
  <style>
  </style>
<body>
<div class="fence">
<main class ="maincontent">
<h1>주문/결제</h1>
<h2>
<div>배송지</div>
<button type="button" class ="changeaddress">변경</button>
</h2>
<section class="1"><!-- 배송지 부분 -->
<section class ="1-1">
<div class="address">주소값가져오기</div><!-- 주소값가져오기 -->
<div class ="space"></div><!-- 공백 -->
</section>
</section>
<div class ="2"> <!-- 이름 및 기본배송지 페이지  -->
<section class ="2-1">
<div class ="2-1-1">
<div class ="2-1-1-1">이름</div>
<div class ="2-1-1-2">기본배송지</div><!-- 라벨느낌 "이름" 옆에 붙어있는 것 -->
<div class ="2-1-1-3"></div><!-- 공백 -->
</div>
<div class ="2-1-2"></div>
<div class ="2-1-3"></div>
<div class ="2-1-4">
<select name="deliveryRequest" required>
  <option value="">배송시 요청사항을 선택해주세요</option>
  <option value="leaveAtDoor">부재시 문앞에 놓아주세요</option>
  <option value="contactBeforeDelivery">배송 전 이미 연락해주세요</option>
  <option value="leaveAtSecurity">부재시 경비실에 맡겨주세요</option>
  <option value="contactBeforeDeliveryOrText">부재시 전화주시거나 문자주세요</option>
</select>
</div>
</section>
</div>
<div class ="3"><!-- 주문자 페이지 -->
<section class="3-1">
<div class = "3-1-1">
<div class ="3-1-1-1">주문자</div>
<div class ="3-1-1-2"></div><!-- 공백 -->
</div>
</section>
<div class ="3-2">
<div class ="3-2-1">
<section class ="3-2-2">
<label class ="3-2-2-1"><!-- 이름 입력하는 곳 -->
<div class ="3-2-2-1-1">이름 : </div> 
<input type="text" value ="이름값불러오기">

</label>
<label class ="3-2-2-2"><!-- 이메일 입력하는 곳 -->
<div class ="
<input type ="text" value ="이메일 불러오기">@
<select name="email" required>
  <option value="naver">naver.com</option>
  <option value="gmail">gmail.com</option>
  <option value="daum">daum.net</option>
  <option value="kakao">kakao.com</option>
  <option value="hanmail">hanmail.net</option>
</select>
<label class ="3-2-2-3">
<div class ="3-2-2-3-1">연락처</div>
<input type="text" value="연락처 불러오기">

</label>
</section>
</div>
</div>
</div>
</main>
<aside class ="sidecontent">

</aside>
</div>
</body>
</html>