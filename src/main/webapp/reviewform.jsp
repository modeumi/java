<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*"%>
<%@ page import="model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#reviewpage {
	margin: 10%
}

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
	border: 1px solid black
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
					<div class=" imagefield">
						<c:if test="${not empty review.getImg().getImage1()}">
							<img src="img/${review.getImg().getImage1()}" class="imageslot"
								onclick="imgclick(${entry.key},'img/${review.getImg().getImage1()}')">
						</c:if>
						<c:if test="${not empty review.getImg().getImage2() }">
							<img src="img/${review.getImg().getImage2()}" class="imageslot"
								onclick="imgclick(${entry.key},'img/${review.getImg().getImage2()}')">
						</c:if>
						<c:if test="${not empty review.getImg().getImage3() }">
							<img src="img/${review.getImg().getImage3()}" class="imageslot"
								onclick="imgclick(${entry.key},'img/${review.getImg().getImage3()}')">
						</c:if>
					</div>
					<div class="reviewinslot">
						<img src="img/${review.getImg().getImage1()}" class="mainimage"
							id="${entry.key}">

						<div class="textfield">

							<span>구매날짜 : ${review.getDate()}</span> <span>${review.getNickname()}</span>
							<span>${review.getText()}</span>
						</div>
					</div>
				</div>
			</c:forEach>
		</c:if>
	</div>
</body>
</html>