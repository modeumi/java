<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${sessionScope.log_name}의 트레이너 카드</title>
<style type="text/css">
.card {
	display: flex;
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
</head>
<body>

	<div class="card">
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
	<table>
	<tr>
	<td><a href = "EntryChange.jsp"><img src ="img/button.png"></a></td>
	<td><a href = "CardDesign.jsp"><img src ="img/button.png"></a></td>
	<td><a href = "NpcChange.jsp"><img src ="img/button.png"></a></td>
	<td><img src ="img/button.png" onclick = "window.close();"></td>
	</tr>
	</table>

</body>
</html>