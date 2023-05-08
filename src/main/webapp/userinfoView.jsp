<%@page import="ch18.com.model.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
   <h1>사용자 정보</h1>
   <% UserInfo userinfo = (UserInfo)request.getAttribute("userinfo"); %>
   <h1>ID : <%=userinfo.getId() %></h1>
   <h1>PassWord : <%=userinfo.getPw() %></h1>
   <h1>Name : <%=userinfo.getName() %></h1>

</body>
</html>