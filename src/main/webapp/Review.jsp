<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="model.*"%>
	<%
	// review는 review의 정보를 담고있으며 key는 ordernum
	Map<Integer, Review> review = (Map<Integer, Review>) session.getAttribute("rewiew");
	// itemhistory는 item들의 거래 정보를 담고있으며 key는 ordernum
	Map<Integer, ItemHistory> itemhistory = (Map<Integer, ItemHistory>) session.getAttribute("itemhistory");
	int ordernum = (Integer) session.getAttribute("review_order"); 
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
width: 400px;
height: 800px;
background-color: #99E000;
}
.reviewfield{
margin: 10px ;
width: 380px;
height :  780px;
display: block;
}
.itemfield{
 width: 380px;
 height: 200px;
 background-color: white;
 display: block;
}
.itemhis {
	margin: 5%;
	padding: 10px;
	background-color: white;
	width: 90%;
	display: block;
	text-align: left;
}

.itemimg {
text-align :left;
	width: 20%;
	display: inline-block;
}

.itemdate {
	width: 80%;
	height: 10%;
	display: block;
	text-align: left;
}

.textslot {
	display: inline-grid;
}
</style>
</head>
<body>


		<div class="itemfield">
		<c:set var = "review" items = "${review.get(ordernum}"/>
			<c:set var="items" items="${itemhistory.get(ordernum)}"/>
				<div class="itemhis">
					<div class="itemdate">주문 일자 : ${items.value.getDate()}</div>
					<span><img src="${items.value.getImg()}" class="itemimg"></span>
					<span class="textslot"> <span> 상품명 : <a
							href="${items.value.getUrl()}"> ${items.value.getName()}</a></span> <span>금액
							: ${items.value.getPrice()}</span> <span>수량 :
							${items.value.getCount()}</span>
					</span>
				</div>
		</div>
	<div class="reviewfield">
	<form action = "AddReviewServlet" method = "post">
	
		<c:if test="${empty review }">
		<input type ="file" name = "image" value = "upload">
	<%for (int i = 1; i<=5; i++){%>
				<input type = "radio" name = "star"  id ="starform" value = "<%=i %>" >
				<span > <img src = "img/<%=i %>star.png"  width="<%=i %>0px" height="10px"></span>
				<%} %>
				
		</c:if>

		<c:if test="${not empty review }">
			<div class="imgfield">
				<c:forEach var="imgentry" items="${review.value.getImg()}">
					<div class="imgsmall">
						<img src="${imgentry.value}">
					</div>
				</c:forEach>
				<img src="${review.value.getImg()}">
				<div class="infofield">작성자 : ${review.value.getName()} 님
				
				<%for (int i = 1; i<=5; i++){%>
				<input type = "radio" name = "star"  id ="starform" value = "<%=i %>" >
				<span > <img src = "img/<%=i %>star.png"  width="<%=i %>0px" height="10px"></span>
				<%} %>
				</c:if>
					${review.value.getStar()}  ${review.value.getDate()}</div>
			</div>
			<div class="textfield">${review.value.getText()}</div>
		</form>
	</div>

</body>
</html>