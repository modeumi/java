<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>트레이너 카드 디자인</title>
<style type="text/css">
/* #card_back{ */
/* background-image: url("img/card_back/${sessionScope.log_background}");  */
/* } */
#card {
	display: flex;
	flex-direct: row;
	margin: 10px;
	width: 450px;
	height: 330px;
	border: 3px solid black;
	background-image: url("img/card_back/${sessionScope.log_background}");  
}
.npc {
	margin-left: 5px;
	width: 145px;
	height: 230px;
	margin-top: 50px;
}

.info {
	position: absolute;
	width: 200px;
	height: 80px;
	margin-top: 50px;
	margin-left: 180px;
}

.entry {
	position: absolute;
	margin-top: 110px;
	margin-left: 180px;
	width: 240px;
	height: 112px;
}

</style>
<script type="text/javascript">
function over_green(){
	document.getElementById("card").innerHTML =
		"<img src='img/card_back/green.png' >";
}
function over_red(){
	document.getElementById("card").innerHTML =
		"<img src='img/card_back/red.png' >";
}
function over_sky(){
	document.getElementById("card").innerHTML =
		"<img src='img/card_back/sky.png' >";
}
function over_black(){
	document.getElementById("card").innerHTML =
		"<img src='img/card_back/black.png' >";
}

function out_img(){
	document.getElementById("card").innerHTML =
		"<img src='img/card_back/${sessionScope.log_background}'>";
}

function click_green(){
	document.getElementById("card").innerHTML =
		"<img src='img/card_back/green.png'>";
}
function click_red(){
	document.getElementById("card").innerHTML =
		"<img src='img/card_back/red.png' >";
}
function click_sky(){
	document.getElementById("card").innerHTML =
		"<img src='img/card_back/sky.png'>";
}
function click_black(){
	document.getElementById("card").innerHTML =
		"<img src='img/card_back/black.png' >";
}


</script>
</head>
<body>
<div id="card">
		<div class="npc">
 			<img src="img/npc/${sessionScope.log_propile}" width = '145px' height = '230px'>
		</div>

		<div class="info">
			<b>${sessionScope.log_name} <br> ${sessionScope.log_phone}</b>
		</div>

		<table class="entry">
			<tr>
			<td><img src="img/pokemon/${sessionScope.log_entry1}" width = '80px' height = '80px'></td>
			<td><img src="img/pokemon/${sessionScope.log_entry2}" width = '80px' height = '80px'></td>
			<td><img src="img/pokemon/${sessionScope.log_entry3}" width = '80px' height = '80px'></td>
			</tr>
			
			<tr>
			<td><img src="img/pokemon/${sessionScope.log_entry4}" width = '80px' height = '80px'></td>
			<td><img src="img/pokemon/${sessionScope.log_entry5}" width = '80px' height = '80px'></td>
			<td><img src="img/pokemon/${sessionScope.log_entry6}" width = '80px' height = '80px'></td>
			</tr>
		</table>
	</div>
<!-- 	<table> -->
<!-- 	<tr> -->
<!-- 	<td><img src = "img/card_back/green.png"  width = '100px' height = '80px' -->
<!-- 	onmouseover="over_green()" onmouseout="out_img()" onclick="click_green()" ></td> -->
<!-- 	<td><img src = "img/card_back/red.png" width = '100px' height = '80px' -->
<!-- 	onmouseover="over_red()" onmouseout="out_img()" onclick="click_red()"></td> -->
<!-- 	<td><img src = "img/card_back/sky.png" width = '100px' height = '80px' -->
<!-- 	onmouseover="over_sky()" onmouseout="out_img()" onclick="click_sky()"></td> -->
<!-- 	<td><img src = "img/card_back/black.png" width = '100px' height = '80px' -->
<!-- 	onmouseover="over_black()" onmouseout="out_img()" onclick="click_black()"></td> -->
<!-- 	</table> -->
<form action = "change_back" method = "post">
	<img src = "img/card_back/green.png"  width = '100px' height = '80px'
	onmouseover="over_green()" onmouseout="out_img()" onclick="click_green()" >
	<img src = "img/card_back/red.png" width = '100px' height = '80px'
	onmouseover="over_red()" onmouseout="out_img()" onclick="click_red()">
	<img src = "img/card_back/sky.png" width = '100px' height = '80px'
	onmouseover="over_sky()" onmouseout="out_img()" onclick="click_sky()">
	<img src = "img/card_back/black.png" width = '100px' height = '80px'
	onmouseover="over_black()" onmouseout="out_img()" onclick="click_black()">
	</form>

</body>
</html>