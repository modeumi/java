<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
<style type="text/css">
 .delete {
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      width : 600px ; padding : 5px ;
      border:5px solid #123456;
      display :flex;
      flex-direction : row ;
    }

</style>
<script type="text/javascript">

</script>
</head>
<body>
	<p> 회원정보 탈퇴
    <hr>	
	<div class ="delete">
	    <h2>회원정보 탈퇴</h2>
	    <hr>
		<form method="post" action="MemberDelete">
		<p>
			아이디 : <input type="text" name="id" placeholder="아이디 입력해주세요">
		<p>
		    비밀번호 : <input type="password" name="pw" id="pwe" placeholder="비밀번호 입력해주세요">
		<p>
			이름 : <input type="text" name="name" placeholder="이름 입력해주세요">
		<p>
			<input type="submit" value="탈퇴하기">
	</form>
	</div>
</body>
</html>
