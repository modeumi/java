<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="model.*"%>
	<%
	Review review = (Review) session.getAttribute("review");
	ItemHistory reviewitem = (ItemHistory) session.getAttribute("reviewitem");
	int OrderNum = (Integer) session.getAttribute("review_order"); 
	int ItemId = (Integer) session.getAttribute("review_itemid"); 
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>möbel</title>
<style type="text/css">
body {
padding-top: 20px;
width: 400px;
height: 700px;
background-color: #99E000;
}
.reviewfield{
margin: 10px ;
width: 380px;
height :  780px;
display: block;
}
.itemfield{
margin : 3%;
 width: 380px;
 height: 200px;
 background-color: white;
 display: block;
}
.itemhis {
	padding: 10px;
	background-color: white;
	width: 90%;
	display: block;
	text-align: left;
}
.itemhis div {
float: left;
}

#smallwidth{
width : 40%;
}
.itemimg {
text-align :left;
	width: 100%;
	display: inline-block;
}

.itemdate {
	width: 80%;
	height: 10%;
	display: block;
	text-align: left;
}

.textslot {
	line-height : 1.7;
	margin-top : 18px;
	padding : 10px;
	display: inline-grid;
}
.filefield {
	width : 100%;
	background-color : white;
	border : 1px solid #EAEAEA;
	margin-bottom: 10px;
}
.uploadfield {
background-color: #EAEAEA;
text-align: center;
}
.listfield {
background-color: white;
text-align: left;
}
#rating {
background-color : white;
text-align : center;
 width: 100%; 
 height: 30px;
 
}
 .star {
    display: inline-block;
    width: 30px;
    height: 30px;
    background-image: url('img/nonstar.png');
    background-size: cover;
    cursor: pointer;
  }

  .filled {
    background-image: url('img/fullstar.png');
  }
  #whitefield {
  background-color: white;
  width: 100%;
  height: 80px;
  border : 1px solid #EAEAEA;
  }
   textarea {
        width: 100%;
        height: 150px;
        resize: none;
    }
</style>
<script type="text/javascript">
// 별점 기능
var rating = 0;

function fillStars(starCount) {
  for (var i = 1; i <= 5; i++) {
	  //rating 은 별점이 들어간 메인 div  
    var star = children[i - 1];
    if (i <= starCount) {
      star.classList.add('filled');
    } else {
      star.classList.remove('filled');
    }
  }
}

function clearStars() {
  fillStars(rating);
}

function selectRating(starCount) {
  rating = starCount;
  document.getElementById('ratingDisplay').textContent = '선택하신 별점: ' + rating;
  document.getElementById("starpoint").value = rating;
}

function deleteFile(id) {
	var fileList = document.getElementById(id);
	  fileList.remove(); // 파일 정보 제거
}
</script>
</head>
<body>

		<div class="itemfield">
		<c:set var = "review" value = "${review}"/>
			<c:set var="items" value ="${reviewitem}"/>
					<div class="itemdate">주문 일자 : ${items.getDate()}</div>
					<br>
				<div class="itemhis">
					<div id = "smallwidth"><img src="${items.getImg()}" class="itemimg"></div>
					<div class="textslot"> <span> 상품명 : <a
							href="${items.getUrl()}"> ${items.getItemname()}</a></span> <span>금액
							: ${items.getPrice()}</span> <span>수량 :
							${items.getCount()}</span>
							</div>
				</div>
		</div>
	<div class="reviewfield">
	<form action = "AddReviewServlet" method = "post">
	<input type = "hidden" name = "ordernum" value = "${review.getOrdernum()}">
	<input type = "hidden" name = "itemid" value = "${review.getItemid()}">
	<input type = "hidden" name = "userid" value = "${review.getUserid()}">
<!-- 		사진 업로드  -->
			<div class = "filefield" >
				<div class = "uploadfield">
						 <input type="file" id = "files1" name="files1" accept=".jpg, .png" value = "${review.getImg().getImage1()}">
						 <input type="file" id = "files2" name="files2" accept=".jpg, .png" value = "${review.getImg().getImage2()}">
						 <input type="file" id = "files3" name="files3" accept=".jpg, .png" value = "${review.getImg().getImage3()}">
				</div>
						</div>
<!-- 		별점 선택 1별부터 5별까지   -->
	<div id = "whitefield">
	상품의 점수는 ? 
			<div id="rating">
				<%
				for (int i = 1; i <= 5; i++) {
				%>
				<span class="star" onmouseover="fillStars(<%=i%>)"
					onmouseout="clearStars()" onclick="selectRating(<%=i%>)"></span>
				<%} %>
			</div>
			<input type = "hidden" id = "starpoint" name = "starpoint"  value = ""> 
			<script>
				  // Review 객체에서 별점 값을 가져옴
				  var starValue = ${review.getStar()};
				
				  // 별점 선택 요소 조작
				  var starElements = document.getElementsByClassName('star');
				  for (var i = 0; i < starValue; i++) {
				    starElements[i].classList.add('selected');
				  }
			</script>
			<div id="ratingDisplay">선택하신 별점: ${review.getStar()}</div>
			</div>
<!-- 				리뷰 작성  -->
				<p> 상품은 어떠셧나요? (최대 500자)
				<textarea name = "text" maxlength="500"> ${review.getText()}</textarea>
				<input type = "submit" value = " 리뷰 등록" >
		</form>
	</div>
</body>
</html>