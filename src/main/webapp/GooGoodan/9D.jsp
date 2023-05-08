<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>9단 </title>
<style>
</style>
</head>
<body>

 		<%  out.println( "9 단" + "<br>"); %>

<hr/> 		
 
	<% for (int i = 1; i<= 9; i++ ){
			out.println(9 + " X " + i + " = " + i*9 + "<br>");
		}%>
	


</body>
</html>