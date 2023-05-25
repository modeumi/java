<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*"%>
<%@ page import="model.*"%>
<%
Map<Integer, ItemHistory> itemhistory = (Map<Integer, ItemHistory>) session.getAttribute("itemhistory");
Map<Integer, Review> myreview = (Map<Integer, Review>) session.getAttribute("myreview");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
.profile {
 	position: absolute; 
    transform: translate(30%, 0%);
	width: 26%;
	height: 76vh;
	background-color: white;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.3);
	list-style-type: none;
}
.frame {
	display: flex;
    align-items: center;
}
.frame button {
margin-left: 0.1rem
}

.box {
	display: flex;
	align-items: center;
	justify-content: center;
}

.point {
    transform: translate(60%, -3vh);
	width: 60%;
	height: 27vh;
	background-color: white;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.3);
	list-style-type: none;
}
.ing {
    transform: translate(60%, -3vh);
	width: 60%;
	height: 45vh;
	background-color: white;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.3);
	list-style-type: none;
}

.box2 {
	width: 1000px;
	height: 80px;
	background-color:#98FB98;;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.3);
	list-style-type: none;
}

.nickname {
	text-align: left
}
.empty-space {
	height: 25px;
}
</style>
</head>
<body>
	<div class="profile">
		<img src="img/프로필.png"> <br>
		<p>
			<h3>
				<c:choose>
					<c:when test="${empty sessionScope.log_nickname}">
						<!-- Display default text when session attribute is empty -->
						Default Nickname
					</c:when>
					<c:otherwise>
						<!-- Display session attribute value when it exists -->
						<c:out value="${sessionScope.log_nickname}"/>
					</c:otherwise>
				</c:choose>
					<c:set var = "purchasecount" value = "${itemhistory.size()}" />
				<c:set var = "reviewcount" value = "${myreview.size()}" />
			</h3>
		<p>팔로우 0 | 팔로잉 0</p>
		<p>
			<a href="Privacy.jsp"><button>설정</button></a>
		</p>
		<hr>
		<div class="frame">
			<div class="screpbook">
							<button>
								<a href = "new_MyReview.jsp"><img src="img/스크랩북.png"> <br> 리뷰 <br> ${reviewcount}</a><br>
							</button>
							<button>
								<img src="img/하트.png"><br> 좋아요<br> 0
							</button>
							<button>
								<a href = "PurchaseHistory.jsp"><img src="img/쿠폰.png"> <br>구매내역 <br>${purchasecount}</a>
							</button>
			</div>
		</div>
	</div>
	<br>

	<div class="point">
			<h3 class="nickname">
			<c:choose>
					<c:when test="${empty sessionScope.log_nickname}">
						<!-- Display default text when session attribute is empty -->
						<h4>Default Nickname님 반갑습니다.</h4>
					</c:when>
					<c:otherwise>
						<!-- Display session attribute value when it exists -->
						<h4><c:out value="${sessionScope.log_nickname}"/> 님 반갑습니다.</h4>
					</c:otherwise>
				</c:choose>
				</h3>
			<br>
			<div class="box">
				<table class="box2">
					<tr>
						<td>${sessionScope.log_point}<br>포인트
						</td>
						<td>|</td>
						<td>${purchasecount}<br><a href = "PurchaseHistory.jsp">구매내역</a>
						</td>
						<td>|</td>
						<td>${reviewcount}<br><a href = "new_MyReview.jsp">리뷰</a>
						</td>
				</table>
			</div>
		</div>
	<section>
		<div class="empty-space"></div>
	</section>
		<div class="ing">
			<h3 class="product">진행중인 상품</h3>
			<br>
			<div class="ing2">
			
				</table>
			</div>
		</div>
</body>
</html>
