
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
*{margin:0; padding:0;}
#searchDiv001{column-width: 230px; margin:15px; position: absolute; margin-top:45px; margin-left:70px; margin-right:70px}
#searchDiv001 figure{display: inline-block;}
#searchDiv001 figure img{width:100%; border-radius:20px; }
#searchDiv001 figure img:hover{cursor: pointer;}
#searchDiv001 figure figcaption p{margin-left:20px; position: relative; top:-30px;}
#searchDiv001 figure figcaption p:nth-child(1){font-weight: bold;}
#searchDiv001 figure figcaption p:nth-child(2){font-size: 80%;}
.searchImgModal{position: relative; float:right;top: 40px;right:10px;width:40px;height: 30px;background-color: red;border-radius: 15px;text-align: center;color: white;line-height: 25px;z-index: 1;cursor: pointer;visibility:hidden;}
.searchImgModal2{position: relative;bottom: 43px;left: 10px;width:100px;height: 30px;background-color: red;border-radius: 15px;text-align: center;color: white;line-height: 25px;z-index: 1;cursor: pointer;visibility:hidden;}
@media (max-width:1400px){#searchDiv001{margin-left:15px; margin-right:15px;}}
@media (max-width:1100px){#searchDiv001{width:1050px;}}
#searchInput001:hover{cursor: pointer; color: red;}

</style>
   	<jsp:include page="../include/header.jsp"></jsp:include>
</head>
<body>

   	<div id="searchDiv001">
      <c:forEach var="board" items="${searchList }">
         <figure>
            <div class="searchImgModal">찜</div>
            <img class="searchImg01" src="${board.pd_image }" onclick="location.href='<%=request.getContextPath() %>/board/detail.do?pd_seq=${board.pd_seq}' ">
            <div class="searchImgModal2" onclick="location.href='<%=request.getContextPath() %>/board/detail.do?pd_seq=${board.pd_seq}' " >상세보기</div>
             <figcaption>
	           <p>${board.pd_name }</p>
	           <p>${board.pd_startDate} ~ ${board.pd_endDate}</p>
	           <p>#${board.pd_theme } #${board.pd_theme } #${board.pd_theme }</p>
             </figcaption>
         </figure>
      </c:forEach> 
   </div>

<script>

var searchImg01Over=function(){
	//console.log("searchImg01Over...");
	//console.dir(event.target);
	$($(event.target).prev()).css("visibility", "visible");
	$($(event.target).next()).css("visibility", "visible");
	$(event.target).css("filter", "brightness(60%)");
};
var searchImg01Out=function(){
	$($(event.target).prev()).css("visibility", "hidden");
	$($(event.target).next()).css("visibility", "hidden");
	$(event.target).css("filter", "brightness(100%)");
};
var searchImgModalOver=function(){
	$($(event.target).next()).css("filter", "brightness(60%)");
	$(event.target).css("visibility", "visible");
	$($(event.target).next().next()).css("visibility", "visible");
};
var searchImgModalOut=function(){
	$($(event.target).next()).css("filter", "brightness(100%)");
	$(event.target).css("visibility", "hidden");
	$($(event.target).next().next()).css("visibility", "hidden");
};
var searchImgModal2Over=function(){
	$($(event.target).prev()).css("filter", "brightness(60%)");
	$(event.target).css("visibility", "visible");
	$($(event.target).prev().prev()).css("visibility", "visible");
};
var searchImgModal2Out=function(){
	$($(event.target).prev()).css("filter", "brightness(100%)");
	$(event.target).css("visibility", "hidden");
	$($(event.target).prev().prev()).css("visibility", "hidden");
};
var searchImgModalClick=function(){
	if($(event.target).css("background-color") == "rgb(255, 0, 0)"){
		$(event.target).css("background-color", "rgb(0, 0, 0)");
	}else{
		$(event.target).css("background-color", "rgb(255, 0, 0)");
	}
};

$(document).ready(function(){
	$(".searchImg01").mouseover(searchImg01Over);
	$(".searchImg01").mouseout(searchImg01Out);
	$(".searchImgModal").mouseover(searchImgModalOver);
	$(".searchImgModal").mouseout(searchImgModalOut);
	$(".searchImgModal2").mouseover(searchImgModal2Over);
	$(".searchImgModal2").mouseout(searchImgModal2Out);
	$(".searchImgModal").on("click", searchImgModalClick);
});
</script>

</body>
</html>
