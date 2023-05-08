<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>5단 </title>
<style>
</style>
</head>
<body>

 		<%  out.println( "5 단" + "<br>"); %>

<hr/> 		
 
	<% for (int i = 1; i<= 9; i++ ){
			out.println(5 + " X " + i + " = " + i*5 + "<br>");
		}%>
	


</body>
</html>