<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*"%>
<%@ page import="model.*"%>
<%
Map<Integer, Review> myreview = (Map<Integer, Review>) session.getAttribute("myreview");
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
#reviewpage {
	margin: 10%;
}

.itembody {
	margin-left: 10%;
	width: 80%;
	height: 100%;
	background-color: #99E000;
	border: 3px solid #99E000;
	border-radius: 20px;
}

#banner {
	margin: 10%;
	margin-top: 3%;
	margin-bottom: 3%;
	border: 3px solid #99E000;
	border-radius: 20px;
	width: 80%;
	height: 10%;
	text-align: center;
	background-color: #99E000;
}

#review_banner {
	background-color: glay;
	border: 2px solid black;
	text-align: center;
	font: bold;
	width: 100%;
	height: 10%;
}

.reviewslot {
	margin: 2%;
	padding: 2%;
	border: 1px solid black;
	background-color: white;
}

.imagefiewd {
	padding: 3px;
	width: 100%;
	height: 46px;
	display: block;
}

.imageslot {
	width: 40px;
	height: 40px;
	margin-right: 3px;
	display: inline-block;
}

.imagefield {
	text-align: left;
}

.reviewinslot {
	margin-top: 5px;
	width: 100%;
	height: 15%;
	display: block;
	text-align: left;
}

.mainimage {
	width: 136px;
	height: 136px;
	margin-right: 5px;
}

.textfield {
	text-align: left;
	line-height: 1.7;
	display: inline-grid;
}

.review_button {
	text-align: right;
	margin-right: 20px;
}
</style>
<script type="text/javascript">

function imgclick(key ,img){
	var imageElement = document.getElementById("main"+key);
	var newImageSource = img;
	imageElement.src = newImageSource;
}

function gocart(ordernum){
	document.getElementById(ordernum).action = "AddcartServlet";
	document.getElementById(ordernum).submit();
}

function gowrite(ordernum){
	document.getElementById(ordernum).action = "ReviewServlet";
	 document.getElementById(ordernum).submit();
	 var reviews = window.open('dummy.jsp','','width = 450px,height = 700px ,resizable=no, scrollbars=0');
}
</script>
<%@ include file="header.jsp"%>
</head>
<body>
	<div id="reviewpage">
		<div id="banner">
			<h2>구매 후기</h2>
		</div>
		<div class="itembody">
			<c:if test="${empty myreview}">
				등록된 리뷰가 없습니다 .
			</c:if>
			<c:if test="${not empty myreview }">
				<c:forEach items="${myreview}" var="entry" varStatus="status">
					<c:set var="review" value="${entry.value}" />
					<form action = "AddcartServlet" id = "${entry.key}" method = "post">
						<input type="hidden" name = "reviewitem" value = "${entry.key}">
						<input type="hidden" name = "reviewhistory" value = "Y">
						<input type="hidden" name = "itemnum" value = "${review.getItemid()}">
						<input type="hidden" name = "page" value = "MyReview.jsp">
						<input type="hidden" name = "quantity" value = "1">
					</form>
					<div class="reviewslot">
						<div class=" imagefield">
							<c:if test="${not empty review.getImg().getImage1()}">
								<img src="img/upload/${review.getImg().getImage1()}" class="imageslot"
									onclick="imgclick(${entry.key},'img/upload/${review.getImg().getImage1()}')">
									
							</c:if>
							<c:if test="${not empty review.getImg().getImage2() }">
								<img src="img/upload/${review.getImg().getImage2()}" class="imageslot"
									onclick="imgclick(${entry.key},'img/upload/${review.getImg().getImage2()}')">
							</c:if>
							<c:if test="${not empty review.getImg().getImage3() }">
								<img src="img/upload/${review.getImg().getImage3()}" class="imageslot"
									onclick="imgclick(${entry.key},'img/upload/${review.getImg().getImage3()}')">
							</c:if>
						</div>
						<div class="reviewinslot">
							<img src="img/upload/${review.getImg().getImage1()}" class="mainimage"
								id="main${entry.key}">
								<br>

							<div class="textfield">

								<span>구매날짜 : ${review.getDate()}</span> <span>${review.getNickname()}</span>
								<span>${review.getText()}</span>
							</div>
							<div class="review_button">
								<a href="#" onclick="gocart('${entry.key}')"> <img
									src="img/gocart.png" width="200px" height="70px"></a> <a
									href="#" onclick="gowrite('${entry.key}')"> <img
									src="img/updatereview.png" width="200px" height="70px">
								</a>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:if>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>