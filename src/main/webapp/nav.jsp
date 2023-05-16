<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Insert title here</title>
  <style type="text/css">
    ul {
      list-style: none;
    }
    
    nav ul {
      display: flex;
      justify-content: center;
      align-items: center;
    }

    nav li {
     justify-content: center;
      align-items: center;
      margin: 0 10px;
    }
    .profileB{
    border :  none;
    border-radius: 20px;
    width: 100px;
    height: 50px;
    background-color: #98FB98; 
    }
    
  </style>
  <script>
    function showSubMenu() {
      var subMenu1 = document.getElementById("sub-menu1");
      var subMenu2 = document.getElementById("sub-menu2");
      if (subMenu1.style.display === "none") {
        subMenu1.style.display = "";
        subMenu2.style.display = "none";
      } else {
        subMenu1.style.display = "flex";
      }
    }
  
    function showSubMenu2() {
      var subMenu1 = document.getElementById("sub-menu1");
      var subMenu2 = document.getElementById("sub-menu2");
      if (subMenu2.style.display === "none") {
        subMenu2.style.display = "";
        subMenu1.style.display = "none";
      } else {
        subMenu2.style.display = "flex";
      }
    }
    
  </script>
</head>

<body>
  <nav style="display: flex; justify-content: center; align-items: center;">
    <ul>
      <h5><li><button id="myButton" class ="profileB" onclick="showSubMenu()">프로필</a></li></h5>
      <h5><li><button id="myButton" class ="profileB" onclick="showSubMenu2()">설정</a></li></h5>
    </ul>
    </nav>
     
<nav style="display: flex; justify-content: center; align-items: center;">
<hr>
    <div class="submenu1">
    <ul id="sub-menu1" style="display: flex;">
      <li><a href="#"><h4>좋아요</h4></a></li>
      <li><a href="#"><h4>스크립트</h4></a></li>
      <li><a href="#"><h4>쿠폰</h4></a></li>
    </ul>
   </div>
   <div class ="submenu2">
    <ul id="sub-menu2" style="display: none;">
      <li><a href="Privacy.jsp"><h4>회원정보 수정</h4></a></li>
      <li><a href="Privacy.jsp"><h4>비밀번호 변경</h4></a></li>
    </ul>
    </div>
  </nav>
</body>
</html>