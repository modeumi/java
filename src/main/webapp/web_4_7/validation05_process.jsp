<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
   <%@ include file="dbconn.jsp"%>
   <%
   request.setCharacterEncoding("utf-8");
   String id = request.getParameter("id");
   String pass = request.getParameter("pass");
   String name = request.getParameter("name");
   String phone1 = request.getParameter("phone1");
   String phone2 = request.getParameter("phone2");
   String phone3 = request.getParameter("phone3");
   String phone = phone1 + "-" + phone2 + "-" + phone3;
   String sex = request.getParameter("sex");
   String email = request.getParameter("email");
   PreparedStatement pstmt = null;
   try {
      String sql = "insert into member(id, pass, name, phone, sex, email) values(?,?,?,?,?,?)";
      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, id);
      pstmt.setString(2, pass);
      pstmt.setString(3, name);
      pstmt.setString(4, phone);
      pstmt.setString(5, sex);
      pstmt.setString(6, email);
      pstmt.executeUpdate();
      out.println("Member 테이블 삽입이 성공했습니다");
   } catch (SQLException ex) {
      out.println("Member 테이블 삽입이 실패했습니다.<br>");
      out.println("SQLException: " + ex.getMessage());
   } finally {
      if (pstmt != null)
         pstmt.close();
      if (conn != null)
         conn.close();
   }
   %>

</body>
</html>