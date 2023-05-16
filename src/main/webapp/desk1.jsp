<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "javax.servlet.*" %>

<%
    String logId = (String) session.getAttribute("log_id");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
td {
	text-align: center;
}

body {
	padding-top: 54px;
}
#itempage{
    display: flex;
    position: relative;
    margin-top: 30px;
    width: 80%;
    height: 100%;
    flex-direction: row;
    align-items: center;
}
#itemimg {
position : relative;
width: 70%;
height: 30%;
}
#iteminfo {
position : relative;
width: 35%;
height: 30%;
}
#but {
margin-top: 70px;
}
</style>
<script type="text/javascript">
		var sessionValue = "<%= logId %>";
		
	function opencart() {
		if ( sessionValue !== "null" ){
		document.getElementById("itemnum").submit();
		const cart = window.open ("addcart.jsp","cart","width = 300px, height = 200px");
		cart.opnert = window;
		}else 	{
			alert("로그인을 먼저 해주십시오.");
			location.href = "login.jsp";
		}
	}
</script>
</head>
<%@ include file="header.jsp"%>
<body>

<form id = "itemnum" action = "AddcartServlet" method="post">
<input type="hidden" name = "itemnum" value= "1001">
<input type="hidden" name = "page" value = "desk1.jsp">
</form>


<div id = "itempage">
			<div id ="itemimg">
			<img src="img/desk/desk1.png" width = "400px" height="400px">
			</div>
			<div id = "iteminfo">
			<div>
			이뿐 하얀색 책상 <br> 색상 : white <br>
				가격 : ${session.item_price} 원 <br> 배송비 : 3000 원
				</div>
				<div id  = "but">
			<a href="#"><img src="img/buy.png" width="100px" height="40px"> </a>
			<a href="#" onclick="opencart()"><img
					src="img/cart.png" width="100px" height="40px"></a>
					</div>
					</div>
</div>
	<%@ include file="footer.jsp"%>
</body>
</html>