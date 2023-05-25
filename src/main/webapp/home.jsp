<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		scr.charset = 'UTF-8';
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
	padding-top: 54px;
}

body a {
	text-decoration-line: none;
}

h1[class] {
	align-content: left;
	text-align: left;
}

h2 {
text-align: center;
}

.fontst {
	text-align : center;
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

body, html {
	font-family: OhouseSans, "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕",
		"Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
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

.css-c20 {
	display: grid;
	column-gap: 16px;
	grid-template-columns: max-content 1fr;
}
</style>
<%@ include file="header.jsp"%>
</head>
<body>
	<br>
<%@ include file="Mainnav.jsp" %>
	<hr />
	<br>
	<div align="center">
		<img src="img/메인보드2.png" /> <img src="img/이벤트1.png" />
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
					<img src="img/실내1.png" /> <br> <span class="css-col">포레스트를
						꿈꾸며 </span>가꾸는 나의 빈티지하우스🔍
				</div>

				<div class="col order-5">
					<img src="img/실내3.png" /> <br> <span class="css-col">포레스트를
						꿈꾸며 </span>가꾸는 나의 빈티지하우스 🔍
				</div>

				<div class="col order-1">
					<img src="img/실내2.png" /> <br> <span class="css-col">포레스트를
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
					<img src="img/실내4.png" /> <br> <span class="css-col">포레스트를
						꿈꾸며 </span>가꾸는 나의 빈티지하우스🔍
				</div>

				<div class="col order-5">
					<img src="img/실내6.png" /> <br> <span class="css-col">포레스트를
						꿈꾸며 </span>가꾸는 나의 빈티지하우스 🔍
				</div>

				<div class="col order-1">
					<img src="img/실내5.png" /> <br> <span class="css-col">포레스트를
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
					<img src="img/실내7.png" /> <br> <span class="css-col">포레스트를
						꿈꾸며 </span>가꾸는 나의 빈티지하우스🔍
				</div>

				<div class="col order-5">
					<img src="img/실내9.png" /> <br> <span class="css-col">포레스트를
						꿈꾸며 </span>가꾸는 나의 빈티지하우스 🔍
				</div>
				<div class="col order-1">
					<img src="img/실내8.png" /> <br> <span class="css-col">포레스트를
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
					<img src="img/꾸미기1.png" /> <br> <span class="css-col">포레스트를
						꿈꾸며 </span>가꾸는 나의 빈티지하우스🔍
				</div>

				<div class="col order-2">
					<img src="img/꾸미기2.png" /> <br> <span class="css-col">포레스트를
						꿈꾸며 </span>가꾸는 나의 빈티지하우스 🔍
				</div>

				<div class="col order-3">
					<img src="img/꾸미기3.png" /> <br> <span class="css-col">포레스트를
						꿈꾸며 </span> 가꾸는 나의 빈티지하우스 🔍
				</div>

				<div class="col order-4">
					<img src="img/꾸미기4.png" /> <br> <span class="css-col">포레스트를
						꿈꾸며 </span> 가꾸는 나의 빈티지하우스 🔍
				</div>

			</div>
		</div>
	</div>
	<br>
	<br>

		<%@ include file="footer.jsp"%>

</body>
</html>