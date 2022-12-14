<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.ArrayList,main.model.vo.*"%>
    <%
    ArrayList<Main> Tlist = (ArrayList<Main>)request.getAttribute("Tlist");
    ArrayList<Main> Slist = (ArrayList<Main>)request.getAttribute("Slist");
    ArrayList<Main> Alist = (ArrayList<Main>)request.getAttribute("Alist");
    %>
<!doctype html>
<html>
  <!-- Required meta tags -->
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

 


	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
 	<link rel="stylesheet" href="<%= request.getContextPath() %>/css/comfort/owl.carousel.min.css">
	<link rel="stylesheet" href="<%= request.getContextPath() %>/css/comfort/owl.theme.default.min.css">
	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

    <title>Hello, world!</title>
	
    <link href='https://fonts.googleapis.com/css?family=Work+Sans:400,100,700,300|Nothing+You+Could+Do' rel='stylesheet' type='text/css'>
	
 	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js" integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2" crossorigin="anonymous"></script>
	<script src="<%= request.getContextPath() %>/js/owl.carousel.min.js"></script>
	
	
	
<!-- style CSS -->

<style>


*{word-break: keep-all;}


@font-face {
    font-family: 'GowunDodum-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/GowunDodum-Regular.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

*{
 font-family: 'GowunDodum-Regular';
}

.logo{
	margin-top: 50px;
}

/* ???????????? */
  	#slide.owl-theme .owl-nav [class*=owl-] {
  		background: #f9f9f9;
	    border-radius: 2px;
	    font-size: 16px;
	    width: 30px;
	    height: 30px;
	    line-height: 30px;
	    text-align: center;
	    padding: 0;
  }

   .slide-img{
  		height: 95vh;
  		object-fit: fill;
  }
	

 /* ??????????????????*/
 .swiper-container {
	/*margin-top:150px;*/
	height:530px;
	position: relative;
}

.swiper-slide {
	text-align:center;
	display:block; /* ????????? ???????????? ???????????? flex ?????? */
	align-items:center; /* ????????? ?????? ???????????? */
	justify-content:center; /* ?????? ?????? ???????????? */
}


.swiper-slide:hover{
cursor:pointer;
}

.swiper-slide img {
	max-width:100%; /* ????????? ??????????????? ??????, ??????????????? ???????????? ???????????? ???????????? ?????? */
	/* ??? ???????????? ???????????? ??????????????????. ??????????????? ?????? ??? ????????????. */
}


.swiper-pagination{
	position: absolute;
	top : -5px;
}
	
/* 	
?????? ???????????? ???????????? ????????? */
.swiper-pagination-bullet { 
width: 10px; 
height: 10px; 
background: transparent;
border: 1px solid black; 
opacity: 1; 
}
/* 	
?????? ???????????? ???????????? ????????? */								 
.swiper-pagination-bullet-active { 
width: 20px; 
transition: width .5s;
border-radius: 5px;
background: black; 
border:1px solid transparent; 
}



 
/* ???????????? */

.introduce {   
    width: 60%;
    margin: auto;
    overflow: hidden;

    }
    
.introduce-item {
    width: 100%;
    height: auto;
    position: relative;
}
.introduce-item img { 
    width: 95%;
    height: 100%;
    object-fit: contain;

}

.inimg-item{ 
position:relative;
}


.intext-1{
position: absolute;
top: 0;
left:0;
bottom: 0;
width: 60%;
height:  100%;
background: rgba(0, 0, 0, 0.6);
color: white;
font-family: sans-serif;
display: flex;
flex-direction: column;
align-items: center;
justify-content: center;
opacity: 1;
transition: opacity 0.1s;
}


.intext-1:hover {
transition: width .5s;
opacity: 1;
width: 95%;
}

[class^="ingrid"]{
display:flex;
}


@media only screen and (min-width: 640px) {
.introduce{
      display: grid;
      grid-template-columns: 1fr 1fr;
      grid-colmun-gap: 50px;
}
	
}
.ingrid1 {
      display:  block;
      row-gap: 3px;

    
}
.ingrid2 {
      display: block;
      row-gap: 3px;
   
      
      
}
.ingrid3 {
      display: block;
      row-gap: 3px;
 
}

/*??? ?????? ???????????? */
.favorite {  
    overflow: hidden;
}
.favorite-item {
    position: relative;
}
.favorite-item img {
    width: 100%;
    height: 330px;
    object-fit: cover;
}

.img-item{ 
width: 100%;
position:relative;
}


.text-1{
position: absolute;
top: 0;
bottom: 0;
width: 100%;
height: 100%;
background: rgba(0, 0, 0, 0.6);
color: white;
display: flex;
flex-direction: column;
align-items: center;
justify-content: center;
opacity: 0;
transition: opacity 0.5s;
font-size:20px;

}


.text-1:hover {
cursor:pointer;
opacity: 1;
}

[class^="grid"]{
display:flex;
}

@media only screen and (min-width: 640px) {
.favorite {
      display: grid;
      grid-template-columns: 1fr 1fr 1fr;
	
}


.text-small {
  font-size: 0.9rem;
}

a {
  color: inherit;
  text-decoration: none;
  transition: all 0.3s;
}


</style>

</head>

<body>
	<%@ include file = "../common/menubar.jsp" %>
  
  <!-- ?????? ???????????? -->

  	<%if(Slist.size() > 3) {%>
	<div class="owl-carousel owl-theme" id="slide">
		<% for(int i = 1; i < Slist.size(); i++){ %>
	    <div class="item slide-img"> 
	    	<div class="carousel-item active slide-img" onclick = "location.href = '<%=request.getContextPath()%>/comfort.de?rNo=<%=Slist.get(i).getRoomNo()%>'" style = "cursor:pointer;">
	    	<img class="slide-img" src="<%= request.getContextPath() %>/image_uploadFiles/<%= Slist.get(i).getChangeName() %>" class="d-block w-100" alt="slide">
		   	</div>
	   	</div>
		<% } %>
	<% } %>
	</div>
	<script>
		$('#slide').owlCarousel({
			items: 1, //??? ????????? ????????? ????????? ???
			margin: 10, //?????? ????????? ????????? 10
			loop: true, // ?????? ??????
			nav: true, // ??????????????? ?????? ??????
			navText: ["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"], // ??????????????? ?????? '??????/??????' ?????? ??????
			autoplay: true, // ?????? ????????? ??????
			autoplayTimeout: 3000, // ?????? ????????? ?????? ??????
			autoplayHoverPause: true, // ????????? ???????????? ????????? ?????? ????????? ?????? ??????
			dots : false
		});
	</script> 



<!--  ???????????? -->
<div class = "information">
<h1 class="text-center"><input type ="hidden" name = "no" value= "1"><%--<%=title %>--%></h1>
<br>
<%--<%=content %>--%>


<div class="center logo" align="center">
<img src = "images/logo.png" width="20%">
</div>
<br><br>
<h2 class="text-center"><strong>FIND COMFORT</strong></h2>
<br>

<h5 class="text-center">' ????????? ????????? ??????????????? ??????, ????????? ?????????????????? ????????? ????????? ????????? ????????? ????????? ?????? ?????? ??????. '</h5>


<br>
<p class="text-center">????????? ???????????? ????????? ???????????? ????????? ??? ???????????? ?????? ????????? ?????? ????????? ????????? ????????? ???????????? ????????? ??????. <br>
???????????? ?????? ????????? ??? ??????, ??? ??? ?????? ???????????? ????????? ????????? ?????? ?????? ???????????? ???????????? ?????? ????????? ???????????? ?????????????????? ???????????? ???????????? ???????????? ???????????? ???????????? ??????.<br>
 ????????? ??????. ??? '??????'??? ???????????? ????????? ???????????? ???????????? ??????????????? ??????????????? ???????????? ?????? ??????. ?????? ????????? ?????? ??? ???????????? ????????? ????????? ????????????, 
 <br>?????? ????????? ???????????? ????????? ??????????????? ????????????.
  ????????? ??????????????? ???????????? ????????? ???????????? ????????? ?????????????????? ??????????????? ??????, ????????? ??????????????? ??????????????? ??????????????? ????????? ??? ??????.
  <br>????????? ?????? ?????? ????????? ?????? ?????????.???????????? ??????????????? ????????? ????????? ?????? ??? ?????? ????????? ??????. 
 ????????? ????????? ?????? ???????????? ???????????? ??????????????? ????????? ??? ?????? ????????? ????????? ?????? ?????? ?????? ?????????, 
 <br> ???????????? ??????. ????????? ?????? ????????? ??????????????? ????????????. ????????? ????????? ??? ?????? ????????? ??? '??????'??? ??????????????????  FIND COMFORT??? ???????????? ??????.
  
 </p>

</div>

<br><br><br><br>

<br><br><br>


<!-- ???????????? ????????? -->
<% if(Tlist.size() == 9){ %>
<h5 class="text-center">????????? ????????? ????????????
<br>
Only - Comfort</h5>
<br>
<div class="favorite" id="favorite">
      <% for(int i = 0; i < 9; i++) {%>
	<div class="favorite-item" id="favorite-item">
        <div class="grid<%= i + 1 %>" id="grid<%= i + 1 %>">
          <div class="img-item">
          	<img class="img-fluid image" src="<%=request.getContextPath()%>/image_uploadFiles/<%=Tlist.get(i).getChangeName()%>" id ="s<%=i+1 %>" alt="favorite img"/>
            <div class="imgtext">
     	        <div class="text-1"  onclick = "location.href = '<%=request.getContextPath()%>/comfort.de?rNo=<%=Tlist.get(i).getRoomNo()%>'" id ="s2">
     	        	<%=Tlist.get(i).getRoomTitle()%>
   	        	</div>
       	    </div>
   	    </div>
      </div>
   </div>
      <% } %>
</div>
   
      

<%} %>


<br><br><br><br><br>
<br><br><br>
<br><br><br>


<!-- ?????? ???????????? -->
<!-- ??????????????? ???????????? ??? ??? -->
 <!-- ?????? ???????????? -->
<!-- ??????????????? ???????????? ??? ??? -->
<h5 class="text-center aroundMain"> ??? ??? ??? ??? ??? ??? ??? ??? ??? ??? ???</h5>
	
  <br>
  <% if(!Alist.isEmpty()){ %>
<div class="swiper-container">
	<div class="swiper-wrapper">
	<%for(int i = 0; i < Alist.size(); i++){ %>
		<div class="swiper-slide" onclick = "location.href = '<%=request.getContextPath()%>/comfort.de?rNo=<%=Alist.get(i).getRoomNo()%>'">
			<img src="<%=request.getContextPath()%>/image_uploadFiles/<%=Alist.get(i).getChangeName()%>" width="400px" height="230px">
			<br><br>
			<p>
				<strong>
					"<%=Alist.get(i).getAroundName()%>"
				</strong>
			</p>
				<%=Alist.get(i).getAroundText()%>
		</div>

		<% } %>
	<% } %>
	</div>
	<div class="swiper-pagination"></div>
	<!-- ??????????????? -->
</div>





<script>
   new Swiper('.swiper-container', {

	slidesPerView : 4, // ????????? ????????? ???????????? ??????
	spaceBetween : 10, // ??????????????? ??????
	slidesPerGroup : 4, // ???????????? ?????? ???, slidesPerView ??? ?????? ?????? ??????????????? ??????

	// ???????????? ?????? ?????? ?????? ???????????? ?????????
	// 3?????? ????????? ????????? 1?????? ????????? 2?????? ???????????? ????????? 3?????? ??????
	loopFillGroupWithBlank : true,
	mousewheel : true,

	loop : true, // ?????? ??????
	pagination : { // ?????????
		el : '.swiper-pagination',
		clickable : true, // ???????????? ???????????? ?????? ???????????? ??????, ????????? ????????? ?????? ?????? ??????
		dynamicBullets: true,
		dynamicMainBullets: 2,
	},
	navigation : { // ???????????????
		nextEl : '.swiper-button-next', // ?????? ?????? ????????????
		prevEl : '.swiper-button-prev', // ?????? ?????? ????????????
	}
});
   
   
 </script>

   
   <br><br><br><br><br><br>
      <br><br>
   
   
    <!-- ?????? ?????? -->
<h5 class="text-center"><img src ="images/album.png" width=15px;> I N T R O D U C E</h5>
<p class="text-center">"??? ???" ??? ??? ??? ??? ??? ??? ???</p>
 <div class ="ohye" style = "background: #f9f9f9; width:100%;"> 
<div class="introduce" id="introduce"> 
      <div class="introduce-item" id="introduce-item">
        <div class="ingrid1" id="ingrid1">
          <div class="inimg-item">
                  <img src="images/??????1.jpg"  alt="favorite img"/>
            <div class="inimgtext">
              <div class="intext-1" style="font-family: 'GowunDodum-Regular'">??????,<br>????????? ???????????????? WITH FIND COMFORT</div>
            </div>
          </div>
          <div class="inimg-item">
                 <img src="images/??????.jpg" alt="favorite img"/>
            <div class="inimgtext">
              <div class="intext-1" style="font-family: 'GowunDodum-Regular'">??????,<br>????????? ???????????? ??????, FIND COMFORT</div>
            </div>
          </div>

    
        </div>
      </div>

      <div class="introduce-item" id="introduce-item">
        <div class="ingrid2" id="ingrid2">
          <div class="inimg-item">
                  <img src="images/??????1.jpg" alt="favorite img"/>
                 <div class="inimgtext">
              <div class="intext-1" style="font-family: 'GowunDodum-Regular'">??????,<br> ????????? ???????????? ????????? FIND COMFORT</div>
            </div>
          </div>
          
          <div class="inimg-item">
                 <img src="images/??????1.jpg" alt="favorite img"/>
            <div class="inimgtext">
              <div class="intext-1" style="font-family: 'GowunDodum-Regular'">??????,<br>???????????? ????????? ????????? ?????? FIND COMFORT</div>
            </div>
          </div>

    
        </div>
        </div>
      </div>
 </div>
 <!-- </div> -->
   <br><br><br><br><br>
   
	<%@ include file = "../common/footer.jsp" %>
  
   
  </body>
</html>