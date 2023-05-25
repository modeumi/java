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
div, p, h1, h2 {
	margin: 0;
	padding: 0;
}

/*일단 보류 쓸데없으면 삭제*/
header {
	box-sizing: border-box;
	position: relative;
}

/* 전체 페이지 적용 */
.allpage {
	padding-right: 10px;
	padding-left: 10px;
}

/* 전체 페이지 적용 */
.allpage2 {
	margin: 60px auto 0;
	max-width: 1300px;
}

/* 세번째 div적용 */
#reviewpage {
	margin: 10%;
	margin-bottom: 80px;
}

.product-section {
	margin: 0 0 80px;
	padding: 0;
}

#banner {
	margin: 10%;
	margin-top: 3%;
	margin-bottom: 3%;
	border: 3px solid #baf2b6;
	border-radius: 10px;
	width: 80%;
	height: 10%;
	/* text-align: center; */
	background-color: #fff;
}

/*header에 적용*/
.headstyle {
	display: flex;
	-webkit-box-pack: justify;
	justify-content: space-between;
	-webkit-box-align: center;
	align-items: center;
	margin: 20px 0;
}

/*h1에 적용 */
.hstyle {
	font-size: 18px;
	line-height: 24px;
	font-weight: 700;
	color: #000;
	margin-left: 20px;
	margin-top: 5px;
}

.hstyle>.count {
	color: #80f5b8;
	margin-left: 4px;
}

/*리뷰 쓰기 버튼 적용 */
.hright {
	font-size: 15px;
	line-height: 21px;
	font-weight: 700;
	color: #000;
}

.hright>button {
	color: #35c5f0;
	transition: opacity .1s;
	font: inherit;
	margin-right: 15px;
	padding: 0;
	background: none;
	border: none;
}

/* .review-style{ 
    padding: 12px 0;
    display: flex;
    -webkit-box-pack: justify;
    justify-content: space-between;
    -webkit-box-align: center;
    align-items: center;
    border: solid #ededed;
    border-width: 1px 0;
    margin-bottom: 20px;} */

/* #review_banner {
	background-color: glay;
	border: 2px solid black;
	text-align: center;
	font: bold;
	width: 100%;
	height: 10%;} */

/* 리뷰칸에 적용 */
.itembody {
	margin-left: 10%;
	width: 80%;
	height: 100%;
	border: 3px solid #baf2b6;
	border-radius: 5px;
	/*추가*/
	padding-bottom: 40px;
	margin-bottom: 40px;
	/*  border-bottom: 1px solid #ededed; */
}

/* article에 적용 */
.review-style2 {
	position: relative;
}

/*div에 적용*/
.review-style3 {
	display: flex;
}

.img-style {
	margin-top: 4px;
	margin-right: 8px;
	/* border-radius: 50%; */
	width: 24px;
	height: 24px;
}

.imagefield {
	-webkit-box-flex: 0;
	flex: 0 0 auto;
	text-align: left;
}

/*p 클래스에 적용 */
.imagefield2 {
	font-size: 13px;
	color: #424242;
	margin-bottom: 7px
}

.imagefield3 {
	vertical-align: 3px;
	margin-left: 5px;
	font-size: 13px;
	color: #757575;
}

/*이미지 전체 볼더 적용*/
.reviewslot {
	margin: 2%;
	padding: 2%;
	border: 2px solid #ededed;
	background-color: white;
}

.imagestyle {
	background: none;
	border: none;
	margin: 0;
	padding: 0;
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

/* 리뷰문구 */
.textfield {
	text-align: left;
	line-height: 1.7;
	display: inline-grid;
	margin: 20px 0;
	font-size: 15px;
	line-height: 21px;
	letter-spacing: normal;
	color: #424242;
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
</head>
<body style="margin-top: 54px	;text-align: left;">
<%@ include file="header.jsp"%>
	<div class="allpage">
		<div class="allpage2">
			<div id="reviewpage">
				<section class="product-section">
					<div id="banner">
						<header class="headstyle">
							<h1 class="hstyle">
							<c:set var = "reviewcount" value = "${myreview.size()}" />
								내가 작성한 리뷰 <span class="count">${reviewcount}</span>
							</h1>
							<div class="hright">
								<a href = "PurchaseHistory.jsp"><button type="button">다른 리뷰 쓰기</button></a>
							</div>
						</header>
					</div>
					<!-- <div class="review-style1">		 
			 </div> -->

					<div class="itembody">
						<c:if test="${empty myreview}">등록된 리뷰가 없습니다.
		  </c:if>

						<c:if test="${not empty myreview }">
							<c:forEach items="${myreview}" var="entry" varStatus="status">
								<c:set var="review" value="${entry.value}" />
								<form action="AddcartServlet" id="${entry.key}" method="post">
									<input type="hidden" name="reviewitem" value="${entry.key}">
									<input type="hidden" name="reviewhistory" value="Y"> <input
										type="hidden" name="itemnum" value="${review.getItemid()}">
									<input type="hidden" name="page" value="new_MyReview.jsp">
									<input type="hidden" name="quantity" value="1">
								</form>
								<div class="reviewslot">
									<article class="review-style2">
										<div class="review-style3">
											<div class="imagefield">
												<p class="imagefield2">${review.getNickname()}</p>
												<span class="imagefield3">작성 날짜 : ${review.getDate()}</span>
											</div>
										</div>
										<div class="imagestyle">
											<c:if test="${not empty review.getImg().getImage1()}">
												<img src="img/upload/${review.getImg().getImage1()}"
													class="imageslot"
													onclick="imgclick(${entry.key},'img/upload/${review.getImg().getImage1()}')">
											</c:if>
											<c:if test="${not empty review.getImg().getImage2() }">
												<img src="img/upload/${review.getImg().getImage2()}"
													class="imageslot"
													onclick="imgclick(${entry.key},'img/upload/${review.getImg().getImage2()}')">
											</c:if>
											<c:if test="${not empty review.getImg().getImage3() }">
												<img src="img/upload/${review.getImg().getImage3()}"
													class="imageslot"
													onclick="imgclick(${entry.key},'img/upload/${review.getImg().getImage3()}')">
											</c:if>

											<div class="reviewinslot">
												<img src="img/upload/${review.getImg().getImage1()}"
													class="mainimage" id="main${entry.key}">
												<p class="textfield">

													<span>${review.getText()}</span>
												</p>
												<div class="review_button">
													<a href="#" onclick="gocart('${entry.key}')"> <img
														src="img/gocart.png" width="200px" height="70px"></a> <a
														href="#" onclick="gowrite('${entry.key}')"> <img
														src="img/updatereview.png" width="200px" height="70px">
													</a>
												</div>
											</div>
										</div>

									</article>
								</div>
							</c:forEach>
						</c:if>
					</div>
				</section>
			</div>
		</div>
	</div>


	<%@ include file="footer.jsp"%>
</body>
</html>