<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
padding-top : 54px;
}
a {
	text-decoration-line: none;
}

h2 {
text-align: left;
}

#eventbanner {
	padding-top : 30px;
	border-left: 1px solid;
	float: left;
	margin-left: 1%;
	width: 85%;
	height: 15%;
}

#items {
	border-left: 1px solid;
	float: top;
	float: left;
	width: 85%;
	height: 80%;
	background-color: white;
	margin-left: 1%;
}

#items h2:first-letter {
	font-size: 140%;
	font-style: bold;
	color: black;
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

#cut_line {
	border-bottom: 2px dotted black;
}
</style>
<%@ include file = "header.jsp" %>
</head>
<body>
<%@ include file = "Item_mould.jsp" %>
		<div id="eventbanner">
			<img src="img/banner.png" width="100%" height="250px" />
		</div>

		<div id="items">
			<p>
			<h2>인기상품</h2>
			<table class="items_field">
				<tr>
					<td class="item_slot"><a href="bed1.jsp"><img
							src="img/bed/bed1.png" width="100%" height="100%" /> <br>
							침대 1 </a><br> 39,800원</td>
					<td class="item_slot"><a href="bed2.jsp"><img
							src="img/bed/bed2.png" width="100%" height="100%" /> <br>
							침대 2 </a><br> 49,800원</td>
					<td class="item_slot"><a href="bed3.jsp"><img
							src="img/bed/bed3.png" width="100%" height="100%" /> <br>
							침대 3 </a><br> 59,800원</td>
					<td class="item_slot"><a href="bed4.jsp"><img
							src="img/bed/bed4.png" width="100%" height="100%" /> <br>
							침대 4 </a><br> 69,800원</td>
				</tr>
			</table>
			<div id="cut_line"></div>
			<p>
			<h2>전체상품</h2>
			<table class="item_field">
				<tr>
					<td class="item_slot"><a href="bed1.jsp"><img
							src="img/bed/bed1.png" width="100%" height="100%" /> <br>
							침대 1 </a><br> 39,800원</td>
					<td class="item_slot"><a href="bed2.jsp"><img
							src="img/bed/bed2.png" width="100%" height="100%" /> <br>
							침대 2 </a><br> 49,800원</td>
					<td class="item_slot"><a href="bed3.jsp"><img
							src="img/bed/bed3.png" width="100%" height="100%" /> <br>
							침대 3 </a><br> 59,800원</td>
					<td class="item_slot"><a href="bed4.jsp"><img
							src="img/bed/bed4.png" width="100%" height="100%" /> <br>
							침대 4 </a><br> 69,800원</td>
				</tr>
				<tr>
					<td class="item_slot"><a href="bed1.jsp"><img
							src="img/bed/bed1.png" width="100%" height="100%" /> <br>
							침대 1 </a><br> 39,800원</td>
					<td class="item_slot"><a href="bed2.jsp"><img
							src="img/bed/bed2.png" width="100%" height="100%" /> <br>
							침대 2 </a><br> 49,800원</td>
					<td class="item_slot"><a href="bed3.jsp"><img
							src="img/bed/bed3.png" width="100%" height="100%" /> <br>
							침대 3 </a><br> 59,800원</td>
					<td class="item_slot"><a href="bed4.jsp"><img
							src="img/bed/bed4.png" width="100%" height="100%" /> <br>
							침대 4 </a><br> 69,800원</td>
				</tr>
				<tr>
					<td class="item_slot"><a href="bed1.jsp"><img
							src="img/bed/bed1.png" width="100%" height="100%" /> <br>
							침대 1 </a><br> 39,800원</td>
					<td class="item_slot"><a href="bed2.jsp"><img
							src="img/bed/bed2.png" width="100%" height="100%" /> <br>
							침대 2 </a><br> 49,800원</td>
					<td class="item_slot"><a href="bed3.jsp"><img
							src="img/bed/bed3.png" width="100%" height="100%" /> <br>
							침대 3 </a><br> 59,800원</td>
					<td class="item_slot"><a href="bed4.jsp"><img
							src="img/bed/bed4.png" width="100%" height="100%" /> <br>
							침대 4 </a><br> 69,800원</td>
				</tr>
			</table>
		</div>
		<br>
		<br>

<%@ include file = "footer.jsp" %>
</body>
</html>