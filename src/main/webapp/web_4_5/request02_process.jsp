<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("utf-8");
		String[] hobby = request.getParameterValues("hobby");	
		out.println(hobby[0]);
	%>
	<%-- 02.process에서 만든 체크박스에 선택한 값을 여기로 대입.
	process에서 독서 운동 영화 세개 체크후에 10번줄에서 출력 인데 
	hobby[0]을 주었으니 선택한값중 맨 위의 값 즉, 독서의 value가 적용된다.
	추가로 0을 1이나 2로 고치면 선택한 값의 두번쨰, 세번째 값의 value가 출력된다. --%>
</body>
</html>