<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%! 
	int sum;
	Calendar cal;
	%>
	<% 
	cal = Calendar.getInstance();
	String[] yoil = {"일", "월", "화","수", "목", "금", "토"};
	%>
	<table border = "0">
	<tr>
	<% 
	for (int i = 2; i<10; i++){
	%>
	<% out.print("<td>"+i+ "단"+"</td>"); %>
	
	<% 
	}
	%>	
	</tr>
	<%
	for (int i = 1; i<10; i++){
	%>
		<tr>
		<% for (int j = 2; j<10; j++){
			sum = i * j;
			%>
					<%="<td>" + j + " * " + i + " = " + sum + "</td>" %>
			<%
			}
			%>
		<% 
		}
		%>
		</tr>
		<% 
			int year = cal.get(Calendar.YEAR);
			int month = cal.get(Calendar.MONTH) +1;
			int date = cal.get(Calendar.DATE);
			int hour = cal.get(Calendar.HOUR);
			int minute = cal.get(Calendar.MINUTE);
			int second = cal.get(Calendar.SECOND);
			int day = cal.get(Calendar.DAY_OF_WEEK);
			%>
			<%= year + "년" + month + "월" + date + "일" + hour + "시" + minute + "분"
			+ second + "초 입니다. (오늘은 " + yoil[day-1] + "요일 입니다)" %>
	</table>
</body>
</html>