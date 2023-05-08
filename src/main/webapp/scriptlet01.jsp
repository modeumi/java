<%@page import="javax.swing.JPanel"%>
<%@page import="javax.swing.JButton"%>
<%@page import="javax.swing.JFrame"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Script Tag</title>
</head>
<!-- JFrame f; -->
<!-- JButton b; -->
<!-- JPanel p; -->
<body>
<%-- <% f = new JFrame(); --%>
// 	b = new JButton();
<%-- 	p = new JPanel();%> --%>
<%-- <% f.ad %> --%>
	<%
	int a = 2;
	int b = 3;
	int sum = a + b;
	out.println("2 + 3 = " + sum);
	%>
</body>
</html>