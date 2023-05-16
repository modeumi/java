<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function gocart() {
	window.opener.location.href = "Cart.jsp";
	window.close();
}
</script>
</head>
<body>

<h2> 장바구니에 물건이 추가되었습니다.</h2>

<button onclick = "gocart();">
<span><img src = "img/carti.jpg" width="30px" height="30px"></span>
<span> 장바구니 </span>
</button>
<button onclick = "window.close();">
<span> 닫기 </span>
</button>

</body>
</html>