<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>회원탈퇴</title>
<style type="text/css">
body {
	position: absolute;
	top: 90%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 1000px;
	padding: 5px;
}

.checkbox {
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	width: 20px;
	height: 20px;
	border-radius: 50%;
	border: 2px solid #ccc;
	outline: none;
	transition: all 0.3s ease-in-out;
}

.textbox {
	position: relative;
	overflow: auto;
	height: 88px;
	margin-top: 8px;
	padding: 12px;
	border: 1px solid #dadada;
	background: #fff;
	box-sizing: border-box;
}

.withdrawel {
	border: 5px solid #123456;
	margin: 5px;
	padding: 20px;
}

.content {
	margin: 5px;
	padding: 20px;
}

.center {
	transform: translate(90%, -100%);
}

.number {
	color: green;
}

button {
	transform: translate(150%, 40%);
	align-items: center;
	width: 200px;
	height: 50px;
	font-size: 20px;
}
</style>
<script type="text/javascript">
	const agreement = document.getElementById('agreement');
	const button = document.querySelector('button[type="submit"]');

	agreement.addEventListener('change', function() {
		button.disabled = !this.checked;
	});
</script>
</head>
<body>
	<h2>회원 탈퇴 신청</h2>
	<hr>
	<br>
	<h3>회원 탈퇴 신청에 앞서 아래 내용을 반드시 확인해주세요.</h3>
	<div class="withdrawel">
		<h3>■ 회원탈퇴 시 처리내용</h3>
		<ul>
			<li>집möbel 포인트,쿠폰은 소멸되며 환불되지 않습니다.
			<li>집möbel 구매 정보가 삭제됩니다.
			<li>소비자보호에 관한 법률 제6조에 의거,계약또는 청약철회 등에 관한 기록은 5년, 대금결제 및 재화등의 공급에
				관한 기록은 5년,소비자의 불만 또는 분쟁처리에 관한 기록은 3년동안 보관됩니다. 동 개인정보는 법률에 의한 보유 목적
				외에 다른 목적으로는 이용되지 않습니다.
		</ul>
		<h3>■ 회원탈퇴 시 게시물 관리</h3>
		<div class="content">회원탈퇴 휘 집 möbel 서비스에 입력한 게시물 및 댓글은 삭제되지 않으며,
			회원정보 삭제로 인해 작성자 본인을 확인할 수 없으므로 게시물 편집 및 삭제 처기가 원천적으로 불가능 합니다.게시물 삭제를
			원하는 경우에는 먼저 해당 게시물을 삭제하신 후, 탈퇴를 신청하시기 바랍니다.</div>
		<h3>■ 회원가입 후 재가입 규정</h3>
		<div class="content">탈퇴 회원이 재가입하더라도 기존의 집 möbel 포인트는 이미 소멸되었기
			때문에 양도되지 않습니다.</div>
	</div>
	<br>
	<h3 class="must">
		<input type="checkbox" id="agreement" required> 
		<label for="agreement">[필수] 위 내용을 모두 확인하였습니다.</label>
	</h3>
	<div class="center">
		<h3>
			고객센터
			<div class="number">1670-0000</div>
			<h3>
	</div>
	<h3>[필수] 집möbel 회원에서 탈퇴하려는 이유가 무엇인가요?(복수선택가능)</h3>
	<div class="withdrawel">
		<p>
			<input type="checkbox"> 이용빈도 낮음
		<p>
			<input type="checkbox"> 재가입
		<p>
			<input type="checkbox"> 콘텐츠/제품정보/상품 부족
		<p>
			<input type="checkbox"> 개인정보보호
		<p>
			<input type="checkbox"> 회원특혜/ 쇼핑혜택부족
		<p>
			<input type="checkbox"> 기타
	</div>
	<br>
	<h3>집 möbel 서비스 이용 중 어떤부분이 불편하셨나요?</h3>
	집 möbel에 떠나는 이유를 자세히 알려주시겠어요?여러분의 소중한 의견을 반영해 더 좋은 서비스로 꼭 찾아 뵙겠습니다.

	<input type="text"
		placeholder="선택하신 항목에 대한 자세한 이유를 남겨주시면 서비스 개선에 큰 도움이 됩니다."
		style="width: 1000px; height: 500px" maxlength="2000">
	
		<button type="button"><a href="delete.jsp">탈퇴신청</a></button>
		<button type="button">취소하기</button>

</body>
</html>

