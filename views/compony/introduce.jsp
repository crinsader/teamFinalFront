<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link
      rel="stylesheet"  href="https://unpkg.com/swiper/swiper-bundle.min.css"
    />
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
     <style>
      .introducemaindiv {
        height: 100%;
        width: 950px;
        font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
        font-size: 14px;
        color: #000;
        align-content: center;
        display: flex;
        justify-content: center;
        align-items: center;
        position: relative;
        height: 950px;
        margin: auto;
      }

      .swiper {
        animation: fadein 5s;
          display: block;
          margin: auto;
        width: 1000px;
        height: 700px;
        border: black;
      }

      .swiper-slide {
        display: flex;
        align-items: center;
        justify-content: center;
        border-radius: 18px;
        font-size: 22px;
        font-weight: bold;
      }
      
      .swiper-slide >img{
        width: 1000px;
        height: 700px;
        object-fit: cover;
        box-shadow : 0 0 5px #ededed;
        border-radius: 18px;
    }
   
    
        @-webkit-keyframes fadein {
 /* Safari and Chrome */
        from { opacity: 0;}
         to { opacity: 1;}
    }
    @keyframes fadein {
 /* Safari and Chrome */
        from { opacity: 0;}
         to { opacity: 1;}
    }
    </style>
<title>Trillion Introduce page </title>
</head>
<body>
<jsp:include page="../include/header2.jsp"></jsp:include>
  <!-- Swiper -->
<div class="introducemaindiv">
    <h1 style="text-align: center; top:0; position: absolute; font-size: 500%; ">We are One Trillion!</h1>
    <div class="swiper mySwiper">
      <div class="swiper-wrapper">
        <div class="swiper-slide"><img src="http://jjcom0214.cafe24.com/web/OneTrillion/01.jpg"> </div>
        <div class="swiper-slide"><img src="http://jjcom0214.cafe24.com/web/OneTrillion/02.jpg"></div>
        <div class="swiper-slide"><img src="http://jjcom0214.cafe24.com/web/OneTrillion/03.jpg"></div>
        <div class="swiper-slide"><img src="http://jjcom0214.cafe24.com/web/OneTrillion/04.jpg"></div>
        <div class="swiper-slide"><img src="http://jjcom0214.cafe24.com/web/OneTrillion/05.jpg"></div>
        <div class="swiper-slide"><img src="http://jjcom0214.cafe24.com/web/OneTrillion/06.jpg"></div>
        <div class="swiper-slide"><img src="http://jjcom0214.cafe24.com/web/OneTrillion/07.jpg"></div>
        <div class="swiper-slide"><img src="http://jjcom0214.cafe24.com/web/OneTrillion/08.jpg"></div>
      </div>
    </div>
</div>    
    <jsp:include page="../include/footer.jsp"></jsp:include>
     <script>
      var swiper = new Swiper(".mySwiper", {
        effect: "cards",
        grabCursor: true,
        loop:true,
        autoplay: {
   delay: 5000,}
      });
      $(".swiper-container").hover(function() {
	    (this).swiper.autoplay.stop();
	}, function() {
	    (this).swiper.autoplay.start();
	});
    </script>
</body>
</html>