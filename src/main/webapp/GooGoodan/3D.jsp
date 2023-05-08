<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>3단 </title>
<style>
</style>
</head>
<body>

 		<%  out.println( "3 단" + "<br>"); %>

<hr/> 		
 
	<% for (int i = 1; i<= 9; i++ ){
			out.println(3 + " X " + i + " = " + i*3 + "<br>");
		}%>
	


</body>
</html>