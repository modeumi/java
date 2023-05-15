<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function okbt(){
window.opener.ans = "1";
window.opener.location.href = "Cart.jsp";
window.close()
}
</script>
</head>
<body>
<h2>해당 물품을 장바구니에서<br>삭제하시겠습니까 ?</h2>
<button onclick = "okbt()">예</button>
<button onclick = "window.close();">아니오</button>
</body>
</html>