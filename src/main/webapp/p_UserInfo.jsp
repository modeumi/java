<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="pokemon.com.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel ="stylesheet" href = "resources/css/bootstrap.min.css"/>
<style type="text/css">

.panel {
text-align : center;
position: absolute;
width: 90%;
height: 90%;
border : 2px solid black;
padding : 5px;
} 
hr{
size: 10px;}

h2{
text-align: center;}
h5{
text-align: center;
border-bottom : 3px dotted;
padding : 20px;
 }
p{
padding-top : 20px;
text-align: center;
}
body {
padding : 2%;
}
.but_close {
	font-size : 15px;
/* 	margin-top : 25px; */
/* 	margin-right: 10px;   */
}
.sizebutton{
width : 80px; 
height : 30px;
}
</style>
<script type="text/javascript">
</script>
</head>
<body>
<div class = "panel">
<img src ="img/boll.jpg" id = "img">
<br><br>

	<h2> 회원 정보 </h2>

	<h5> ${sessionScope.log_name} 님의 정보입니다.</h5> 
	<p> 아이디 : ${sessionScope.log_id} </p>
	<p> 성함 : ${sessionScope.log_name} </p>
	<p> 전화번호 : ${sessionScope.log_phone} </p>
	<div class = "but_close">
		<a href = "p_changeform.jsp"><input type = "button" value = "정보수정" class ="sizebutton" /></a>
		<input type = "button" value = "닫기"  class ="sizebutton" onclick="window.close();"/>
	</div>
	</div>
<!-- </div> -->


</body>
</html>