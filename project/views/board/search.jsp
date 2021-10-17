<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
<!-- <script type="text/javascript">
var add = [];
var add1 = [];
var i = 1;
var s =1;
</script> -->
 	<%-- <c:forEach var="wishList" items="${wishList }">
 		<input type="hidden" value = "${wishList.pd_seq}" class = "check_w_seq" />
 	</c:forEach>  --%>
   	<div id="searchDiv001">
      <c:forEach var="board" items="${searchList }"  >
      <input type="hidden" value = "${board.pd_seq}" class = "check_pd_seq" />
         <figure>
            <div class="searchImgModal" id="div222" >찜</div>
			<!-- <script type="text/javascript">
				add.push(i);
				//console.log($('.check_pd_seq')[i].value)
				changeColor();
				i +=1;
			</script> -->
            <img class="searchImg01" id="pd_image" src="${board.pd_image }" onclick="location.href='<%=request.getContextPath() %>/board/detail.do?pd_seq=${board.pd_seq}' ">
            <div class="searchImgModal2" onclick="location.href='<%=request.getContextPath() %>/board/detail.do?pd_seq=${board.pd_seq}' " >상세보기</div>
             <figcaption>
	           <p id="pd_name" class="pd_name_class">${board.pd_name }</p>
	           <p><span id="pd_startDate">${board.pd_startDate}</span> ~ <span id="pd_endDate">${board.pd_endDate}</span></p>
	           <p>#${board.pd_theme } #${board.pd_theme } #${board.pd_theme }</p>
 	           <p style="display: none"><span id="pd_seq" class="pd_seq_class">${board.pd_seq}</span></p>
 	           <p style="display: none"><span id="pd_price">${board.pd_price}</span> </p>
 	           <p style="display: none"><span id="u_id">${member.u_id}</span> </p>
             </figcaption>
         </figure>
      </c:forEach> 
   </div>

<script>

var searchImg01Over=function(){
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
	const pd_seq = $(event.target).next().next().next().find(".pd_seq001").text();
	const pd_name = $(event.target).next().next().next().find(".pd_name001").text();
	const u_id = $(event.target).next().next().next().children(".u_id001").text();
	const pd_startDate = $(event.target).next().next().next().find(".pd_startDate001").text();
	const pd_endDate = $(event.target).next().next().next().find(".pd_endDate001").text();
	const pd_price = $(event.target).next().next().next().find(".pd_price001").text();
	const pd_image = $(event.target).next().prop("src");
	
	const pd_seq1 = $(this).next().next().next().find("#pd_seq").text();
	const pd_name1 = $(this).next().next().next().find("#pd_name").text();
	const u_id1 = $("#u_id").text();
	const pd_startDate1 = $(this).next().next().next().find("#pd_startDate").text();
	const pd_endDate1 = $(this).next().next().next().find("#pd_endDate").text();
	const pd_price1 = $(this).next().next().next().find("#pd_price").text();
	const pd_image1 = $(this).next().prop("src");	

	var array = {"u_id" : u_id, "pd_seq" : pd_seq, "pd_name" : pd_name,
			"pd_startDate" : pd_startDate,
			"pd_endDate" : pd_endDate,
			"pd_price" : pd_price,
			"pd_image" : pd_image };
	
	var array1 = {"u_id" : u_id1, "pd_seq" : pd_seq1, "pd_name" : pd_name1,
			"pd_startDate" : pd_startDate1,
			"pd_endDate" : pd_endDate1,
			"pd_price" : pd_price1,
			"pd_image" : pd_image1 };
	
		if($(this).prop("id") != "div222"){
			var Like_confirm = confirm(pd_seq+'번 [ '+pd_name+' ] 상품을 찜하시겠습니까?');
		  	var sendUrl = "http://localhost:8088/trip/wishlist/checkAjax.do";
		  	
				if(!Like_confirm){
					return false; // 아니오
				}else{ // 예
					if(u_id == "" ){ // 미로그인 시
						alert("찜 하기위해서 로그인이 필요합니다.");
						location.href = "http://localhost:8088/trip/user/login.do";
					}else { // wishlist 상품 중복여부 판단
							$.ajax({
								url : sendUrl,
								type:"POST",
								data: array,
							success : function(data, status){
								if(status === 'success') {
									if(data === 'possible') {
										var confirm_again = confirm('찜 목록에 담겼습니다. 찜 목록으로 이동하시겠습니까?');
										if(!confirm_again){ //아니오
											return false;
										}else{
											location.href = "http://localhost:8088/trip/wishlist/list.do?u_id="+u_id; 	
										}//내부(2) if문 - 찜목록 이동? 안이동?
									}else if(data === "impossible"){
										alert("이미 찜에 등록된 상품입니다.");
								}else{
									alert("오류가 생겼습니다!")
							} // 마지막 else문 종료
						} 
			 		} 
				})  // ajax 종료 
			  } // wishlist 상품 중복여부 판단 else문 종료
			} // 로그인 여부 판단 if문 종료
		} else{
		  	var Like_confirm = confirm(pd_seq1+'번 [ '+pd_name1+' ] 상품을 찜하시겠습니까?');
		  	var sendUrl = "http://localhost:8088/trip/wishlist/checkAjax.do";
		  	
				if(!Like_confirm){
					return false; // 아니오
				}else{ // 예
					if(u_id1 == "" ){ // 미로그인 시
						alert("찜 하기위해서 로그인이 필요합니다.");
						location.href = "http://localhost:8088/trip/user/login.do";
					}else { // wishlist 상품 중복여부 판단
							$.ajax({
								url : sendUrl,
								type:"POST",
								data: array1,
							success : function(data, status){
								if(status === 'success') {
									if(data === 'possible') {
										var confirm_again = confirm('찜 목록에 담겼습니다. 찜 목록으로 이동하시겠습니까?');
										if(!confirm_again){ //아니오
											return false;
										}else{
											location.href = "http://localhost:8088/trip/wishlist/list.do?u_id="+u_id1; 	
										}//내부(2) if문
									}else if(data === "impossible"){
										alert("이미 찜에 등록된 상품입니다.");
								}else{
									alert("오류가 생겼습니다!")
							} // 마지막 else문 종료
						} 
			 		} 
				})  // ajax 종료 
			  } // wishlist 상품 중복여부 판단 else문 종료
			} // 로그인 여부 판단 if문 종료 
		}
		
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
 
	/*
	10/16 찜 버튼 색상 변경 구현 중 (미완) -> 관리자 페이지 구현 이후 완성하겠습니다!
	add1.push(s);
	s +=1;
  	var p_check_arr = []
	var w_check_arr = []

	//w_seq 수만큼 w_seq를 배열에 담기
	for(var a=0; a<add1.length; a++){
		//console.log($('.check_W_seq')[a].value);
		var w_checkSeq = $('.check_w_seq')[a].value;
		w_check_arr.push(w_checkSeq)
	}

	//console.log(w_check_arr)

	//pd_seq번호를 담은 add에서 비교하기
	//add = (1~122)
		for(var a=0; a<add.length; a++){
		var checkSeq = $('.check_pd_seq')[a].value
		//console.log(w_check_arr)
		//console.log(w_check_arr[a])
		//console.log(checkSeq)
		//console.log(w_check_arr.indexOf($('.check_pd_seq')[a].value));
			 if(w_check_arr.indexOf($('.check_pd_seq')[a].value)!=-1){
				 //console.log($('.check_pd_seq')[a].value)
					//주황
			}
	}  
	
	// 버튼 클릭 색상 변경
	var pd_seq = $(".pd_seq_class").text();
	var u_id = $("#u_id").text();
	console.log("u_id", u_id);
	
	
		$.ajax({
			url : "http://localhost:8088/trip/wishlist/checkAjaxColor.do",
			type: "POST",
			data: {"u_id" : u_id},
		success : function(data, status){
			if(status === 'success') {
			console.log("ajax 실행!!");
				if(data === 'possible') {
					//주황
					$(".searchImgModal").css("background-color", "rgb(247, 144, 0)");
				}else if(data === "impossible"){
					//초록
					$(".searchImgModal").css("background-color", "rgb(0, 247, 25)");
			}else{
				alert("오류가 생겼습니다!");
			} // 마지막 else문 종료
			} 
		} 
	});  // ajax 종료   */
	
});
	
</script>
</body>
</html>
