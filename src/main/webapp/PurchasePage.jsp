<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="model.*"%>
<%
Map<Integer, Item> cart = (Map<Integer, Item>) session.getAttribute("cart");
Member member = (Member) session.getAttribute("member");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	padding-top: 54px;
}

#panel {
	text-align: center;
	margin-top: 10%;
	margin-left: 20%;
	margin-right: 20%;
	width: 60%;
	height: 100%;
	background-color: #99E000;
	margin-top: 10%;
}

#banner {
	margin: 4%;
	width: 92%;
	height: 20%;
	text-align: center;
}

.itempanel {
	margin: 3%;
	width: 94%;
	height: 20%;
	border: 1px solid #EAEAEA;
	text-align: center;
}

.buttons {
	display: inline-block;
	padding: 5px;
	cursor: pointer;	
}

.buttons.active {
	display: inline-block;
	border: 3px solid blue;
	padding: 5px;
	cursor: pointer;
}

#payfield {
	margin: 5px;
	padding: 10px;
}

body a {
	text-decoration-line: none;
}
</style>
<script type="text/javascript">
	function buy() {
		alert("결제되었습니다. 감사합니다.");
	}

	function change(element) {
		// 모든 버튼에서 파란색 테두리 제거
        var buttons = document.getElementsByClassName("buttons");
        for (var i = 0; i < buttons.length; i++) {
            buttons[i].classList.remove("active");
        }
        // 클릭한 버튼에 파란색 테두리 추가
        element.classList.add("active");
		document.getElementById("viewqr").innerHTML = "<img src='img/myqr.jpg' width = '300px' height = '300px'>";
	}

	function changetype(type) {
		var vcard = document.getElementById("vcard");
		var veasy = document.getElementById("veasy");
		var vinsert = document.getElementById("vinsert");

		vcard.style.display = "none";
		veasy.style.display = "none";
		vinsert.style.display = "none";

		if (type == "card") {
			vcard.style.display = "block";
		} else if (type === "easy") {
			veasy.style.display = "block";
		} else if (type === "insert") {
			vinsert.style.display = "block";
		}
	}
	
	function usepoint(totalPrice, memberPoint) {
		var usePointInput = document.getElementById("usepoint");
		var usePoint = parseInt(usePointInput.value);

		var numberPattern = /^[0-9]+$/;
		if (!numberPattern.test(usePointInput.value)) {
			alert("숫자만 입력해주세요.");
			usePointInput.value = "";
			return;
		}
		
		if (usePoint > memberPoint) {
			alert("사용 가능한 포인트는 " + memberPoint + " 점 입니다.");
			usePointInput.value = "";
			return;
		}

		var payableAmount = totalPrice - usePoint;
		document.getElementById("totalprice").textContent = "결제 금액 : " + payableAmount + "원";
		document.getElementById("subusepoint").value =usePoint;
	}

	function useall(totalPrice, memberPoint) {
		document.getElementById("usepoint").value = memberPoint;
		usepoint(totalPrice, memberPoint); // 값들을 인자로 전달합니다.
	}
	function submitform() {
		document.getElementById("dopurchase").submit();
	}
</script>
<%@ include file="header.jsp"%>
</head>
<body>
	<script>
		window.onload = function() {
			var vcard = document.getElementById("vcard");
			var veasy = document.getElementById("veasy");
			var vinsert = document.getElementById("vinsert");

			// 모든 요소를 초기에 비활성화
			vcard.style.display = "none";
			veasy.style.display = "none";
			vinsert.style.display = "none";
		}
	</script>
	<div id="panel">
		<div id="banner">
		<c:set var ="member" value = "${member}" />
			<h2>구매 내역서</h2>
		</div>
		<hr />
		<c:forEach items="${cart}" var="itemEntry">
			<div class="itempanel">
				<table>
					<tr>
						<td rowspan="3"><img src="${itemEntry.value.getImg()}"
							width="50px" height="50px"></td>
						<td>${itemEntry.value.getName()}</td>
					</tr>
					<tr>
						<td>수량 : ${itemEntry.value.getCount()}</td>
					</tr>
					<tr>
						<td>${itemEntry.value.getPrice() }원</td>
					</tr>
				</table>
				<hr />
				<div>총금액 :
					${itemEntry.value.getCount()*itemEntry.value.getPrice()} 원</div>
			</div>
		</c:forEach>
		<c:set var="totalCount" value="0" />
		<c:set var="totalPrice" value="0" />
		<c:forEach items="${cart}" var="itemEntry">
			<c:set var="item" value="${itemEntry.value}" />
			<c:set var="count" value="${item.getCount()}" />
			<c:set var="price" value="${item.getPrice()}" />
			<c:set var="totalPrice" value="${totalPrice + count * price}" />
		</c:forEach>
		<div> 포인트 사용  : 
		<span><input type ="text" id = "usepoint" name= "usepoint" size = '5px' ></span>
		<span style = "margin-right : '3px' "> <button onclick = "usepoint(${totalPrice},${member.getPoint()})"> 적용 </button></span>
		<span style = "margin-right : '3px' "> <button onclick = "useall(${totalPrice},${member.getPoint()})" > 모두 사용</button></span>
		</div>
		<form action="purchaseServlet" id = "dopurchase"method="post">
		<div id = "totalpoint" > 현재 잔여 포인트 : ${member.getPoint()} P</div>
		<br>
		<div> 예상 적립 포인트 : ${Math.round(totalPrice/100)} P</div>
		<div id ="totalprice">결제 금액 : ${totalPrice} 원</div>
			<div>결제 방법</div>
			<input type="radio" name="typepay" value="card"
				onchange="changetype('card')"> 카드 <input type="radio"
				name="typepay" value="easy" onchange="changetype('easy')">
			간편결제 <input type="radio" name="typepay" value="insert"
				onchange="changetype('insert')"> 통장 입금
				
	<input type = "hidden" id ="subusepoint"  name = "subusepoint" value ="">
	<input type="hidden" name = "subtotalprice" value = "${totalPrice}">
			<div id="payfield">
				<div id="vcard">
					<div>
						<select name="cartcom">
							<option value=" red">빨간카드</option>
							<option value=" blue">파란카드</option>
							<option value=" gold">골드카드</option>
						</select>
					</div>
					<p>
					<div>
						카드 번호<br>
						<p>
							<input type="text" name="card1" maxlength="4" size="5px">-
							<input type="password" name="card2" maxlength="4" size="5px">-
							<input type="password" name="card3" maxlength="4" size="5px">-
							<input type="text" name="card4" maxlength="4" size="5px">
					</div>
				</div>

				<div id="veasy">
					<a href="avascript:void(0)" class="buttons" onclick="change(this)"><img
						src="img/pay.png" width="100px" height="100px"> <br>열정pay</a>
					<a href="avascript:void(0)" class="buttons" onclick="change(this)"><img
						src="img/dutchpay.png" width="100px" height="100px"> <br>더치pay</a>
					<a href="avascript:void(0)" class="buttons" onclick="change(this)"><img
						src="img/pompei.png" width="100px" height="100px"> <br>폼pay</a>
					<a href="avascript:void(0)" class="buttons" onclick="change(this)"><img
						src="img/taipei.png" width="100px" height="100px"> <br>타이pay</a>
					<div id="viewqr"></div>
				</div>

				<div id="vinsert">
					<div>국민은행 : 244002-04-261405</div>
				</div>
			</div>
			<p>
				<button onclick = "submitform()" > 구매 하기</button>
		</form>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>