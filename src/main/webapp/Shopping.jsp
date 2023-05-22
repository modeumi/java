<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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


<style type="text/css">

/* table {
	border-collapse: collapse; 테두리 겹침 방지 
	width: 50%;  테이블 전체 너비 }

th, td {
	border: 1px solid black;  테두리 스타일 및 두께 
	padding: 8px;  셀 내용과 테두리 간격 
	text-align: left;  텍스트 정렬 } */

/* button{
	font-size: inherit;} */	

 body, html {
    line-height: 1;
    font-family: OhouseSans, "Noto Sans KR", "Apple SD Gothic Neo", 
    "맑은 고딕", "Malgun Gothic", sans-serif;
    -webkit-font-smoothing: antialiased;
    letter-spacing: -0.4px;}

 ul{
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
    list-style: none; } /* <--추가 이거 필요함 */

 p {
	display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;} */ 

 li {
    display: list-item;
    text-align: -webkit-match-parent;}    

 a { 
    color: inherit;
    text-decoration: none;}
    
 [class^="_"], [class*=" _"] {
    -webkit-font-smoothing: antialiased;}          

 blockquote, body, code, dd, div, dl, dt, fieldset, form, h1, h2, h3, 
 h4, h5, h6, input, legend, li, ol, p, pre, td, textarea, th, ul {
    margin: 0;
    padding: 0;} 

 footer {
	box-sizing: border-box;
    position: relative;
    display: block;}     	   


/* 기본 뒷배경 적용 */
.main11 {
    -webkit-box-flex: 1;
    flex: 1 0 auto;
    position: relative;
    background-color: #f5f5f5;}

.main12{
	margin-right: auto;
    margin-left: auto;
    width: calc(100% - 120px);
    max-width: 100%;
    box-sizing: border-box;
    min-height: 1px;}

.cart{
    position: relative;}    

.row {
	display: flex;
	flex-wrap: wrap;
    box-sizing: border-box;
    margin-right: -10px;
    margin-left: -10px;}

.main13{
   padding-right: 10px;
   padding-left: 10px; 
   margin-left: auto; }
    
.main14{
    padding: 30px 0 20px;
    position: relative;}

/* 맨위 article 적용*/
.sty01 {
    margin-bottom: 12px;}        
						 

/* h1적용 */   
.sty02 {
	border: solid #ededed;
    border-width: 1px 1px 0;
    border-radius: 6px 6px 0 0;
    padding: 10px 0;
    font-size: 15px;
    font-weight: 500;
    line-height: 20px;
    text-align: center;
    color: #424242;
    background-color: #fff;}

/*두번째 ul, li, article 적용*/

.sty03 .sty04:first-child .sty05{
	border-top-left-radius: 0;
    border-top-right-radius: 0;}
    
.sty05 {
    border-width: 1px;
    border-style: solid;
    border-color: rgb(237, 237, 237);
    border-image: initial;
    border-radius: 6px;
    margin-bottom: 12px;
    background-color: #fff;}    

/*li class에 적용*/
.sty06{
	border-bottom: 1px solid #ededed;}

/*세번째 article 적용*/
.sty07 {
    padding: 20px 15px 20px 54px;
    position: relative;
    margin-right: 20px;
    margin-bottom: 12px;}
 
/* a class 적용*/
.itemsty08 {
	margin-right: 20px;
    margin-bottom: 12px;
    display: flex;}
    
/* div 이미지 적용*/
.image09{
	-webkit-box-flex: 0;
	flex-basis: auto;
	position: relative;
    display: block;
    width: 70px;
    height: 70px;
    border-radius: 6px;
    background-color: #ededed;
    overflow: hidden;}    
    
/* 상품이미지 옆 타이틀 글자에 적용 */
.sty10{
	flex-grow: 1;
	padding-left: 12px;}

/* 상품이미지 옆 타이틀 글자에 적용 */
.sty11{
	min-width: 0;
    font-size: 15px;
    font-weight: 500;
    color: #000;
    line-height: 21px;
    overflow-wrap: break-word;
    transition: opacity .1s;}	
    
/* p class 무료배송|일반택배 글자에적용 */
.sty12{
	margin-top: 8px;
    font-weight: normal;
    font-size: 11px;
    line-height: 15px;
    color: rgb(117, 117, 117);
    overflow-wrap: break-word;
    display: flex;
    -webkit-box-align: center;
    align-items: center;}

/* x버튼에 적용 */
.delete_sty13 {
    right: 15px;
    position: absolute;
    display: inline-block;
    top: 15px;
    padding: 5px;
    background: none;
    border: none;
    font-size: 0;
    transition: opacity .1s;
    color: #424242;}

/* 상품종류, 수량부분에 적용 */
.sty14{
	position: relative;
    margin-bottom: 8px;
    padding: 12px;
    background-color: rgb(247, 249, 250);
    border-radius: 4px;
    color: rgb(47, 52, 56);}
    
/* 상품종류, 수량부분에 적용 */
.sty15{
	font-size: 14px;
    line-height: 18px;
    padding: 0px 24px 10px 0px;}
    
/* 수량부분 옆 삭제버튼 적용 */
.sty16{
	position: absolute;
    display: inline-block;
    top: 0px;
    right: 0px;
    padding: 10px;
    background: none;
    border: none;
    font-size: 0px;
    transition: opacity 0.1s ease 0s;}
    
.sty16 > span {
    color: rgb(130, 140, 148);} 

.sty17 {
    display: inline-block;
    font-size: 16px;
    line-height: 1;}

/*밑에 수량 및 가격부분에 적용 */     
.sty18 {
    display: flex;
    align-items: flex-end;
    -webkit-box-pack: justify;
    justify-content: space-between;} 

/* 수량 체크부분에 적용 */    
.sty19 {
    width: 70px;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: justify;
    justify-content: space-between;
    padding: 7px 6px;
    background: rgb(255, 255, 255);
    color: rgb(47, 52, 56);
    border: 1px solid rgb(218, 221, 224);
    border-radius: 4px;
    margin-top: 12px;}
     
/* (span)수량 마이너스,플러스 부분에 적용 */
.sty20 {
    display: inline-block;
    font-size: 18px;
    line-height: 1;
    cursor: pointer;}
    
/*(마이너스 및 플러스 부분추가)*/ 
.sty20::before {
    font-family: OhouseIcon;
    vertical-align: top;}

/*(마이너스 부분추가)*/
.addsty1:before {
    content: "\ea82";}        
    
/* (button)수량 1부분에 적용 */
.sty21 {
	font-size: 14px;
    line-height: 18px;
    padding: 0px;
    border: 0px;
    background: none;
    color: rgb(47, 52, 56)}           

/* 플러스부분에 적용 */
.addsty2:before {
    content: "\e90d";}
    
/* (div) 수량 옆 가격부분에 적용 */
.sty22 {
    flex: 1 1 0%;
    text-align: right;}

/* (span) 가격부분에 적용 */
.sty23 {
	font-size: 16px;
    line-height: 20px;
    font-weight: 600;} 


/* footer, 수량 밑에 옵션변경,가격에 적용 */   
.footer-sty24 {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
    -webkit-box-pack: justify;
    justify-content: space-between;
    margin-top: 16px;}
        
/*(span) 옵션변경,바로구매 문구에 적용*/
.footer-sty25 {
	-webkit-box-flex: 0;
	flex: 0 0 auto;}
	
.footer-sty27 {
	position: relative;
    display: inline-block;
    margin: 2px 0 0 -3px;
    padding: 3px;
    background: none;
    border: none;
    color: #424242;
    font-family: inherit;
    font-weight: 400;
    font-size: 12px;
    line-height: 1;
    transition: opacity .1s;}

/* .footer-sty27 {
	color: #424242;
    font-family: inherit;
    font-weight: 400;
    font-size: 12px;
    line-height: 1;}  */    	                     
                     
.footer-sty27:nth-child(n+2) {
    margin-left: 14px;}

/* 옵션변경, 바로구매 사이 경계선에 적용 */
.footer-sty27:nth-child(n+2):before {
    content:"";
    position: absolute;
    display: block;
    left: -7px;
    top: 4px;
    height: 12px;
    border-left: 1px solid #dbdbdb;}
 
/* 오른쪽 맨밑 가격부분에 적용 */   
.footer-sty28{
	-webkit-box-flex: 0;
	flex: 0 0 auto;
    color: #000;
    font-size: 17px;
    font-weight: 700;}
        
.footer-sty29{
 }    

/* "배송비 무료" 문구 부분 적용 */
.footer-sty30{
	padding: 10px 0;
    font-size: 15px;
    line-height: 20px;
    text-align: center;
    color: #424242;}

/* 오른쪽 총 상품금액 부분 적용 */    
.sty32 {
	display: none; /* 이 스타일 안넣어주면 문구가 밑에도 표시가 됨 */
	background-color: #fff;}
    
.sty33 {
	padding-top: 10px;
    padding-right: 20px;
    padding-bottom: 10px;
    padding-left: 20px;}
        

.sty120 {
	font-size: 20px;
	font-face: 맑은고딕;}

	
</style>

</head>
<body>
	<div class="main11">
	 <div class="main12">
	  <div class="cart row">
	   <div class = "main13">
				
			<ul>
				<li>
				<!-- article은 독립적인요소로 사용 -->
				<article class="sty01">
				
	<h1 class="sty02">더조은 가구 배송</h1>
	 <ul class="sty03">
	  <li class="sty04">
	   <article class = "sty05">
	   
	<ul class="">
	 <li class="">
	  <article class= "sty07">
	   <a class= "itemsty08 itemsty08--clickable" href="#">
	     <div class="image09">
	       <picture>
	       <source type="image/webp" src="꾸미기/꾸미기3.png" srcset="꾸미기/꾸미기3.png">
	       <img alt="상품 이미지" src="꾸미기/꾸미기3.png" srcset="꾸미기/꾸미기3.png">
	       </picture>   
	     </div>
	    <div class="sty10">
	     <h1 class="sty11">[네오체어] 체어맨 아마존 최다판매 사무용 중역 가죽 의자</h1>
	     <p class="sty12">무료배송 | 일반택배</p>     
	    </div>    
	   </a>
	   <button class="delete_sty13" type="button" aria-label="삭제">
	    <svg width="12" height="12" viewbox="0 0 12 12" fill="currentColor" 
	    preserveAspectRatio="xMidYMid meet">
	     <path fill-rule="nonzero" 
	     d="M6 4.6L10.3.3l1.4 1.4L7.4 6l4.3 4.3-1.4 1.4L6 7.4l-4.3 4.3-1.4-1.4L4.6 6 .3 1.7 1.7.3 6 4.6z">
	     </path>
	    </svg>
	   </button>
	   
	   <ul class="">
	    <li class="">
	     <article class="sty14">
	      <h2 class="sty15">그레이
	      </h2>
	       <button type="button" aria-label="삭제" class="sty16">
	        <span class="sty17"></span>
	       </button>
	       <div class="sty18">
	        <div class="sty19">
	         <span class="sty20 addsty1"></span>
	         <button class="sty21">1</button>
	         <span class="sty20 addsty2"></span>
	        </div>
	        <div class = "sty22">
	         <span class="sty23">
	         129,900 
	         원         
	         </span>        
	        </div>       
	       </div>       
	     </article>
	    </li>
	   </ul>
	   <div class="footer-sty24">
	    <span class="footer-sty25">
	     <button class="footer-sty27" type="button">옵션변경</button>
	     <button class="footer-sty27" type="button">바로구매</button>
	     </span>
	    <span class="footer-sty28">
	     <span class="footer-sty28_number">129,900</span>원
	    </span>
	   </div>   
	  </article>
	 </li>
	</ul>
	<footer class="footer-sty30">
	 <p class="footer-sty31">배송비 무료</p>
	</footer>
    </article>
   </li>
  </ul>
  <dl class="sty32 sty33">
   <div class="sty33">
   
   
   </div>
  
  </dl>
									
				</article>
				</li>			
			</ul>
			
	<!-- <img src="꾸미기/꾸미기3.png">
	<table class= "sty120">
		<thead>
			<tr class="">
				<th>상품 정보</th>
				<th>수량</th>
				<th>가격</th>
				<th>합계</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>상품 A</td>
				<td><input type="number" value="1"></td>
				<td>10,000원</td>
				<td>10,000원</td>
			</tr>
			<tr>
				<td>상품 B</td>
				<td><input type="number" value="2"></td>
				<td>5,000원</td>
				<td>10,000원</td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="3">총합</td>
				<td>20,000원</td>
			</tr>
		</tfoot>
	</table>
	
	<button>구매하기</button> -->
		
			</div>
		</div>
	</div>
</div>	
</body>
</html>