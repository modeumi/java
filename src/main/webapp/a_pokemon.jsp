<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="pokemon.com.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<style>
body {
	background-image : url("img/back.png");
	background-size: 100%;
/* 	background-color: rgb(0, 255, 255); */
	background-position: center;
}

.p1 {
	text-align : center;
 	background-color: white; 
	background-position: center;
	width: 820px;
}

.p2 {
	background-color: white;
	background-position: center;
	padding-top: 5px;
	width: 820px;
}

ol1 {
	list-style: none;
	float: left;
	margin-left: 20px;
	background-color: pink;
	background-position: center;
}

li1 {
	margin-right: 50px;
}

.container1 {
	display: grid;
	grid-template-columns: repeat(6, 1fr);
	grid-template-rows: repeat(1, 1fr);
	gap: 20px;
}

.container {
	display: grid;
	grid-template-columns: repeat(2, 1fr);
	grid-template-rows: repeat(1, 1fr);
	gap: 5px;
}

table {
	text-align: center;
	color: black;
}

.item {
	margin-right: 10px;
	padding: 20 px;
	text-align: center;
}

p {
	background-color: white;
}

.panel {
	background-color: white; 
	width: 400px;
}

tr {
	position: center;
}

#type {
	background-image: url("img/type.png");
	background-size: 400px 285px;
	background-position: center;
	background-repeat: no-repeat;
}

#login {
	background-color: white;
	background-position: center;
	float: right;
}

#loginbutton {
	position: absolute;
	left: 735px;
	top: 18px;
	width: 80px;
	height: 20px;
}

#logoutbutton {
	position: absolute;
	left: 720px;
	top: 20px;
	width: 80px;
	height: 20px;
}

#mypage {
	position: absolute;
	left: 610px;
	top: 20px;
	width: 100px;
	height: 20px;
}

#loginment {
	font-size : 15px;
	position: absolute;
	left: 400px;
	top: 6px;
}
#toppanel{
background-color: white;
width: 820px;
height: 30px;
}
#joinbutton {
	position: absolute;
	left: 650px;
	top: 18px;
	width: 80px;
	height: 20px;
}
.underline {
border-bottom: 4px solid black;
}
#table_border{
border : 2px solid black;
}
.text_style{
text-align: center;
font-size: 13px;
font-style: bold;
}
.poke_num{
width: 100px;
height: 150px;
}
.poke_ver{
width: 75px;
height: 100px;
}
.poke_img{
width: 150px;
height: 150px;
}
.poke_info{
width: 400px;
height: 100px;
}
.poke_type{
width: 150px;
height: 100px;
}

</style>

<script type="text/javascript">
	function login() {
		window.open("a_login.jsp", "", "width = 400, height = 600");
	}
	function click_entry() {
		window.open("p_Card.jsp", '엔트리', 'width = 550, height = 500');

	}
	function clickL() {
		window.open("p_Card.jsp", "회원가입", "width = 500, height = 300");
	}

	function nomalt() {
		var change;
		document.getElementById("type").innerHTML = "<img src='img/nomalt.png' width = '400px' height = '285px'>";
	}
	function firet() {
		var change;
		document.getElementById("type").innerHTML = "<img src='img/firet.png' width = '400px' height = '285px'>";
	}
	function watert() {
		var change;
		document.getElementById("type").innerHTML = "<img src='img/watert.png' width = '400px' height = '285px'>";
	}
	function leaft() {
		var change;
		document.getElementById("type").innerHTML = "<img src='img/leaft.png' width = '400px' height = '285px'>";
	}
	function thundert() {
		var change;
		document.getElementById("type").innerHTML = "<img src='img/thundert.png' width = '400px' height = '285px'>";
	}
	function icet() {
		var change;
		document.getElementById("type").innerHTML = "<img src='img/icet.png' width = '400px' height = '285px'>";
	}
	function fightt() {
		var change;
		document.getElementById("type").innerHTML = "<img src='img/fightt.png' width = '400px' height = '285px'>";
	}
	function poisont() {
		var change;
		document.getElementById("type").innerHTML = "<img src='img/poisont.png' width = '400px' height = '285px'>";
	}
	function eartht() {
		var change;
		document.getElementById("type").innerHTML = "<img src='img/eartht.png' width = '400px' height = '285px'>";
	}
	function flyt() {
		var change;
		document.getElementById("type").innerHTML = "<img src='img/flyt.png' width = '400px' height = '285px'>";
	}
	function phyt() {
		var change;
		document.getElementById("type").innerHTML = "<img src='img/phyt.png' width = '400px' height = '285px'>";
	}
	function inct() {
		var change;
		document.getElementById("type").innerHTML = "<img src='img/inct.png' width = '400px' height = '285px'>";
	}
	function stonet() {
		var change;
		document.getElementById("type").innerHTML = "<img src='img/stonet.png' width = '400px' height = '285px'>";
	}
	function ghostt() {
		var change;
		document.getElementById("type").innerHTML = "<img src='img/ghostt.png' width = '400px' height = '285px'>";
	}
	function dragont() {
		var change;
		document.getElementById("type").innerHTML = "<img src='img/dragont.png' width = '400px' height = '285px'>";
	}
	function darkt() {
		var change;
		document.getElementById("type").innerHTML = "<img src='img/darkt.png' width = '400px' height = '285px'>";
	}
	function iront() {
		var change;
		document.getElementById("type").innerHTML = "<img src='img/iront.png' width = '400px' height = '285px'>";
	}
	function fait() {
		var change;
		document.getElementById("type").innerHTML = "<img src='img/fait.png' width = '400px' height = '285px'>";
	}
	function type() {
		var change;
		document.getElementById("type").innerHTML = "<img src='img/type.png' width = '400px' height = '285px'>";
	}
	function mypage() {
		window.open("a_mypage.jsp", "", "width = 400,height = 600");
	}
</script>
</head>

<body>
	<%
	// RequestDispatcher rd = request.getRequestDispatcher("pokeheader.jsp");
	%>
	<!-- <p>rd.include(request, response);</p> -->
	<div id="toppanel" >
	<p> <a href = "a_pokemon.jsp"> pokemon</a>
		<c:choose>
			<c:when test="${empty sessionScope.log_id}">
			<a href = "a_join_page.jsp"><button id ="joinbutton">회원가입</button></a>
				<a href="a_login.jsp"><button id="loginbutton">login</button></a>
			</c:when>
			<c:otherwise>
				<p id="loginment">${sessionScope.log_name} 님 환영합니다.</p>
				<p>
					<button id="mypage" onclick="mypage()">마이페이지</button>
				<p>
					<a href="LogoutServlet"><button id="logoutbutton">logout</button></a>
				</p>
			</c:otherwise>
		</c:choose>
	</div>
	<br>
	<div class="p1">
			<a
				href="https://namu.wiki/w/%ED%8F%AC%EC%BC%93%EB%AA%AC%EC%8A%A4%ED%84%B0">
				<img src="img/pokemon.png" />
			</a> <br>
			<h1>
				<b><font color="black" /> 포켓몬스터<b>
			</h1>
			<h2>
				<b>-</b> <font color="#A566FF" /><b>가라르</b> <font color="#2F9D27" /><b>도감</b>
				<b>-</b>
			</h2>
	</div>
	<hr />
	<div class="p2">
		<img src="img/buttonm.png" onclick="click_entry()"> <img
			src="img/button.png" onclick="clickL()" alt="회원가입">
	</div>
	<hr />
	<div class="p1">

		<br>
		<div class="container">

			<div>
				<table border="1">
					<tr>

						<td rowspan="2" bgcolor="#949495">노말 <br> <a
							href="https://namu.wiki/w/%EB%85%B8%EB%A7%90%20%ED%83%80%EC%9E%85"><img
								src="img/nomal.jpg" width="60px" height="60px"
								onmouseover="nomalt()" onmouseout="type()"></a>
						</td>

						<td rowspan="2" bgcolor="#E56C3E">불꽃 <br> <a
							href="https://namu.wiki/w/%EB%B6%88%EA%BD%83%20%ED%83%80%EC%9E%85">
								<img src="img/fire.jpg" width="60px" height="60px"
								onmouseover="firet()" onmouseout="type()">
						</a>
						</td>

						<td rowspan="2" bgcolor="#5185C5">물 <br> <a
							href="https://namu.wiki/w/%EB%AC%BC%20%ED%83%80%EC%9E%85"> <img
								src="img/water.jpg" width="60px" height="60px"
								onmouseover="watert()" onmouseout="type()"></a>
						</td>

						<td rowspan="2" bgcolor="#66A945">풀 <br> <a
							href="https://namu.wiki/w/%ED%92%80%20%ED%83%80%EC%9E%85"> <img
								src="img/leaf.jpg" width="60px" height="60px"
								onmouseover="leaft()" onmouseout="type()"></a>
						</td>

						<td rowspan="2" bgcolor="#F6D851">전기 <br> <a
							href="https://namu.wiki/w/%EC%A0%84%EA%B8%B0%20%ED%83%80%EC%9E%85">
								<img src="img/thunder.jpg" width="60px" height="60px"
								onmouseover="thundert()" onmouseout="type()">
						</a>
						</td>

						<td rowspan="2" bgcolor="#6DC8EB">얼음 <br> <a
							href="https://namu.wiki/w/%EC%96%BC%EC%9D%8C%20%ED%83%80%EC%9E%85">
								<img src="img/ice.png" width="60px" height="60px"
								onmouseover="icet()" onmouseout="type()">
						</a>
						</td>

					</tr>
				</table>

				<table border="1">
					<tr>

						<td rowspan="2" bgcolor="#E09C40">격투 <br> <a
							href="https://namu.wiki/w/%EA%B2%A9%ED%88%AC%20%ED%83%80%EC%9E%85">
								<img src="img/fight.png" width="60px" height="60px"
								onmouseover="fightt()" onmouseout="type()">
						</a>
						</td>

						<td rowspan="2" bgcolor="#735198">독 <br> <a
							href="https://namu.wiki/w/%EB%8F%85%20%ED%83%80%EC%9E%85"> <img
								src="img/poison.png" width="60px" height="60px"
								onmouseover="poisont()" onmouseout="type()"></a>
						</td>

						<td rowspan="2" bgcolor="#9C7743">땅 <br> <a
							href="https://namu.wiki/w/%EB%95%85%20%ED%83%80%EC%9E%85"> <img
								src="img/earth.png" width="60px" height="60px"
								onmouseover="eartht()" onmouseout="type()"></a>
						</td>

						<td rowspan="2" bgcolor="#A2C3E7">비행 <br> <a
							href="https://namu.wiki/w/%EB%B9%84%ED%96%89%20%ED%83%80%EC%9E%85">
								<img src="img/fly.png" width="60px" height="60px"
								onmouseover="flyt()" onmouseout="type()">
						</a>
						</td>

						<td rowspan="2" bgcolor="#DD6B7B">에스퍼 <br> <a
							href="https://namu.wiki/w/%EC%97%90%EC%8A%A4%ED%8D%BC%20%ED%83%80%EC%9E%85">
								<img src="img/phy.png" width="60px" height="60px"
								onmouseover="phyt()" onmouseout="type()">
						</a>
						</td>

						<td rowspan="2" bgcolor="#9FA244">벌레 <br> <a
							href="https://namu.wiki/w/%EB%B2%8C%EB%A0%88%20%ED%83%80%EC%9E%85">
								<img src="img/inc.png" width="60px" height="60px"
								onmouseover="inct()" onmouseout="type()">
						</a>
						</td>

					</tr>
				</table>
				<table border="1">
					<tr>

						<td rowspan="2" bgcolor="#BFB889">바위 <br> <a
							href="https://namu.wiki/w/%EB%B0%94%EC%9C%84%20%ED%83%80%EC%9E%85">
								<img src="img/stone.png" width="60px" height="60px"
								onmouseover="stonet()" onmouseout="type()">
						</a>
						</td>

						<td rowspan="2" bgcolor="#684870">고스트 <br> <a
							href="https://namu.wiki/w/%EA%B3%A0%EC%8A%A4%ED%8A%B8%20%ED%83%80%EC%9E%85">
								<img src="img/ghost.png" width="60px" height="60px"
								onmouseover="ghostt()" onmouseout="type()">
						</a>
						</td>

						<td rowspan="2" bgcolor="#535CA8">드래곤 <br> <a
							href="https://namu.wiki/w/%EB%93%9C%EB%9E%98%EA%B3%A4%20%ED%83%80%EC%9E%85">
								<img src="img/dragon.png" width="60px" height="60px"
								onmouseover="dragont()" onmouseout="type()">
						</a>
						</td>

						<td rowspan="2" bgcolor="#4C4948">악 <br> <a
							href="https://namu.wiki/w/%EC%95%85%20%ED%83%80%EC%9E%85"> <img
								src="img/dark.png" width="60px" height="60px"
								onmouseover="darkt()" onmouseout="type()"></a>
						</td>

						<td rowspan="2" bgcolor="#69A9C7">강철 <br> <a
							href="https://namu.wiki/w/%EA%B0%95%EC%B2%A0%20%ED%83%80%EC%9E%85">
								<img src="img/iron.png" width="60px" height="60px"
								onmouseover="iront()" onmouseout="type()">
						</a>
						</td>

						<td rowspan="2" bgcolor="#DAB4D4">페어리 <br> <a
							href="https://namu.wiki/w/%ED%8E%98%EC%96%B4%EB%A6%AC%20%ED%83%80%EC%9E%85">
								<img src="img/fai.png" width="60px" height="60px"
								onmouseover="fait()" onmouseout="type()">
						</a>
						</td>
					</tr>
				</table>
			</div>

			<div id="type"></div>
		</div>
		<p class = "underline"/>
		<table id = "table_border" border = "2">
		<tr class = "text_style"> 
		<td >번호</td>
		<td>포켓몬</td>
		<td colspan = "2">도감정보 </td>
		<td>타입</td>
		</tr>
		
		<tr>
		<td class = "poke_num" rowspan = "2"> no.1 </td>
		<td class = "poke_img" rowspan = "2"> <img src = "img/pokemon/흥나숭.png"> <br>
			흥나숭</td>
		<td class = "poke_ver" > <font color="#00A1E9"> 소드 </font> </td>
		<td class = "poke_info"> 특별한 스틱으로 리듬을 타면 화초를 생생하게 만드는 힘이 음파가 되어 퍼진다.</td>  
		<td class = "poke_type" rowspan = "2"> 풀</td>
		</tr>
		<tr>
		<td class = "poke_ver"> <font color = "#E50254"> 실드 </font> </td>
		<td class = "poke_info"> 스틱으로 연타하여 공격한다. 굉장한 속도로 치다 보면 점점 텐션이 올라간다.</td>
		</tr>
		
		<tr>
		<td class = "poke_num" rowspan = "2"> no.2 </td>
		<td class = "poke_img" rowspan = "2"> <img src = "img/pokemon/채키몽.png"> <br>
			채키몽</td>
		<td class = "poke_ver" ><font color="#00A1E9"> 소드 </font></td>
		<td class = "poke_info"> 2개의 스틱으로 격렬한 비트를 만드는 채키몽일수록 동료들에게 존경받는다.</td>  
		<td class = "poke_type" rowspan = "2"> 풀</td>
		</tr>
		<tr>
		<td class = "poke_ver"> <font color = "#E50254"> 실드 </font> </td>
		<td class = "poke_info"> 격렬한 비트를 내는데 열중한 나머지 싸움에서 상대가 기절해도 모른다.</td>
		</tr>
		
		<tr>
		<td class = "poke_num" rowspan = "2"> no.3 </td>
		<td class = "poke_img" rowspan = "2"> <img src = "img/pokemon/고릴타.png"> <br>
			고릴타</td>
		<td class = "poke_ver" ><font color="#00A1E9"> 소드 </font> </td>
		<td class = "poke_info"> 특별한 그루터기의 파워를 드럼 연주로 컨트롤한다. 뿌리를 조종해서 싸운다.</td>  
		<td class = "poke_type" rowspan = "2"> 풀</td>
		</tr>
		<tr>
		<td class = "poke_ver"> <font color = "#E50254"> 실드 </font> </td>
		<td class = "poke_info"> 드럼 테크닉이 가장 뛰어난 자가 보스가 된다. 천성이 온화해서 그룹의 조화를 중히 여긴다.</td>
		</tr>
		
		<tr>
		<td class = "poke_num" rowspan = "2"> 거다이맥스 <br> no.3 </td>
		<td class = "poke_img" rowspan = "2"> <img src = "img/pokemon/거다이맥스_고릴타.png"> <br>
			거다이맥스 고릴타</td>
		<td class = "poke_ver" ><font color="#00A1E9"> 소드 </font></td>
		<td class = "poke_info"> 거다이맥스의 파워에 의해 그루터기가 성장하여 삼림과도 같은 드럼이 되었다.</td>  
		<td class = "poke_type" rowspan = "2"> 풀</td>
		</tr>
		<tr>
		<td class = "poke_ver"><font color = "#E50254"> 실드 </font> </td>
		<td class = "poke_info"> 고릴타는 숲의 드럼과 하나가 되어 가라르 전 지역을 뒤흔드는 드럼 비트를 만들어 낸다.</td>
		</tr>
		
		
		
		
		</table>
		
		
		<!-- 	<div class="panel"> -->
		<!-- 		<div class="container1"> -->
		<!-- 			<div class="item"> -->
		<!-- 				<a -->
		<!-- 					href="https://www.google.com/search?q=%EB%AA%AC%EC%8A%A4%ED%84%B0%EB%B3%BC&tbm=isch&ved=2ahUKEwjhvO3dmY3-AhUQplYBHaqHBF0Q2-cCegQIABAA&oq=%EB%AA%AC%EC%8A%A4%ED%84%B0%EB%B3%BC&gs_lcp=CgNpbWcQAzIICAAQgAQQsQMyCAgAEIAEELEDMggIABCABBCxAzIICAAQgAQQsQMyCwgAEIAEELEDEIMBMggIABCABBCxAzIICAAQgAQQsQMyCAgAEIAEELEDMggIABCABBCxAzIICAAQgAQQsQM6BQgAEIAEULYKWMEQYKARaABwAHgBgAG4AogB9AmSAQcxLjguMC4xmAEAoAEBqgELZ3dzLXdpei1pbWfAAQE&sclient=img&ei=14EqZKH1IZDM2roPqo-S6AU&bih=677&biw=871"> -->
		<!-- 					몬스터볼 </a> -->
		<!-- 			</div> -->

		<!-- 			<div class="item"> -->
		<!-- 				<a -->
		<!-- 					href="https://www.google.com/search?q=%EA%B8%80%EB%A0%88%EC%9D%B4%EC%8B%9C%EC%95%84&tbm=isch&ved=2ahUKEwiHzsiqno3-AhX4pVYBHYBPAwwQ2-cCegQIABAA&oq=%EA%B8%80%EB%A0%88%EC%9D%B4%EC%8B%9C%EC%95%84&gs_lcp=CgNpbWcQAzIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQ6CAgAEIAEELEDOgsIABCABBCxAxCDAVD_AVizDGCBDWgAcAB4AYAB3gGIAbEJkgEFNy4zLjGYAQCgAQGqAQtnd3Mtd2l6LWltZ8ABAQ&sclient=img&ei=qoYqZIfRCvjL2roPgJ-NYA&bih=677&biw=871"> -->
		<!-- 					글레이시아</a> -->
		<!-- 			</div> -->

		<!-- 			<div class="item"> -->
		<!-- 				<a -->
		<!-- 					href="https://www.google.com/search?q=%EC%9D%B4%EB%B8%8C%EC%9D%B4&tbm=isch&ved=2ahUKEwj-5vywno3-AhW4gFYBHT8dDGUQ2-cCegQIABAA&oq=%EC%9D%B4%EB%B8%8C%EC%9D%B4&gs_lcp=CgNpbWcQAzIICAAQgAQQsQMyCAgAEIAEELEDMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQ6CAgAELEDEIMBOgsIABCABBCxAxCDAToECAAQA1DkBFj1DGCFDmgBcAB4AIABZIgB9QWSAQM3LjGYAQCgAQGqAQtnd3Mtd2l6LWltZ8ABAQ&sclient=img&ei=t4YqZL6vJbiB2roPv7qwqAY&bih=677&biw=871"> -->
		<!-- 					이브이</a> -->
		<!-- 			</div> -->

		<!-- 			<div class="item"> -->
		<!-- 				<a -->
		<!-- 					href="https://www.google.com/search?q=%ED%94%BC%EC%B9%B4%EC%B8%84&tbm=isch&ved=2ahUKEwjXgJ-4no3-AhVgqlYBHQ_bBcMQ2-cCegQIABAA&oq=%ED%94%BC%EC%B9%B4%EC%B8%84&gs_lcp=CgNpbWcQAzIICAAQgAQQsQMyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQ6CAgAELEDEIMBOgsIABCABBCxAxCDAVC3DFjrFGDyFWgBcAB4AIABdIgB_AaSAQM2LjOYAQCgAQGqAQtnd3Mtd2l6LWltZ7ABAMABAQ&sclient=img&ei=xoYqZNeFNODU2roPj7aXmAw&bih=677&biw=871"> -->
		<!-- 					피카츄</a> -->
		<!-- 			</div> -->

		<!-- 			<div class="item"> -->
		<!-- 				<a -->
		<!-- 					href="https://www.google.com/search?q=%EB%8B%98%ED%94%BC%EC%95%84&tbm=isch&ved=2ahUKEwjZiNm9no3-AhV8pVYBHfmLDAEQ2-cCegQIABAA&oq=%EB%8B%98%ED%94%BC%EC%95%84&gs_lcp=CgNpbWcQAzIICAAQgAQQsQMyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgARQvRdYtxtgiBxoAHAAeAGAAd8BiAH-BZIBBTIuMy4xmAEAoAEBqgELZ3dzLXdpei1pbWfAAQE&sclient=img&ei=0oYqZNnXEfzK2roP-ZeyCA&bih=677&biw=871"> -->
		<!-- 					님피아</a> -->
		<!-- 			</div> -->

		<!-- 			<div class="item"> -->
		<!-- 				<a -->
		<!-- 					href="https://www.google.com/search?q=%EB%A6%AC%ED%94%BC%EC%95%84&tbm=isch&ved=2ahUKEwjm9_X7n43-AhWSft4KHSHBAGUQ2-cCegQIABAA&oq=%EB%A6%AC%ED%94%BC%EC%95%84&gs_lcp=CgNpbWcQAzIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQ6CAgAEIAEELEDOggIABCxAxCDAVClBFiPCWCbCmgAcAB4AIABhwGIAYQGkgEDMS42mAEAoAEBqgELZ3dzLXdpei1pbWfAAQE&sclient=img&ei=YYgqZKbDDZL9-QahgoOoBg&bih=677&biw=871"> -->
		<!-- 					리피아</a> -->
		<!-- 			</div> -->
		<!-- 		</div> -->

		<!-- 		<div class="container1"> -->
		<!-- 			<div class="item"> -->
		<!-- 				<a href="https://namu.wiki/w/%EB%AA%AC%EC%8A%A4%ED%84%B0%EB%B3%BC"> -->
		<!-- 					<img src="img/boll.jpg" /> -->
		<!-- 				</a> -->
		<!-- 			</div> -->

		<!-- 			<div class="item"> -->
		<!-- 				<a -->
		<!-- 					href="https://namu.wiki/w/%EA%B8%80%EB%A0%88%EC%9D%B4%EC%8B%9C%EC%95%84"> -->
		<!-- 					<img src="img/gla.png" /> -->
		<!-- 				</a> -->
		<!-- 			</div> -->

		<!-- 			<div class="item"> -->
		<!-- 				<a href="https://namu.wiki/w/%EC%9D%B4%EB%B8%8C%EC%9D%B4"> <img -->
		<!-- 					src="img/eve2.jpg" /></a> -->
		<!-- 			</div> -->

		<!-- 			<div class="item"> -->
		<!-- 				<a href="https://namu.wiki/w/%ED%94%BC%EC%B9%B4%EC%B8%84"> <img -->
		<!-- 					src="img/pik.png" /></a> -->
		<!-- 			</div> -->

		<!-- 			<div class="item"> -->
		<!-- 				<a href="https://namu.wiki/w/%EB%8B%98%ED%94%BC%EC%95%84"> <img -->
		<!-- 					src="img/nim.png" /></a> -->
		<!-- 			</div> -->

		<!-- 			<div class="item"> -->
		<!-- 				<a href="https://namu.wiki/w/%EB%A6%AC%ED%94%BC%EC%95%84"> <img -->
		<!-- 					src="img/lip.png" /></a> -->
		<!-- 			</div> -->
		<!-- 		</div> -->

		<!-- 		<hr /> -->

		<!-- 		<div class="container1"> -->
		<!-- 			<div class="item"> -->
		<!-- 				<a -->
		<!-- 					href="https://www.google.com/search?q=%EB%B6%80%EC%8A%A4%ED%84%B0&tbm=isch&ved=2ahUKEwjwnsmSo43-AhUTdXAKHeh2CPsQ2-cCegQIABAA&oq=%EB%B6%80%EC%8A%A4%ED%84%B0&gs_lcp=CgNpbWcQAzIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQ6CAgAEIAEELEDOgsIABCABBCxAxCDAToECAAQAzoICAAQsQMQgwFQgwhYjSNggyhoAHAAeAGAAYgBiAGeCZIBAzMuOJgBAKABAaoBC2d3cy13aXotaW1nsAEAwAEB&sclient=img&ei=tosqZPDrAZPqwQPo7aHYDw&bih=677&biw=871"> -->
		<!-- 					부스터</a> -->
		<!-- 			</div> -->
		<!-- 		</div> -->
		<!-- 		<div class="container1"> -->
		<!-- 			<div class="item"> -->
		<!-- 				<a -->
		<!-- 					href="https://namu.wiki/w/%EB%B6%80%EC%8A%A4%ED%84%B0(%ED%8F%AC%EC%BC%93%EB%AA%AC%EC%8A%A4%ED%84%B0)"> -->
		<!-- 					<img src="img/boo.png" /> -->
		<!-- 				</a> -->
		<!-- 			</div> -->
		<!-- 		</div> -->
		<!-- 	</div> -->
	</div>
</body>
</html>