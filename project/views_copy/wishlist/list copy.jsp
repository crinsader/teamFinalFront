<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> -->
    <!DOCTYPE html>
    <html>
    <head>
      <meta charset="UTF-8">
      <title>회원 찜 내역</title>
      <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
          crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
          integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
          crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
          integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
          crossorigin="anonymous"></script>
      <style>
  
        * {
          margin: 0;
          padding: 0;
        }
      </style>
    </head>
    <body>
      <!-- <c:if test="${sessionScope.u_id != null }">
        <jsp:include page="../include/header2.jsp"></jsp:include>
      </c:if>
      <% // 로그인 처리 -> 로그인 x (로그인페이지 이동)
        String u_id = (String) session.getAttribute("u_id");
        if( u_id != null){
        }else{%>
        <script> alert('로그인이 필요합니다.'); window.location.href = "http://localhost:8088/trip/user/login.do";</script>
        <%}%> -->
          <div style="margin:auto; width:1100px; height:100%; min-height: 800px;">
        <!--  왼쪽 메뉴 ---------------------------------------------------------------------------------------------->
        <div class="list-group" id="leftSlide01"
            style="float:left;width:180px; height:600px; margin-top: 15px; position: relative;">
            <a href="#" class="list-group-item list-group-item-action"
                style="background-color: #ededed; color: #343a40; font-weight: bold;">마이페이지</a>
            <a href="#" class="list-group-item list-group-item-action">개인정보</a>
            <a href="#" class="list-group-item list-group-item-action">1대1문의</a>
            <a href="#" class="list-group-item list-group-item-action">찜 내역</a>
            <a href="#" class="list-group-item list-group-item-action">예약내역</a>
        </div>
        <!--  왼쪽 메뉴 끝---------------------------------------------------------------------------------------------->
        <div style="float:right; width:915px; height: auto;">
            <!--  div상단 바---------------------------------------------------------------------------------------------->
                <nav style="margin-top:15px; height: 45px; line-height: 45px; background-color: #ededed; ">
                    <a class="navbar-brand"
                        style="font-size: 100%; margin-left: 20px; color: #343a40; font-weight: bold;"
                        href="#">찜 내역</a>
                </nav>
            <!--  div상단 바 끝---------------------------------------------------------------------------------------------->
            <div style="margin-top: 10px; margin-bottom: 10px;">
              <!--검색 -------------------------------------------------------------------------------->
              <div style="float: left;">
                <div class="input-group mb-3" style="width: 300px; float: left; margin-right: 10px;">
                    <input type="text" class="form-control keyword" placeholder="검색할 단어를 입력하세요"
                        aria-label="Recipient's username" aria-describedby="button-addon2"
                        style="border:1px solid #ededed;">
                    <button class="btn btn-outline-secondary" type="button" id="button-addon2"
                        style="border:1px solid #ededed">검색</button>
                </div>
              </div>
              <!--검색 -------------------------------------------------------------------------------->

              <div style="float: right;">
                <input type="button" id="check_all" class="btn btn-secondary check_Choice" value="모두선택">
                <a href="#" class="btn btn-secondary" onclick="DeleteClick()">선택삭제</a>
              </div>

            </div>
              <div style="column-width: 100; clear: both;">
                <!---------forEach 시작-------------------------------------------------------------------------------------------------------------------------->
                <c:forEach var="board" items="${wishList }">
                  <div class="card" style="width: 18rem;margin-bottom: 15px; display: inline-block; margin-left:10px; ">
                    <img class="card-img-top" src="${board.pd_image }" alt="Card image cap"  style="height:220px; object-fit:cover">
                    <div style="padding: 10px;">
                      <h5 style="margin: 0; font-weight: bold;" id="pd_name">${board.pd_name }</h5>
                      <h5 style="display: none; margin: 0;" class="w_seq">${board.w_seq }</h5>
                      <p style="margin: 0;">${board.pd_startDate } ~ ${board.pd_endDate }</p>
                      <p style="margin: 0; margin-bottom: 10px;">금액 : ${board.pd_price }</p>
                      <input id="test" type="checkbox" name="checkbox_check" class="ckbox" 
                        style="position:absolute; top:10px; left:10px; width: 25px; height: 25px; cursor: pointer; opacity: 0.5;" value="${board.w_seq}">
                      <a href="<%=request.getContextPath()%>/board/detail.do?pd_seq=${board.pd_seq }" class="btn btn-secondary">상세보기</a>
                      <a href="#" onclick="delBtn(${board.w_seq })" class="btn btn-secondary">삭제</a>
                      <p style="display: none"><span id="u_id">${member.u_id}</span> </p>
                    </div>
                  </div>
                </c:forEach> 
                <!---------forEach 끝-------------------------------------------------------------------------------------------------------------------------->
              </div>
                              <!--페이징 tag 시작----------------------------------------------------------------------------------------------------------------------------------------->
                              <div style="margin: auto; width: 240px; margin-bottom: 40px;">
                                <ul class="pagination">
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Previous"
                                            style="color: gray; border:1px solid #ededed">
                                            <span aria-hidden="true">&laquo;</span>
                                            <!-- <span class="sr-only">Previous</span> -->
                                        </a>
                                    </li>
                                    <li class="page-item"><a class="page-link" href="#"
                                            style="color: gray;border:1px solid #ededed">1</a></li>
                                    <li class="page-item"><a class="page-link" href="#"
                                            style="color: gray;border:1px solid #ededed">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#"
                                            style="color: gray;border:1px solid #ededed">3</a></li>
                                    <li class="page-item"><a class="page-link" href="#"
                                            style="color: gray;border:1px solid #ededed">4</a></li>
                                    <li class="page-item"><a class="page-link" href="#"
                                            style="color: gray;border:1px solid #ededed">5</a></li>
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Next"
                                            style="color: gray;border:1px solid #ededed">
                                            <span aria-hidden="true">&raquo;</span>
                                            <!-- <span class="sr-only">Next</span> -->
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <!--페이징 tag 끝----------------------------------------------------------------------------------------------------------------------------------------->
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
          


        //-- 모두선택, 취소 (체크박스)-------------------------------------------------------------------------------------
          $(".check_Choice").click(function() {
            if($("#check_all").prop("id") == "check_all"){
              $("input[name=checkbox_check]:checkbox").prop("checked", true);
              $("#check_all").prop("id", "unCheck_all")
              $("#unCheck_all").val("모두취소")
            }else if($("#unCheck_all").prop("id") == "unCheck_all"){
              $("input[name=checkbox_check]:checkbox").prop("checked", false);
              $("#unCheck_all").prop("id", "check_all")
              $("#check_all").val("모두선택")
            }else{
              console.log("오류 났습니다. 확인 바랍니다.")
            }
          });
          //-- 모두선택, 취소 (체크박스) 끝-------------------------------------------------------------------------------------

          //검색2 ---------------------------------------------------
          $(".keyword").keyup(function () {
              $(".card").hide();
              $(".card:contains(" + $(this).val() + ")").show();
          });
          // 검색2 끝---------------------------------------------------



          
          // const ChkAll = document.querySelector('input[name=agree_all]');

          // ChkAll.addEventListener('change', (e) => {
          //     let agreeChk = document.querySelectorAll('input[name=checkbox_check]');
          //     for (let i = 0; i < agreeChk.length; i++) {
          //         agreeChk[i].checked = e.target.checked;
          //     }
          // });

          
          
          
          
          
          
          
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