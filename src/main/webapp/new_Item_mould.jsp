<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

body, html {

    font-family: OhouseSans, "Noto Sans KR", "Apple SD Gothic Neo", 
    "맑은 고딕", "Malgun Gothic", sans-serif;
    -webkit-font-smoothing: antialiased;
    /* letter-spacing: -0.4px; */ } 

a {
	text-decoration-line: none;}

#category {
border : 2px solid lightgreen;
border-radius : 10px;
padding : 30px;
	text-align: center;
	margin-top: 2%;
	margin-left: 2%;
	float: left;
	width: 15%;
	height: 100vh;}

#cut_line2 {
	border-bottom: 3px solid black;}
	 
.asty {
	margin: 4px;
	border-radius: 19px;
	padding-left: 45px;
    padding-right: 45px;
    color: rgb(47, 52, 56);
	border: 1px solid rgb(89 249 185);
	box-sizing: border-box;
	line-height: 0;} 
</style>
<script type="text/javascript">
</script>
</head>
<body>

<header>
		<div id="category">
			<h2 >카테고리</h2>
			<p>
			<div id="cut_line2"></div>
			<br />
			<p>
				
				<a href="new_Item_desk.jsp" class="asty">       책상       </a>
				<br>
			<p>
				<a href="new_Item_chair.jsp" class="asty" > 의자 </a>
				<br>
			<p>
				<a href="new_Item_bed.jsp" class="asty" > 침대 </a> <br>
			<p>
				<a href="new_Item_closet.jsp" class="asty" > 옷장 </a> <br>
			<p>
				<a href="new_Item_shelf.jsp" class="asty" > 선반 </a> <br>
		</div>
	</header>
	
</body>
</html>