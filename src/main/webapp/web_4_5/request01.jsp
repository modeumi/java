<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta charset="EUC-KR">
<title>Implicit Objects</title>
</head>
<body>
	<form action="request01_process.jsp" method="post">
		<p> �� �� �� : <input type="text" name="id">
		<p> ��й�ȣ : <input type="text" name="pw">
		<p> <input type="submit" value="����" />	
	</form>
	<%-- input�� scanner ������ 
	 	type ���� text�� �ؽ�Ʈ�ڽ�, checkbox�� üũ�ڽ�, submit�� ��ư ���� ����--%>
	 	
	<%-- 9~12�� ���� �ؼ��ϸ� 10~11�� ������ request01_process.jsp �� ��� �����Ѵ�.
	 	10�� 11 �� ���̵�,��й�ȣ : ��� �ý�Ʈ�� �ְ� �׾ȿ� text�� �����ϴ� 
	 	������ ���� �ش� ������ �Էµ� ���� ���� request01_process.jsp��
	 	id,pw�� ���Ŀ� ��´�. 
	 	12�� action ���� ���Ǵ� type="submit"�� ���� ��ư�������� ���Ǹ� �� ��ư����
	 	���� �̶�� ������ �ִ´�. 
	 	   --%>
	

</body>
</html>