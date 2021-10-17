<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html>
    <head>
      <meta charset="UTF-8">
      <title>회원 찜 내역</title>
      <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
      <style>
        * {
          margin: 0;
          padding: 0;
        }
      </style>
    </head>
    <body>
      <c:if test="${sessionScope.u_id != null }">
        <jsp:include page="../include/header2.jsp"></jsp:include>
      </c:if>
      <% // 로그인 처리 -> 로그인 x (로그인페이지 이동)
        String u_id = (String) session.getAttribute("u_id");
        if( u_id != null){
        }else{%>
        <script> alert('로그인이 필요합니다.'); window.location.href = "http://localhost:8088/trip/user/login.do";</script>
        <%}%>
          <div style="margin:auto; width:1100px; height:100%; min-height: 800px;">
            <div class="list-group" id="asdf"
              style="float:left;width:180px; height:600px; margin-top: 15px; position: relative;">
              <a href="#" class="list-group-item list-group-item-action"
                style="background-color: #ededed; color: #343a40; font-weight: bold;">마이페이지</a>
              <a href="#" class="list-group-item list-group-item-action">개인정보</a>
              <a href="#" class="list-group-item list-group-item-action">1대1문의</a>
              <a href="#" class="list-group-item list-group-item-action">찜 내역</a>
              <a href="#" class="list-group-item list-group-item-action">예약내역</a>
              <a href="#" class="list-group-item list-group-item-action">Contact Us</a>
            </div>
            <div style="float:right;width:915px;">
              <div>
                <nav style="margin-top:15px; height: 50px; line-height: 40px; background-color: #ededed; ">
                  <a class="navbar-brand" style="font-size: 100%; margin-left: 20px; color: #343a40; font-weight: bold;"
                    href="#">찜 내역</a>
                </nav>
              </div>
              <div style="text-align: right; margin-top: 10px; margin-bottom: 10px;">
               <!--  <a href="#" class="btn btn-secondary" id="selectAll">전체선택</a> -->
                <a href="#" class="btn btn-secondary" onclick="DeleteClick()">선택상품삭제</a>
              </div>
              <div style="column-width: 100;">
                <!---------forEach 시작-------------------------------------------------------------------------------------------------------------------------->
                <c:forEach var="board" items="${wishList }">
                <div class="card" style="width: 18rem;margin-bottom: 15px; display: inline-block; margin-left:10px; ">
                  <img class="card-img-top" src="${board.pd_image }" alt="Card image cap">
                  <div style="padding: 10px;">
                    <h5 style="margin: 0;" id="pd_name">${board.pd_name }</h5>
                    <h5 style="margin: 0;" class="w_seq">${board.w_seq }</h5>
                    <p style="margin: 0;">${board.pd_startDate } ~ ${board.pd_endDate }</p>
                    <p style="margin: 0; margin-bottom: 10px;">금액 : ${board.pd_price }</p>
                    <input id="test" type="checkbox" name="checkbox_check" class="ckbox" 
                      style="position:absolute; top:10px; left:10px; width: 25px; height: 25px; cursor: pointer; opacity: 0.5;" value="${board.w_seq}">
                    <a href="<%=request.getContextPath()%>/board/detail.do?pd_seq=${board.pd_seq }" class="btn btn-secondary">Detail</a>
                    <a href="#" onclick="delBtn(${board.w_seq })" class="btn btn-secondary">삭제</a>
                    <p style="display: none"><span id="u_id">${member.u_id}</span> </p>
                  </div>
                </div>
                      </c:forEach> 
                <!---------forEach 끝-------------------------------------------------------------------------------------------------------------------------->
              </div>
            </div>
          </div>
          <script>
		  // 삭제 버튼 클릭 시 실행되는 함수
          function delBtn(w_seq){
          	var pd_name =$("#pd_name").text();
      		var del_con = confirm('해당 상품을 삭제하시겠습니까?');			
          	var u_id = $("#u_id").text();
          	if(!del_con){
          		return false;
          	}else{
          	var seqdata ={"w_seq":w_seq};

      	    $.ajax({
      	        url:"delete.do",
      	        type:'POST',
      	        data: seqdata,
      	        success:function(data){
      	            alert("해당 상품이 삭제되었습니다.");
      	          location.href = "http://localhost:8088/trip/wishlist/list.do?u_id="+u_id;  							            	            
      	        }
      	    });	//ajax 종료
          	} //if문 종료					    	
          }; //delBtn 함수 종료
          
          /* 전체 선택 버튼 구현중... 시간이 남으면 구현해보자ㅜ
          $(document).on('click',"#selectAll",function(){
          	if($("#selectAll").is("checked")){
          		$("input:checkbox[name='checkbox_check']").prop("checked", true);
          	}else{
          		$("input:checkbox[name='checkbox_check']").prop("checked", false);
          	}
          });  */

          // 10/14 12:00 이희연 체크박스 선택 삭제 구현 완료(10/16)
          function DeleteClick(){
        	var arr = new Array();
            var cnt = $("input:checkbox[name='checkbox_check']:checked").length;
        	var chk_arr = [];
        	
        	$("input:checkbox[name='checkbox_check']:checked").each(function(){
        		var chk = $(this).val();
        		chk_arr.push(chk);
        	});
        	
          	if(chk_arr == ""){
        		alert("삭제할 상품을 선택해주세요.");
        		return false;
        	}else{
        		var confirmAlert = confirm("선택하신 상품을 삭제하시겠습니까?");
        		if(!confirmAlert){
        			 return false;
        		}else {
             		$.ajax({
              	       type : "POST",
              	       data : {"arr" : chk_arr},
              	       url : "http://localhost:8088/trip/wishlist/selectDelete.do",
              	       success : function(data, status) {
         	    			alert("정상적으로 삭제되었습니다.");
             				location.href = "http://localhost:8088/trip/wishlist/list.do";  
              	       },
              	       error: function() {
              	    	   alert("서버 통신 오류");
              	       }
              	   }); // ajax 종료	
        		} // confirmAlert if문 종료
        	} // else 종료
        } //DeleteClick() 함수 종료
          
            $(document).ready(function () {
              $(window).scroll(function () {
                var newpt = $(window).scrollTop() - 60 + "px";
                if (($("#asdf").offset().top) <= ($(window).scrollTop())) {
                  $("#asdf").css("top", newpt);
                } else if (($("#asdf").offset().top > $(window).scrollTop())) {
                  $("#asdf").css("top", newpt);
                  if ($(window).scrollTop() <= 60) {
                    $("#asdf").css("top", "0px");
                  }
                }
              })//scroll 함수끝				
            })

          </script>
          <jsp:include page="../include/footer.jsp"></jsp:include>
    </body>
    </html>