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
a {
	text-decoration-line: none;
}

#category {
	text-align: center;
	margin-top: 5%;
	margin-left: 2%;
	float: left;
	width: 10%;
	height: 100vh;
}

#cut_line2 {
	border-bottom: 3px solid black;
}

</style>
<script type="text/javascript">
</script>
</head>
<body>

<header>
		<div id="category">
			<h2 id="cut_line2">카테고리</h2>
			<br />
			<p>
				
				<a href="new_Item_desk.jsp" class="fontst">      책상      </a>
				<br>
			<p>
				<a href="new_Item_chair.jsp" class="fontst" > 의자 </a>
				<br>
			<p>
				<a href="new_Item_bed.jsp" class="fontst" > 침대 </a> <br>
			<p>
				<a href="new_Item_closet.jsp" class="fontst" > 옷장 </a> <br>
			<p>
				<a href="new_Item_shelf.jsp" class="fontst" > 선반 </a> <br>
		</div>
	</header>
	
</body>
</html>