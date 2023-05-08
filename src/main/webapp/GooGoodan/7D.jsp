<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>7단 </title>
<style>
</style>
</head>
<body>

 		<%  out.println( "7 단" + "<br>"); %>

<hr/> 		
 
	<% for (int i = 1; i<= 9; i++ ){
			out.println(7 + " X " + i + " = " + i*7 + "<br>");
		}%>
	


</body>
</html>