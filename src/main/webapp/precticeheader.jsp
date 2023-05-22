<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
	crossorigin="anonymous"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#backgr {
	z-index: 1000;
	position: fixed;
	height: 70px;
	margin-top: -55px;
	width: 100%;
	background-color: white;
	border-bottom: 1px solid black;
}


.col-5 {
	width : 57%;
	display: flex;
	align-items: center;
}
.col-5 > * {
  margin-right: 10px;
}

.col-1 {
	display: flex;
	align-items: center;
}
#loginBtn{
           border-top-left-radius: 5px;
           border-bottom-left-radius: 5px;
           margin-right:-4px;
           border: 1px solid #40A940;
           background-color: rgba(0,0,0,0);
           color: #40A940;
           padding: 5px;
}
#singupBtn{
           border-top-right-radius: 5px;
           border-bottom-right-radius: 5px;    
           margin-left:-3px;
           border: 1px solid #40A940;
           background-color: rgba(0,0,0,0);
           color: #40A940;
           padding: 5px;
}        
#loginBtn, #singupBtn,#logout button{
            border: 1px solid #40A940;
            background-color: rgba(0,0,0,0);
            color: #40A940;
            padding: 5px;
}
#logoutBtn{ 
           border-radius: 5px;
           border: 1px solid #40A940;
           background-color: rgba(0,0,0,0);
           color: #40A940;
           padding: 5px;
}
#loginBtn, #singupBtn button:hover{
            color:white;
            background-color: #40A940;
}
</style>

<script type="text/javascript">
	window.onload = function() {
		  startTimer();
		}
	function invalid() {
		document.getElementById("logout").submit();
	}
	
	function startTimer() {
		  var minutes = 30;
		  var seconds = 0;

		  var timer = setInterval(function() {
		    seconds--;
		    if (seconds < 0) {
		      minutes--;
		      seconds = 59;
		    }

		    if (minutes < 0) {
		      clearInterval(timer);
		      sessionStorage.clear();
		      alert('로그인 후 30분이 경과해 로그아웃 합니다.');
		      document.getElementById('logout').submit();
		    } else {
		      var minStr = minutes < 10 ? '0' + minutes : minutes;
		      var secStr = seconds < 10 ? '0' + seconds : seconds;
		      document.getElementById('timer').innerHTML = minStr + ':' + secStr;
		    }
		  }, 1000);
		}

		function extendSessionTime() {
		  // 세션 시간을 30분으로 연장
		  var now = new Date();
		  var time = now.getTime() + 30 * 60 * 1000;
		  sessionStorage.setItem('sessionTime', time);
		  location.reload();
		}

		function initTimer() {
			var startTime = new Date().getTime();
			  setInterval(function() {
			    var timeElapsed = new Date().getTime() - startTime;
			    var minutes = Math.floor((timeElapsed % (1000 * 60 * 60)) / (1000 * 60));
			    var seconds = Math.floor((timeElapsed % (1000 * 60)) / 1000);
			    var minStr = minutes < 10 ? "0" + minutes : minutes;
			    var secStr = seconds < 10 ? "0" + seconds : seconds;
			    document.getElementById('timer').innerHTML = minStr + ':' + secStr;
			  }, 1000);
		}
		function changecolor(event) {
			  var btn = document.getElementById("logoutBtn");
			  btn.style.backgroundColor = "#40A940";
			  btn.style.color = "white";
			}

			function resetcolor(event) {
			  var btn = document.getElementById("logoutBtn");
			  btn.style.backgroundColor = "rgba(0, 0, 0, 0)";
			  btn.style.color = "#40A940";
			}
</script>
</head>
<body>

	<header>
		<form id="logout" action="LogoutServlet" method="post"></form>

		<div id="backgr">
			<div class="container text-center">
				<div class="row justify-content-between">
					<div class="col-1">
						<h1>
							<a href="home.jsp"><img src="img/로고.png" / width="80px"
								height="60px"></a>
						</h1>
					</div>
					
					<div class="col-5" >
					
						<c:choose>
							<c:when test="${not empty sessionScope.member}">
							<div>로그인 시간 </div>
								<div>
									<span id="timer"> 30:00 </span> 
								</div>
								<button onclick="extendSessionTime()">시간연장</button>
							</c:when>
						</c:choose>
                      
						<span><input type="text" placeholder="통합검색"
							autocomplete="off" aria-autocomplete="list" value=""> 
							<c:choose>

								<c:when test="${empty sessionScope.member}">
									<a href="login.jsp"><button id="loginBtn">로그인</button></a>
									<a href="TermsOfUse.jsp"><button id="singupBtn">회원가입</button></a>
									<a href="Complain.jsp" style="margin-left: 20px"><img src="img/고객센터.png"
										width="40px" height="40px"></a>
								</c:when>

								<c:otherwise>
									<a href="Mypage2.jsp"><img src="img/프로필.png"
										width="40px" height="40px"></a>
									<button id="logoutBtn" onclick="invalid()"onmouseenter="changecolor()" onmouseleave="resetcolor()">로그아웃</button>
									<a href="Complain.jsp" style="margin-left: 20px"><img src="img/고객센터.png"
										width="40px" height="40px"></a>
									<a href="Cart.jsp"><img src="img/carti.png"
										width="40px" height="40px"> </a>

								</c:otherwise>

							</c:choose> </span>
					</div>
				</div>
			</div>
		</div>

	</header>

</body>
</html>