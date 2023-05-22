<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
.profile {
 	position: absolute; 
    transform: translate(120%, 0%);
/* 	top: 50%; */
/* 	left: 50%; */
	width: 271px;
	height: 527px;
/* 	padding: 5px; */
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
.box {
	display: flex;
	align-items: center;
	justify-content: center;
}

.point, .ing {
    transform: translate(66%, -8%);
	width: 1000px;
	height: 200px;
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
	height: 115px;
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
			</h3>
		<p>팔로우 0 | 팔로잉 0</p>
		<p>
			<a href="Privacy.jsp"><button>설정</button></a>
		</p>
		<hr>
		<div class="frame">
			<div class="screpbook">
				<table>
					<tr>
						<td>
							<button>
								<img src="img/스크랩북.png"> <br> 스크랩북 <br> 0
							</button>
						</td>
						<td>
							<button>
								<img src="img/하트.png"><br> 좋아요<br> 0
							</button>
						</td>
						<td>
							<button>
								<img src="img/쿠폰.png"> <br>구매내역 <br>0
							</button>
						</td>
					</tr>
				</table>
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
						<td>0<br>포인트
						</td>
						<td>|</td>
						<td>0<br>구매내역
						</td>
						<td>|</td>
						<td>0<br>리뷰
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
