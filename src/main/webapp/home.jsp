<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>오늘의 집 메인페이지</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
	crossorigin="anonymous"></script>

<script type="text/javascript">
	var linkback = linkback || {};
	(function() {
		var d = document, scr = d.createElement('script'), tar = d
				.getElementsByTagName('script')[0];
		scr.type = 'text/javascript';
		scr.async = true;
		var dt = new Date();
		var date_s = dt.getFullYear().toString()
				+ ('0' + (dt.getMonth() + 1)).slice(-2)
				+ ('0' + dt.getDate()).slice(-2);
		scr.src = 'https://linkback.contentsfeed.com/src/' + date_s
				+ '/lb4ohouse.min.js';
		scr.charset = 'utf-8';
		if (!linkback.l) {
			linkback.l = true;
			tar.parentNode.insertBefore(scr, tar);
		}
	})();
</script>

<style type="text/css">
body {
	align-content: center;
	text-align: center;
	/* margin-left: 100px; */
}



h1[class] {
	align-content: left;
	text-align: left;
}

h2 {
	
}

.fontst {
	font-size: 20px;
	font-face: '맑은고딕';
}

.low {
	float: left;
}

.log {
	display: flex;
	align-items: center;
	height: 3%;
	margin-left: auto;
}

.centerall {
	float: top;
	float: left;
	width: 85%;
	height: 80%;
	background-color: white;
	margin-left: auto;
}

.items_field {
	text-align: center;
	padding: 4px;
}

.item_slot {
	width: 20%;
	height: 15%;
	border: 1px solid silver;
}

.allone {
	float: top;
	float: left;
	width: 85%;
	height: 80%;
	background-color: white;
	margin-left: auto;
	position: center;
}

.alltwo {
	desplay: flex;
	text-align: center;
	margin-left: auto;
}

.allthree {
	desplay: flex;
	text-align: center;
	margin-left: auto;
}

.css-col {
	color: rgb(53, 197, 240);
	font-weight: 700;
}

footer {
	background: #e0ffff;
}

.footmenu {
	display: flex;
	flex-direction: row;
	justify-content: space-around;
}

* /

body, html {
	font-family: OhouseSans, "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕",
		"Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
}

.css-a23 {
	padding: 40px 0px;
	background-color: rgb(247, 249, 250);
}

.css-a24 {
	padding: 0px 60px;
	box-sizing: border-box;
	font-size: 12px;
	line-height: 16px;
	display: grid;
	grid-template-columns: 1fr 1px 1fr 1px 2fr;
	column-gap: 30px;
	.
	css-a25
	{
	color
	:
	rgb(
	47
	,
	52
	,
	56
	);
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
	text-shadow: none; . css-a33 { display : flex;
	flex-direction: column;
	gap: 12px;
	margin-top: 12px;
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
}

.css-a36 {
	display: grid;
	grid-template-columns: repeat(2, 1fr);
	grid-template-rows: repeat(6, min-content);
	grid-auto-flow: column;
	gap: 20px 10px;
}

.css-b11 {
	font-size: 12px;
	line-height: 16px;
	display: inline-block;
	color: rgb(47, 52, 56);
	white-space: nowrap;
}

.css-b12 {
	width: 1px;
	background-color: rgb(234, 237, 239);
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
</style>
</head>
<body>
	<br>
	<div class="container text-center">
		<div class="row justify-content-between">
			<div class="col-1">
				<h1>
					<img src="이미지/메인로고2.png" />
				</h1>
			</div>
			<div class="col-5">
				<span><input type="text" placeholder="통합검색"
					autocomplete="off" aria-autocomplete="list"
					class="css-1pneado ej5pc7c2" value=""> <c:choose>
						<c:when test="${empty sessionScope.member}">
							<a href="login.jsp"><input type="button" value="로그인"
								id="loginBtn"></a>
							<a href="TermsOfUse.jsp"><input type="button" value="회원가입"
								id="singupBtn"></a>
							<a href="Complain.jsp"><input type="button" value="고객센터"
								id="contomer"></a>
						</c:when>
						<c:otherwise>
							<a href=""><img class="profile" src="img/프로필.png" width="50px" height="50px"></a>
							<form action="LogoutServlet" method="post">
								<input type="submit" value="로그아웃" id="loginBtn">
							</form>
							<a href="Complain.jsp"><input type="button" value="고객센터"
								id="contomer"></a>
						</c:otherwise>

					</c:choose> </span>
			</div>
		</div>
	</div>
	<br>
	<h2>Mobel</h2>
	<br>
	<div class="fontst">

		<a href="#"> 의자 </a> <a href="#"> 책상 </a> <a href="#"> 소파 </a> <a
			href="#"> 이불 </a> <a href="#"> 커튼 </a> <a href="#"> 쿠션 </a>

	</div>
	<br>
	<br>
	<hr />
	<br>
	<div align="center">
		<img src="이미지/메인보드2.png" /> <img src="이미지/이벤트1.png" />
	</div>
	<br>
	<hr>
	<br>
	<strong class="css-1d0kvw3"> <font size="5" face="맑은고딕">우리가족
			맞춤 홈스타일링</font>
	</strong>
	<br>
	<br>
	<div align="center">

		<div class="container text-center">
			<div class="row">

				<div class="col">
					<img src="이미지/실내1.png" /> <br> <span class="css-col">포레스트를
						꿈꾸며 </span>가꾸는 나의 빈티지하우스🔍
				</div>

				<div class="col order-5">
					<img src="이미지/실내3.png" /> <br> <span class="css-col">포레스트를
						꿈꾸며 </span>가꾸는 나의 빈티지하우스 🔍
				</div>

				<div class="col order-1">
					<img src="이미지/실내2.png" /> <br> <span class="css-col">포레스트를
						꿈꾸며 </span> 가꾸는 나의 빈티지하우스 🔍
				</div>
			</div>
		</div>
	</div>

	<br>
	<br>
	<strong class="css-1d0kvw3"><font size="5" face="맑은고딕">홈스타일링
			맛집은 여기!</font></strong>
	<br>
	<br>
	<div align="center">
		<div class="container text-center">
			<div class="row">

				<div class="col">
					<img src="이미지/실내4.png" /> <br> <span class="css-col">포레스트를
						꿈꾸며 </span>가꾸는 나의 빈티지하우스🔍
				</div>

				<div class="col order-5">
					<img src="이미지/실내6.png" /> <br> <span class="css-col">포레스트를
						꿈꾸며 </span>가꾸는 나의 빈티지하우스 🔍
				</div>

				<div class="col order-1">
					<img src="이미지/실내5.png" /> <br> <span class="css-col">포레스트를
						꿈꾸며 </span> 가꾸는 나의 빈티지하우스 🔍
				</div>
			</div>
		</div>
	</div>

	<br>
	<br>
	<strong class="css-1d0kvw3"><font size="5" face="맑은고딕">이주의
			인기! Weekly Best</font></strong>
	<br>
	<br>
	<div align="center">
		<div class="container text-center">
			<div class="row">

				<div class="col">
					<img src="이미지/실내7.png" /> <br> <span class="css-col">포레스트를
						꿈꾸며 </span>가꾸는 나의 빈티지하우스🔍
				</div>

				<div class="col order-5">
					<img src="이미지/실내9.png" /> <br> <span class="css-col">포레스트를
						꿈꾸며 </span>가꾸는 나의 빈티지하우스 🔍
				</div>
				<div class="col order-1">
					<img src="이미지/실내8.png" /> <br> <span class="css-col">포레스트를
						꿈꾸며 </span> 가꾸는 나의 빈티지하우스 🔍
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<hr class="css-3ivr3">
	<br>
	<strong class="css-1d0kvw3"> <font size="5">맞아👀 나도 이렇게
			꾸미고 싶었어!</font></strong>
	<br>
	<br>
	<div align="center">
		<div class="container text-center">
			<div class="row">

				<div class="col">
					<img src="꾸미기/꾸미기1.png" /> <br> <span class="css-col">포레스트를
						꿈꾸며 </span>가꾸는 나의 빈티지하우스🔍
				</div>

				<div class="col order-2">
					<img src="꾸미기/꾸미기2.png" /> <br> <span class="css-col">포레스트를
						꿈꾸며 </span>가꾸는 나의 빈티지하우스 🔍
				</div>

				<div class="col order-3">
					<img src="꾸미기/꾸미기3.png" /> <br> <span class="css-col">포레스트를
						꿈꾸며 </span> 가꾸는 나의 빈티지하우스 🔍
				</div>

				<div class="col order-4">
					<img src="꾸미기/꾸미기4.png" /> <br> <span class="css-col">포레스트를
						꿈꾸며 </span> 가꾸는 나의 빈티지하우스 🔍
				</div>

			</div>
		</div>
	</div>
	<br>
	<br>

	<footer class="css-a23">
		
		<div class="css-a35"></div>
		<div class="css-a36">
			<a href="#" target="_self" class="css-b11">회사소개</a> <a href="#"
				target="_self" class="css-b11">채용정보</a> <a href="#" target="_self"
				class="css-b11">이용약관</a> <a href="#" target="_self" class="css-b11">개인정보
				처리방침</a> <a href="#" target="_self" class="css-b11">공지사항</a> <a href="#"
				target="blank" class="css-b11">안전거래센터</a> <a href="#" target="_self"
				class="css-b11">입점신청</a> <a href="#" target="_self" class="css-b11">제휴/광고
				문의</a> <a href="#" target="_self" class="css-b11">사업자 구매 회원</a> <a
				href="#" target="_self" class="css-b11">시공파트너 안내</a> <a href="#"
				target="_self" class="css-b11">상품광고 소개</a> <a href="#"
				target="_self" class="css-b11">고객의 소리</a>
		</div>
<div class="css-a24">
			<div class="css-a25">
				<div class="css-a26">
					<a href="#" class="css-a27">고객센터</a><span class="css-a28"></span>
					<!-- _chevron_thick_right_12 -->
				</div>
				<div class="css-a29">
					<!-- eocurwa4 -->
					<a href="#" class="css-a30">1670-0876</a>
					<time datetime="09:00" class="css-a31">09:00</time>
					<!-- eocurwa3 -->
					~
					<time datetime="18:00" class="css-a31">18:00</time>
					<!-- eocurwa3 -->
				</div>
				<p class="css-a32 ">
					평일: 전체 문의 상담 가능 주말, 공휴일: 오늘의집
					<!-- eocurwa2 -->
					직접배송, 이사/시공/수리 문의 상담 가능
				</p>
				<div class="css-a33">
					<!-- eocurwa1 -->
					<button class="css-a34">카톡 상담(평일 09:00~18:00)</button>
					<a href="#" class="css-a34"> 이메일 문의</a>
				</div>
			</div>
		</div>

		<div class="css-b12"></div>
		<div class="css-b13">
			<div class="css-b14">
				<div class="css-b15">
					<div class="css-b16">
						<span class="css-b17"> </span>(주)집möbel
					</div>
					<div class="css-b16">
						<span class="css-b17"> </span>대표이사 이강호
					</div>
					<div class="css-b16">
						<span class="css-b17"> </span>
						<address class="css-b18">서울 종로구 종각캠퍼스</address>
					</div>
					<div class="css-b16">
						<span class="css-b17">|</span><a href="#">kangho0507@hanmail.net</a>
					</div>
					<div class="css-b16">
						<span class="css-b17"> </span> <span>사업자등록번호 123-45-67890</span> <a
							target="_blank" href="#" rel="noreferrer" class="css-kkzzbm">
							사업자정보확인</a>
					</div>
					<div class="css-b16">
						<span class="css-b17">|</span><span>통신판매업신고번호
							제2018-서울서초-0580호</span>
					</div>
				</div>

			</div>
			<div class="css-a3rlk8 e1l1p3421">
				<div class="css-zqatfe e11l4n981">
					<div class="css-lkbpts e11l4n980">
						<span>집möbel.</span><a target="_blank" href="#" rel="noreferrer"
							class="css-b19"> 서비스가입사실확인</a><br>
					</div>
				</div>
			</div>
			<div>(주)집möbel</div>
		</div>

	</footer>

</body>
</html>
