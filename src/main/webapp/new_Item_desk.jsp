<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mobel</title>

 <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
<script
	src="img/https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
	crossorigin="anonymous"></script>  

<style type="text/css">

 body {
	padding-top : 54px;
	line-height: 1; 
    font-family: OhouseSans,Noto Sans KR,Apple SD Gothic Neo
    ,맑은 고딕,Malgun Gothic,sans-serif;
    -webkit-font-smoothing: antialiased;
    letter-spacing: -.4px;} 

/*  a {
	text-decoration-line: none;} */

/* h2 {
	text-align: left;}  */

#eventbanner {
	padding-top : 30px;
	border-left: 1px solid;
	float: left;
	margin-left: 1%;
	width: 85%;
	height: 15%;}

/* 임시적용 */
/*.allstyle{
    display: block;
    margin: 0;
    padding: 0;} */ 

/* #items {
	border-left: 1px solid;
	float: top;
	float: left;
	width: 85%;
	height: 80%;
	background-color: white;
	margin-left: 1%;}

#items h2:first-letter {
	font-size: 140%;
	font-style: bold;
	color: black;}

.items_field {
	text-align: center;
	padding: 4px;}

.item_slot {
	width: 20%;
	height: 15%;	
	border: 1px solid silver;}

#cut_line {
	border-bottom: 2px dotted black;} */
	
	
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;}

 .layout>* {
    -webkit-box-flex: 0;    
    flex: 0 0 auto;}	

 .production-feed {
    position: relative;} 
    
 .container {
    margin-right: auto;
    margin-left: auto;
    width: calc(100% - 120px);
    max-width: 100%;
    box-sizing: border-box;
    min-height: 1px;}

/* 이미지 배치 및 뒷배경 적용 */

 ul {
    list-style: none;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;} 
    
 a {
 	color: inherit;
    text-decoration: none;} 
    
 div{   
	margin: 0;
    padding: 0;
    display: block;  }
 
 img {
    border: 0;}           

 h1{
 	font-weight: inherit;}
 	
.row {   
	display: flex;
	flex-wrap: wrap;
	box-sizing: border-box;
    margin-right: -10px;
    margin-left: -10px;}
	
.col-style {
	text-align: left;
	padding-right: 10px;
    padding-left: 10px;
    position: relative;
    width: 100%;
    min-height: 1px;
    box-sizing: border-box;
    -webkit-box-flex: 0;
    flex: 0 0 25%;
    max-width: 25%;}
 
/*이미지 사이 간격조정*/   
.item_style{
	padding: 0 0 30px;
	position: relative;
	margin: 2px 0 0; }
	
.item_style2{
	position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    z-index: 2;}
  
.item_image{
	position: relative;
    background-color: #f5f5f5;
    padding-bottom: 100%;
    border-radius: 4px;
    overflow: hidden; }

/* 첫번째 아이템 배치 */
.item_style3{
	width: 100%;
    height: 100%;
    box-sizing: border-box;
	pointer-events: none;} 
	
.item_image>.image{
	position: absolute;
    top: 50%;
    left: 50%;
    width: 100%;
    transform: translate(-50%,-50%);
    transition: transform .2s;}
    
.item_image2{
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    transition: background-color .2s;}


/* 글자 꾸미기 */
.pont_style{
	padding: 0 10px;}

.pont_style2{
	margin: 9px 0 0;}   

/*홈스타일링*/	
.pont_style3{
	display: block;
    color: #757575;
    word-break: break-all;
    font-size: 11px;
    font-weight: 400;
    line-height: 13px;}
    
.pont_style4{
	max-height: 34px;
    margin-top: 5px;
    word-break: break-all;
    font-size: 13px;
    font-weight: 400;
    line-height: 17px;
    color: #000;
    transition: opacity .1s;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    word-wrap: break-word;}    
    
.price_style{
	margin: 2px 0 0;
	display: flex;
    align-items: center;
    flex-wrap: wrap;
    font-size: 17px;
    line-height: 23px;
    font-weight: 700;}
    
.price_style2{
	color: #000;
    margin-right: 4px;}


/* 별점 꾸미기 */

.review_style{
	margin: 3px 0 0;
	font-size: 12px;
    color: #9e9e9e;
    line-height: 16px;
    font-weight: 700;}    
    
.item_review>.icon{
	width: 1.1em;
    height: 1.1em;
    margin-right: 1px;
    color: #35c5f0;
    vertical-align: -2px;}

.item_review>.avg{
    margin-right: 2px;
    color: #424242;
    font-weight: 700;}
                
</style>
<script type="text/javascript">
function pageload(itemid) {
	document.getElementById("itemid").value = itemid;
	document.getElementById("pageload").submit();
}
</script>
</script>

 <%@ include file = "header.jsp" %> 
</head>
<body>
 <%@ include file = "new_Item_mould.jsp" %>
 <form action = "PageLoadServlet" id = "pageload" method = "post" >
<input type = "hidden" name = "itemid"  id = "itemid" value = "" >
</form>
 		<!-- <div class="allstyle"> -->
		<!-- <div id="eventbanner"> -->
			<!-- <img src="img/img/banner.png" width="100%" height="250px" /> -->
		<!-- </div> -->
		<br>
		<br>
	  <div class="production-feed container">	
	   <div>
		<div class="row" >
		 <div class="col-style">		  
		    <article class="item_style">
		     <a class="item_style2" href="#"  onclick = "pageload(1001)"></a>
		     <div class="item-image "> 
		      <div class="item_style3"> </div>
		      <img class="image" src="img/desk/1001.png"> 
		      <div class="item_image2">		      
		      </div>		      				 
		     </div>		     
		     <div class="pont_style">
		      <h1 class="pont_style2">
		       <span class="pont_style3">홈스타일링
		       </span>
		       <span class="pont_style4">발렌 미드센츄리 모던책상 테이블 2size
		       </span>		      
		      </h1>
		      <span class="price_style">		      
		      <span class="price_style2">99,800원</span>
		      </span>
		     </div>
		    </article>		   
		   </div>
		   		   
		   <div class="col-style">  <!-- style --> 
		    <article class="item_style">
		     <a class="item_style2" href="#" onclick = "pageload(1002)"></a>
		     <div class="item-image">
		      <div class="item_style3"> </div>
		      <img class="image" src="img/desk/1002.png">
		      <div class="item_image2">		      
		      </div>		     
		     </div>		     
		     <div class="pont_style">
		      <h1 class="pont_style2">
		       <span class="pont_style3">홈스타일링
		       </span>
		       <span class="pont_style4">로스테이션 타워 선반책상 컴퓨터책상
		       </span>
		      </h1>
		      <span class="price_style">		      
		      <span class="price_style2">310,000원</span>
		      </span>
		     </div>
		    </article>
		   </div>
		   
		   <div class="col-style">  <!-- style --> 
		    <article class="item_style">
		     <a class="item_style2" href="#" onclick = "pageload(1003)"></a>
		     <div class="item-image">
		      <div class="item_style3"> </div>
		      <img class="image" src="img/desk/1003.png">
		      <div class="item_image2">		      
		      </div>		     
		     </div>
		     <div class="pont_style">
		      <h1 class="pont_style2">
		       <span class="pont_style3">홈스타일링
		       </span>
		       <span class="pont_style4">메이저 컴퓨터 데스크 1460
		       </span>
		      </h1>
		      <span class="price_style">
		      
		      <span class="price_style2">70,900원</span>
		      </span>
		     </div>
		    </article>
		   </div>
		   
		   <div class="col-style">  <!-- style --> 
		    <article class="item_style">
		     <a class="item_style2" href="#"onclick = "pageload(1004)"></a>
		     <div class="item-image">
		      <div class="item_style3"> </div>
		      <img class="image" src="img/desk/1004.png">
		      <div class="item_image2">		      
		      </div>		     
		     </div>
		     <div class="pont_style">
		      <h1 class="pont_style2">
		       <span class="pont_style3">홈스타일링
		       </span>
		       <span class="pont_style4">코넬 이지 데스크 책상 1200 5colors
		       </span>
		      </h1>
		      <span class="price_style">		      
		      <span class="price_style2">165,000원</span>
		      </span>
		     </div>
		    </article>
		   </div>
		   
		   <div class="col-style">  <!-- style --> 
		    <article class="item_style">
		     <a class="item_style2" href="#"></a>
		     <div class="item-image">
		      <div class="item_style3"> </div>
		      <img class="image" src="img/desk/1005.png">
		      <div class="item_image2">		      
		      </div>		     
		     </div>
		     <div class="pont_style">
		      <h1 class="pont_style2">
		       <span class="pont_style3">홈스타일링
		       </span>
		       <span class="pont_style4">호보 라운드 1200 컴퓨터 스틸 책상 2color
		       </span>
		      </h1>
		      <span class="price_style">		      
		      <span class="price_style2">75,500원</span>
		      </span>
		     </div>
		    </article>
		   </div>
		   
		   <div class="col-style">  <!-- style --> 
		    <article class="item_style">
		     <a class="item_style2" href="#"></a>
		     <div class="item-image">
		      <div class="item_style3"> </div>
		      <img class="image" src="img/desk/1006.png">
		      <div class="item_image2">		      
		      </div>		     
		     </div>
		     <div class="pont_style">
		      <h1 class="pont_style2">
		       <span class="pont_style3">홈스타일링
		       </span>
		       <span class="pont_style4">프래그마 1인용 컴퓨터 책상
		       </span>
		      </h1>
		      <span class="price_style">		      
		      <span class="price_style2">85,000원</span>
		      </span>
		     </div>
		    </article>
		   </div>
		   
		   <div class="col-style">  <!-- style --> 
		    <article class="item_style">
		     <a class="item_style2" href="#"></a>
		     <div class="item-image">
		      <div class="item_style3"> </div>
		      <img class="image" src="img/desk/1007.png">
		      <div class="item_image2">		      
		      </div>		     
		     </div>
		     <div class="pont_style">
		      <h1 class="pont_style2">
		       <span class="pont_style3">홈스타일링
		       </span>
		       <span class="pont_style4">콰트로 데스크 시리즈 19size
		       </span>
		      </h1>
		      <span class="price_style">		      
		      <span class="price_style2">82,000원</span>
		      </span>
		     </div>
		    </article>
		   </div>
		   
		   <div class="col-style">  <!-- style --> 
		    <article class="item_style">
		     <a class="item_style2" href="#"></a>
		     <div class="item-image">
		      <div class="item_style3"> </div>
		      <img class="image" src="img/desk/1008.png">
		      <div class="item_image2">		      
		      </div>		     
		     </div>
		     <div class="pont_style">
		      <h1 class="pont_style2">
		       <span class="pont_style3">홈스타일링
		       </span>
		       <span class="pont_style4">로넌 1200 전면책상 플랩도어형(2색)
		       </span>
		      </h1>
		      <span class="price_style">		      
		      <span class="price_style2">254,000원</span>
		      </span>
		     </div>
		    </article>
		   </div>
		   
		   <div class="col-style">  <!-- style --> 
		    <article class="item_style">
		     <a class="item_style2" href="#"></a>
		     <div class="item-image">
		      <div class="item_style3"> </div>
		      <img class="image" src="img/desk/1009.png">
		      <div class="item_image2">		      
		      </div>		     
		     </div>
		     <div class="pont_style">
		      <h1 class="pont_style2">
		       <span class="pont_style3">홈스타일링
		       </span>
		       <span class="pont_style4">NEW 올화이트 출시 KUBO 철제 책상
		       </span>
		      </h1>
		      <span class="price_style">		      
		      <span class="price_style2">44,500원</span>
		      </span>
		     </div>
		    </article>
		   </div>
		   
		   <div class="col-style">  <!-- style --> 
		    <article class="item_style">
		     <a class="item_style2" href="#"></a>
		     <div class="item-image">
		      <div class="item_style3"> </div>
		      <img class="image" src="img/desk/1010.png">
		      <div class="item_image2">		      
		      </div>		     
		     </div>
		     <div class="pont_style">
		      <h1 class="pont_style2">
		       <span class="pont_style3">홈스타일링
		       </span>
		       <span class="pont_style4">OLLSON 책상 4colors
		       </span>
		      </h1>
		      <span class="price_style">		      
		      <span class="price_style2">55,000원</span>
		      </span>
		     </div>
		    </article>
		   </div>
		   
		   <div class="col-style">  <!-- style --> 
		    <article class="item_style">
		     <a class="item_style2" href="#"></a>
		     <div class="item-image">
		      <div class="item_style3"> </div>
		      <img class="image" src="img/desk/1011.png">
		      <div class="item_image2">		      
		      </div>		     
		     </div>
		     <div class="pont_style">
		      <h1 class="pont_style2">
		       <span class="pont_style3">홈스타일링
		       </span>
		       <span class="pont_style4">E0자재 라운드 스퀘어 책상
		       </span>
		      </h1>
		      <span class="price_style">		      
		      <span class="price_style2">64,000원</span>
		      </span>
		     </div>
		    </article>
		   </div>
		   
		   
		    <div class="col-style">  <!-- style --> 
		    <article class="item_style">
		     <a class="item_style2" href="#"></a>
		     <div class="item-image">
		      <div class="item_style3"> </div>
		      <img class="image" src="img/desk/1012.png">
		      <div class="item_image2">		      
		      </div>		     
		     </div>
		     <div class="pont_style">
		      <h1 class="pont_style2">
		       <span class="pont_style3">홈스타일링
		       </span>
		       <span class="pont_style4">라미스 와이드데스크 ㄱ자 학생 책상 1400
		       </span>
		      </h1>
		      <span class="price_style">		      
		      <span class="price_style2">98,000원</span>
		      </span>
		     </div>
		    </article>
		   </div>
		   
		   
		    <div class="col-style">  <!-- style --> 
		    <article class="item_style">
		     <a class="item_style2" href="#"></a>
		     <div class="item-image">
		      <div class="item_style3"> </div>
		      <img class="image" src="img/desk/1013.png">
		      <div class="item_image2">		      
		      </div>		     
		     </div>
		     <div class="pont_style">
		      <h1 class="pont_style2">
		       <span class="pont_style3">홈스타일링
		       </span>
		       <span class="pont_style4">제로데스크 에보 테이블 컴퓨터 책상
		       </span>
		      </h1>
		      <span class="price_style">		      
		      <span class="price_style2">145,000원</span>
		      </span>
		     </div>
		    </article>
		   </div>
		   
		   
		    <div class="col-style">  <!-- style --> 
		    <article class="item_style">
		     <a class="item_style2" href="#"></a>
		     <div class="item-image">
		      <div class="item_style3"> </div>
		      <img class="image" src="img/desk/1014.png">
		      <div class="item_image2">		      
		      </div>		     
		     </div>
		     <div class="pont_style">
		      <h1 class="pont_style2">
		       <span class="pont_style3">홈스타일링
		       </span>
		       <span class="pont_style4">벨로씨 For casamiashop 오브 원목책상
		       </span>
		      </h1>
		      <span class="price_style">		      
		      <span class="price_style2">259,000원</span>
		      </span>
		     </div>
		    </article>
		   </div>
		   
		   
		    <div class="col-style">  <!-- style --> 
		    <article class="item_style">
		     <a class="item_style2" href="#"></a>
		     <div class="item-image">
		      <div class="item_style3"> </div>
		      <img class="image" src="img/desk/1015.png">
		      <div class="item_image2">		      
		      </div>		     
		     </div>
		     <div class="pont_style">
		      <h1 class="pont_style2">
		       <span class="pont_style3">홈스타일링
		       </span>
		       <span class="pont_style4">콰트로 에어 반타원 데스크 화이트 책상 테이블
		       </span>
		      </h1>
		      <span class="price_style">		      
		      <span class="price_style2">149,000원</span>
		      </span>
		     </div>
		    </article>
		   </div>
		   
		   
		    <div class="col-style">  <!-- style --> 
		    <article class="item_style">
		     <a class="item_style2" href="#"></a>
		     <div class="item-image">
		      <div class="item_style3"> </div>
		      <img class="image" src="img/desk/1016.png">
		      <div class="item_image2">		      
		      </div>		     
		     </div>
		     <div class="pont_style">
		      <h1 class="pont_style2">
		       <span class="pont_style3">홈스타일링
		       </span>
		       <span class="pont_style4">비버 컴퓨터책상 원목책상 1인용
		       </span>
		      </h1>
		      <span class="price_style">		      
		      <span class="price_style2">125,000원</span>
		      </span>
		     </div>
		    </article>
		   </div>
		   		   		   		  		 		 
		 </div>		
		</div>
	   </div>
	   
  <%@ include file = "footer.jsp" %>
</body>
</html>