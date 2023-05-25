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
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
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


</head>
<body>
 <%@ include file = "header.jsp" %> 
 <%@ include file = "Item_mould.jsp" %>
 		<!-- <div class="allstyle"> -->
		<!-- <div id="eventbanner"> -->
			<!-- <img src="img/banner.png" width="100%" height="250px" /> -->
		<!-- </div> -->
		<br>
		<br>
	  <div class="production-feed container">	
	   <div>
		<div class="row" >
		 <div class="col-style">		  
		    <article class="item_style">
		     <a class="item_style2" href="#"></a>
		     <div class="item-image "> 
		      <div class="item_style3"> </div>
		      <img class="image" src="의자/완성된의자1.png"> 
		      <div class="item_image2">		      
		      </div>		      				 
		     </div>		     
		     <div class="pont_style">
		      <h1 class="pont_style2">
		       <span class="pont_style3">홈스타일링
		       </span>
		       <span class="pont_style4">편한 팔걸이 컴퓨터 메쉬 사무용 의자
		       </span>		      
		      </h1>
		      <span class="price_style">		      
		      <span class="price_style2">47,900원</span>
		      </span>
		     </div>
		    </article>		   
		   </div>
		   		   
		   <div class="col-style">  <!-- style --> 
		    <article class="item_style">
		     <a class="item_style2" href="#"></a>
		     <div class="item-image">
		      <div class="item_style3"> </div>
		      <img class="image" src="의자/완성된의자2.png">
		      <div class="item_image2">		      
		      </div>		     
		     </div>		     
		     <div class="pont_style">
		      <h1 class="pont_style2">
		       <span class="pont_style3">홈스타일링
		       </span>
		       <span class="pont_style4">BASIC 사무용 책상 학생 컴퓨터의자
		       </span>
		      </h1>
		      <span class="price_style">		      
		      <span class="price_style2">29,900원</span>
		      </span>
		     </div>
		    </article>
		   </div>
		   
		   <div class="col-style">  <!-- style --> 
		    <article class="item_style">
		     <a class="item_style2" href="#"></a>
		     <div class="item-image">
		      <div class="item_style3"> </div>
		      <img class="image" src="의자/완성된의자3.png">
		      <div class="item_image2">		      
		      </div>		     
		     </div>
		     <div class="pont_style">
		      <h1 class="pont_style2">
		       <span class="pont_style3">홈스타일링
		       </span>
		       <span class="pont_style4">뮤즈 편한 팔걸이 헤드형 컴퓨터 메쉬의자
		       </span>
		      </h1>
		      <span class="price_style">
		      
		      <span class="price_style2">54,900원</span>
		      </span>
		     </div>
		    </article>
		   </div>
		   
		   <div class="col-style">  <!-- style --> 
		    <article class="item_style">
		     <a class="item_style2" href="#"></a>
		     <div class="item-image">
		      <div class="item_style3"> </div>
		      <img class="image" src="의자/완성된의자4.png">
		      <div class="item_image2">		      
		      </div>		     
		     </div>
		     <div class="pont_style">
		      <h1 class="pont_style2">
		       <span class="pont_style3">홈스타일링
		       </span>
		       <span class="pont_style4">네이처 허리받침 라텍스 세트
		       </span>
		      </h1>
		      <span class="price_style">		      
		      <span class="price_style2">57,600원</span>
		      </span>
		     </div>
		    </article>
		   </div>
		   
		   <div class="col-style">  <!-- style --> 
		    <article class="item_style">
		     <a class="item_style2" href="#"></a>
		     <div class="item-image">
		      <div class="item_style3"> </div>
		      <img class="image" src="의자/완성된의자5.png">
		      <div class="item_image2">		      
		      </div>		     
		     </div>
		     <div class="pont_style">
		      <h1 class="pont_style2">
		       <span class="pont_style3">홈스타일링
		       </span>
		       <span class="pont_style4">마카롱 라탄 고무고무 원목 카페 디자인체어
		       </span>
		      </h1>
		      <span class="price_style">		      
		      <span class="price_style2">57,900원</span>
		      </span>
		     </div>
		    </article>
		   </div>
		   
		   <div class="col-style">  <!-- style --> 
		    <article class="item_style">
		     <a class="item_style2" href="#"></a>
		     <div class="item-image">
		      <div class="item_style3"> </div>
		      <img class="image" src="의자/완성된의자6.png">
		      <div class="item_image2">		      
		      </div>		     
		     </div>
		     <div class="pont_style">
		      <h1 class="pont_style2">
		       <span class="pont_style3">홈스타일링
		       </span>
		       <span class="pont_style4">인테리어 가죽 쿠션 에펠체어 식탁 카페 의자
		       </span>
		      </h1>
		      <span class="price_style">		      
		      <span class="price_style2">19,500원</span>
		      </span>
		     </div>
		    </article>
		   </div>
		   
		   <div class="col-style">  <!-- style --> 
		    <article class="item_style">
		     <a class="item_style2" href="#"></a>
		     <div class="item-image">
		      <div class="item_style3"> </div>
		      <img class="image" src="의자/완성된의자7.png">
		      <div class="item_image2">		      
		      </div>		     
		     </div>
		     <div class="pont_style">
		      <h1 class="pont_style2">
		       <span class="pont_style3">홈스타일링
		       </span>
		       <span class="pont_style4">더블린 크롬 체어 코듀로이 패브릭 식탁의자
		       </span>
		      </h1>
		      <span class="price_style">		      
		      <span class="price_style2">113,000원</span>
		      </span>
		     </div>
		    </article>
		   </div>
		   
		   <div class="col-style">  <!-- style --> 
		    <article class="item_style">
		     <a class="item_style2" href="#"></a>
		     <div class="item-image">
		      <div class="item_style3"> </div>
		      <img class="image" src="의자/완성된의자8.png">
		      <div class="item_image2">		      
		      </div>		     
		     </div>
		     <div class="pont_style">
		      <h1 class="pont_style2">
		       <span class="pont_style3">홈스타일링
		       </span>
		       <span class="pont_style4">미드센츄리 인테리어 카페 식탁의자
		       </span>
		      </h1>
		      <span class="price_style">		      
		      <span class="price_style2">56,900원</span>
		      </span>
		     </div>
		    </article>
		   </div>
		   
		   <div class="col-style">  <!-- style --> 
		    <article class="item_style">
		     <a class="item_style2" href="#"></a>
		     <div class="item-image">
		      <div class="item_style3"> </div>
		      <img class="image" src="의자/완성된의자9.png">
		      <div class="item_image2">		      
		      </div>		     
		     </div>
		     <div class="pont_style">
		      <h1 class="pont_style2">
		       <span class="pont_style3">홈스타일링
		       </span>
		       <span class="pont_style4">LB48G 학생 컴퓨터 게이밍의자
		       </span>
		      </h1>
		      <span class="price_style">		      
		      <span class="price_style2">105,000원</span>
		      </span>
		     </div>
		    </article>
		   </div>
		   
		   <div class="col-style">  <!-- style --> 
		    <article class="item_style">
		     <a class="item_style2" href="#"></a>
		     <div class="item-image">
		      <div class="item_style3"> </div>
		      <img class="image" src="의자/완성된의자10.png">
		      <div class="item_image2">		      
		      </div>		     
		     </div>
		     <div class="pont_style">
		      <h1 class="pont_style2">
		       <span class="pont_style3">홈스타일링
		       </span>
		       <span class="pont_style4">헬로키티 LB51KT 게이밍 의자
		       </span>
		      </h1>
		      <span class="price_style">		      
		      <span class="price_style2">139,000원</span>
		      </span>
		     </div>
		    </article>
		   </div>
		   
		   <div class="col-style">  <!-- style --> 
		    <article class="item_style">
		     <a class="item_style2" href="#"></a>
		     <div class="item-image">
		      <div class="item_style3"> </div>
		      <img class="image" src="의자/완성된의자11.png">
		      <div class="item_image2">		      
		      </div>		     
		     </div>
		     <div class="pont_style">
		      <h1 class="pont_style2">
		       <span class="pont_style3">홈스타일링
		       </span>
		       <span class="pont_style4">LB53 시리즈 가죽 게이밍 의자
		       </span>
		      </h1>
		      <span class="price_style">		      
		      <span class="price_style2">135,000원</span>
		      </span>
		     </div>
		    </article>
		   </div>
		   
		   
		    <div class="col-style">  <!-- style --> 
		    <article class="item_style">
		     <a class="item_style2" href="#"></a>
		     <div class="item-image">
		      <div class="item_style3"> </div>
		      <img class="image" src="의자/완성된의자12.png">
		      <div class="item_image2">		      
		      </div>		     
		     </div>
		     <div class="pont_style">
		      <h1 class="pont_style2">
		       <span class="pont_style3">홈스타일링
		       </span>
		       <span class="pont_style4">LB51 시리즈 게이밍 의자 3colors 
		       </span>
		      </h1>
		      <span class="price_style">		      
		      <span class="price_style2">115,000원</span>
		      </span>
		     </div>
		    </article>
		   </div>
		   
		   
		    <div class="col-style">  <!-- style --> 
		    <article class="item_style">
		     <a class="item_style2" href="#"></a>
		     <div class="item-image">
		      <div class="item_style3"> </div>
		      <img class="image" src="의자/완성된의자13.png">
		      <div class="item_image2">		      
		      </div>		     
		     </div>
		     <div class="pont_style">
		      <h1 class="pont_style2">
		       <span class="pont_style3">야외나들이
		       </span>
		       <span class="pont_style4">감성 캠핑의자 우드 뉴 릴렉스 체어 대형
		       </span>
		      </h1>
		      <span class="price_style">		      
		      <span class="price_style2">37,500원</span>
		      </span>
		     </div>
		    </article>
		   </div>
		   
		   
		    <div class="col-style">  <!-- style --> 
		    <article class="item_style">
		     <a class="item_style2" href="#"></a>
		     <div class="item-image">
		      <div class="item_style3"> </div>
		      <img class="image" src="의자/완성된의자14.png">
		      <div class="item_image2">		      
		      </div>		     
		     </div>
		     <div class="pont_style">
		      <h1 class="pont_style2">
		       <span class="pont_style3">야외나들이
		       </span>
		       <span class="pont_style4">감성 접이식의자 경량체어 2개 세트
		       </span>
		      </h1>
		      <span class="price_style">		      
		      <span class="price_style2">50,900원</span>
		      </span>
		     </div>
		    </article>
		   </div>
		   
		   
		    <div class="col-style">  <!-- style --> 
		    <article class="item_style">
		     <a class="item_style2" href="#"></a>
		     <div class="item-image">
		      <div class="item_style3"> </div>
		      <img class="image" src="의자/완성된의자15.png">
		      <div class="item_image2">		      
		      </div>		     
		     </div>
		     <div class="pont_style">
		      <h1 class="pont_style2">
		       <span class="pont_style3">야외나들이
		       </span>
		       <span class="pont_style4">카프리체어 야외 테라스 캠핑 의자
		       </span>
		      </h1>
		      <span class="price_style">		      
		      <span class="price_style2">33,000원</span>
		      </span>
		     </div>
		    </article>
		   </div>
		   
		   
		    <div class="col-style">  <!-- style --> 
		    <article class="item_style">
		     <a class="item_style2" href="#"></a>
		     <div class="item-image">
		      <div class="item_style3"> </div>
		      <img class="image" src="의자/완성된의자16.png">
		      <div class="item_image2">		      
		      </div>		     
		     </div>
		     <div class="pont_style">
		      <h1 class="pont_style2">
		       <span class="pont_style3">야외나들이
		       </span>
		       <span class="pont_style4">노바 릴렉스 체어
		       </span>
		      </h1>
		      <span class="price_style">		      
		      <span class="price_style2">63,500원</span>
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