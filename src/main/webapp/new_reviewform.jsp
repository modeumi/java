<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*"%>
<%@ page import="model.*"%>
<%
Map<Integer, Review> reviews = (Map<Integer, Review>) session.getAttribute("itemreviews");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

div, p, h1, h2 {
	margin: 0;
	padding: 0;}

body,html{
	font-family: OhouseSans,Noto Sans KR,Apple SD Gothic Neo,맑은 고딕,Malgun Gothic,sans-serif;}

#reviewpage {
	margin: 10%;
	background-color: #dbf1f8;}

#review_banner {	
	background-color: glay; 
	border: 2px solid #black;
	text-align: center;
	font: bold;
	font-size: 25px;
	font-weight: 700;
	width: 100%;
	height: 10%;}

.reviewslot {
	background-color: #fff;
	margin: 2%;
	padding: 2%;
	border: 7px solid #b9f3e8;}
	
.review-style2 {
	position: relative;}

.review-style3 {
	display: flex;}		

.imagefield {
	-webkit-box-flex: 0;
	flex: 0 0 auto;
	text-align: left;}

/*p 클래스에 적용 */
.imagefield2 {
	font-size: 13px;
	color: #424242;
	margin-bottom: 7px}

.imagefield3 {
	vertical-align: 3px;
	margin-left: 5px;
	font-size: 13px;
	color: #757575;}	
	
.imagestyle{
	background: none;
    border: none;
    margin: 0;
    padding: 0;}
    
.reviewinslot {
	margin-top: 5px;
	width: 100%;
	height: 15%;
	display: block;
	text-align: left;}
    	
.textfield {
	text-align: left;
	line-height: 1.7;
	display: inline-grid;
	margin: 20px 0;
	font-size: 15px;
    line-height: 21px;
    letter-spacing: normal;
    color: #424242;}
	
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


.mainimage {
	width: 136px;
	height: 136px;
	margin-right: 5px;
}

</style>
<script type="text/javascript">

function imgclick(key ,img){
	var imageElement = document.getElementById(key);
	var newImageSource = img;
	imageElement.src = newImageSource;
}

</script>
</head>
<body>
	
	  <div id="reviewpage">
	   <div id="review_banner">구매 후기</div>
		
		<c:if test="${empty itemreviews }">
		등록된 리뷰가 없습니다 .
		</c:if>
		<c:if test="${not empty itemreviews }">
			<c:forEach items="${itemreviews}" var="entry" varStatus="status">
				<c:set var="review" value="${entry.value}" />
				
				<div class="reviewslot">
				 <article class="review-style2">
				 
				  <div class="review-style3">
					<div class=" imagefield">
					 <p class="imagefield2">${review.getNickname()}</p>
			         <span class="imagefield3">구매날짜 : ${review.getDate()}</span>
			        </div>
				  </div>
				  				  
				  <div class="imagestyle">  
				   <c:if test="${not empty review.getImg().getImage1()}">
					<img src="img/upload/${review.getImg().getImage1()}" class="imageslot"
					 onclick="imgclick(${entry.key},'img/upload${review.getImg().getImage1()}')">
				   </c:if>
					  <c:if test="${not empty review.getImg().getImage2() }">
						<img src="img/upload/${review.getImg().getImage2()}" class="imageslot"
						     onclick="imgclick(${entry.key},'img/upload${review.getImg().getImage2()}')">
					  </c:if>
					  <c:if test="${not empty review.getImg().getImage3() }">
						<img src="img/upload/${review.getImg().getImage3()}" class="imageslot"
							 onclick="imgclick(${entry.key},'img/upload${review.getImg().getImage3()}')">
					  </c:if>
					  
					   <div class="reviewinslot">
						<img src="img/upload/${review.getImg().getImage1()}" class="mainimage"
							id="${entry.key}">
						 <div class="textfield">
							<%-- <span>구매날짜 : ${review.getDate()}</span> <span>${review.getNickname()}</span> --%>
							<span>${review.getText()}</span>
						 </div>
					   </div>
					 </div> 
					
			  </article>				 				
			 </div>
			 <p>
			</c:forEach>
		</c:if>
	 </div>
		 
	
</body>
</html>