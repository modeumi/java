<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">


function OpenImgUpload() {
	
	
	
}
</script>
</head>
<body>
<form name = "reviewform" action = "AddReviewServlet" method = "post">
<input type = "hidden" name = "buydate" id = "buydate"  readonly="readonly">
<input type = "hidden" name = "itemId" id = "itemId" >
<input type = "hidden" name = "nowtime" id = "nowtime">
<input type = "text" name = "itemname" id = "itemname" readonly="readonly">
<input type="text" name = "username" id = "usetname" readonly="readonly">
<button onclick = "OpenImgUpload()"> </button>
</form>

</body>
</html>