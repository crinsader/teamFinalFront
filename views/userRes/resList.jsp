<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="UTF-8">
      <title>회원 예약 리스트</title>
      <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
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

        #resListTab1 th,
        #resListTab3 th {
          border-right: 1px solid white;
        }

        #resListTab1 td,
        #resListTab3 td {
          border-right: 1px solid #ededed;
        }

        #resListTab2 th {
          background-color: #ededed;
          border-bottom: 1px solid white;
        }

        #resListTab2 td {
          border-bottom: 1px solid #ededed;
        }

        .risListTr1:hover {
          background-color: #f8f9fa;
        }
      </style>
    </head>

    <body>
      <script type="text/javascript">

      </script>
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
            <div class="list-group" style="float:left;width:180px; height:600px; margin-top: 40px;">
              <a href="http://localhost:8088/trip/user/myPageInfo.do?u_id=${member.u_id}" class="list-group-item list-group-item-action"
                style="background-color: #343a40; color: white;">마이페이지</a>
              <a href="http://localhost:8088/trip/user/myPageInfo.do?u_id=${member.u_id}" class="list-group-item list-group-item-action">개인정보</a>
              <a href="<%=request.getContextPath() %>/myPage/list.do" class="list-group-item list-group-item-action">1대1문의</a>  
              <a href="http://localhost:8088/trip/wishlist/list.do?u_id=${member.u_id}" class="list-group-item list-group-item-action">찜 내역</a>
              <a href="http://localhost:8088/trip/userRes/list.do?u_id=${member.u_id}" class="list-group-item list-group-item-action">예약내역</a>
              <a href="http://localhost:8088/trip/user/contactUs.do" class="list-group-item list-group-item-action">Contact Us</a>
            </div>
            <div style="float:right;width:915px;">
              <div>
                <nav class="navbar-dark bg-dark" style="margin-top:40px; height: 50px; line-height: 40px;">
                  <a class="navbar-brand" style="font-size: 100%; margin-left: 20px;" href="#">예약내역</a>
                </nav>
              </div>
              <table id="resListTab1" style="width: 100%; margin-top: 40px; border-top:2px solid #343a40">
                <tr style="height: 70px; background-color: #ededed; text-align: center;">
                  <th>예약번호</th>
                  <th>예약날짜</th>
                  <th>상품번호</th>
                  <th>상품명</th>
                  <th>총 가격</th>
                  <th>총 인원</th>
                  <th>출발일</th>
                  <th>리뷰</th>
                </tr>
                <!---------forEach 시작-------------------------------------------------------------------------------------------------------------------------->
                <!--아래 onclick 회원 예약 상세 보기 페이지로 설정 해주세요-->
                <c:forEach var="board" items="${userResList }" >
                <tr class="risListTr1"
                  style="height:70px; border-bottom:1px solid #ededed; text-align: center; cursor: pointer;" >
                  
                  <td>${board.ures_seq }</td>
                  <td>${board.pd_startDate } ~ ${board.pd_endDate }</td>
                  <td>${board.pd_seq}</td>
                  <td onclick="location.href='<%=request.getContextPath() %>/userRes/resDetail.do?ures_seq=${board.ures_seq}' ">${board.pd_name }</td>
                  <td>${board.res_price }</td>
                  <td>${board.res_people }</td>
                  <td>${board.pd_startDate }</td>
                  <td style="border-right: 0; width: 150px;">
					
						<c:choose>
							<c:when test="${board.reply_check eq 'ok'}" >
								<a>댓글 완료</a>
							</c:when>
							<c:otherwise>
							<button id = "modal_btn" class="btn btn-secondary" data-toggle="modal" data-target="#exampleModalCenter"> 리뷰작성하기</button><br/>
							</c:otherwise>
						</c:choose>
						
				  
 					
			  		
                  </td>
                </tr>
                </c:forEach> 
                <!---------forEach 끝-------------------------------------------------------------------------------------------------------------------------->
              </table>

            </div>
          </div>

          <!-- Modal 시작--------------------------------------------------------------------------------------------------------------------------------------->
	 <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
	    aria-hidden="true">
	    <div class="modal-dialog modal-dialog-centered" role="document">
	      <div class="modal-content">
	        <div class="modal-header">
	          <h5 class="modal-title" id="exampleModalLongTitle" >리뷰를 작성하세요</h5>
	          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	        </div>
	        <div class="modal-body">
	        	<input type="hidden" id = "modal_pd_seq" />
	        	<input type="hidden" id = "modal_ures_seq" />
	          <table id="resListTab2" style="width:100%; text-align: center;">
	            <tr style="height: 70px; border-top: 2px solid #343a40">
	              <th>제목</th>
	              <td colspan="2"><input type="text" id="reply_title" name = "reply_title" class="form-control" placeholder="제목을 입력하세요"
	                  style="height: 60px; border:0;"></td>
	            </tr>
	            <tr>
	              <th>내용</th>
	              <td colspan="2"><textarea class="form-control" id="reply_content" name = "reply_content" rows="10"
	                  style="border: 0;" placeholder="내용을 입력하세요"></textarea></td>
	            </tr>
	            <tr>
	              <th>별점</th>
	              <td>
	                <div>
	                  <span class="star star01" data-rate="1">★</span><span class="star star02" data-rate="2">★</span><span
	                    class="star star03" data-rate="3">★</span><span class="star star04" data-rate="4">★</span><span
	                    class="star star05" data-rate="5">★</span>
	                </div>
	              </td>
	              <td style="width:20%; border-left:1px solid #ededed; height: 70px;">
	                <span class="starScore starDot"></span><span class="starDot">점</span>
	              </td>
	            </tr>
	          </table>
	
	        </div>
	        <div class="modal-footer">
	          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
	          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onClick="replyInsert()">작성완료</button>
	        </div>
	      </div>
	    </div>
	  </div>
	  <!-- Modal 끝---------------------------------------------------------------------------------------------------------------------------------------->
	
	  <script>

	  
	    function replyInsert() {
	    	
	    	var reply_rate = $('.starScore').text();
	    	//console.log($('#modal_ures_seq').text())
      		var reply_confirm = confirm('작성을 완료하시겠습니까?');
      		if(!reply_confirm){
      			//console.log($('#modal_pd_seq').text())
      			return false;
      		}else{
      			var replyData = {"reply_rate" : reply_rate,
      							"u_id" : '${member.u_id}',
      							"pd_seq" : $('#modal_pd_seq').text(),
      							"reply_title" : $('#reply_title').val(),
      							"reply_content" : $('#reply_content').val(),
      							"ures_seq":$('#modal_ures_seq').text(),
      							
      							}
      			//console.log(replyData)
       			$.ajax({
			        url:"http://localhost:8088/trip/reply/insert.do",
			        type:'POST',
			        data: replyData,
			        success:function(data){
			            location.href = "http://localhost:8088/trip/userRes/list.do";						            	            
			        },
			        error:function(){
			            alert("에러 발생");
			        }
			    }); 
      		}
	
	    }

	    
	    $(document).ready(function () {
			
	    	$('.risListTr1').on('click', function(){
	    		var pd_seq = $(this).children("td:nth-child(3)").text();
	    		var ures_seq = $(this).children("td:nth-child(1)").text();
	    		//console.log(pd_seq)
	    		$('#modal_pd_seq').text(pd_seq);
	    		$('#modal_ures_seq').text(ures_seq);
	    	})
			
	    	
	      //---별점------------------------------------------------------------------------------------------------------------
	      $(".star").on("mouseover", function () {
	        $(this).css("color", "red")
	        $(this).prev().css("color", "red")
	        $(this).prev().prev().css("color", "red")
	        $(this).prev().prev().prev().css("color", "red")
	        $(this).prev().prev().prev().prev().css("color", "red")
	      })
	      $(".star").on("mouseout", function () {
	        if ($(".starScore").text() == "1") {
	          $(".star").css("color", "black")
	          $(".star01").css("color", "red")
	        } else if ($(".starScore").text() == "2") {
	          $(".star").css("color", "black")
	          $(".star01").css("color", "red")
	          $(".star02").css("color", "red")
	        } else if ($(".starScore").text() == "3") {
	          $(".star").css("color", "black")
	          $(".star01").css("color", "red")
	          $(".star02").css("color", "red")
	          $(".star03").css("color", "red")
	        } else if ($(".starScore").text() == "4") {
	          $(".star").css("color", "black")
	          $(".star01").css("color", "red")
	          $(".star02").css("color", "red")
	          $(".star03").css("color", "red")
	          $(".star04").css("color", "red")
	        } else if ($(".starScore").text() == "5") {
	        } else {
	          $(".star").css("color", "black")
	        }
	      })
	      $(".star").on("click", function () {
	        $(".star").css("color", "black")
	        $(".starScore").text($(this).attr("data-rate"))
	        $(this).css("color", "red")
	        $(this).prev().css("color", "red")
	        $(this).prev().prev().css("color", "red")
	        $(this).prev().prev().prev().css("color", "red")
	        $(this).prev().prev().prev().prev().css("color", "red")
	        
	      })
	      //---별점-끝-------------------------------------------------------------------------------------------------------
	
	      // 왼쪽 메뉴 스크롤----------------------------------------------------------------------
	      $(window).scroll(function () {
	        var newpt = $(window).scrollTop() - 60 + "px";
	        if (($("#leftSlide01").offset().top) <= ($(window).scrollTop())) {
	          $("#leftSlide01").css("top", newpt);
	        } else if (($("#leftSlide01").offset().top > $(window).scrollTop())) {
	          $("#leftSlide01").css("top", newpt);
	          if ($(window).scrollTop() <= 60) {
	            $("#leftSlide01").css("top", "0px");
	          }
	        }
	      })
	      // 왼쪽 메뉴 스크롤 끝----------------------------------------------------------------------
	      //검색1 ---------------------------------------------------
	      $(".keyword").keyup(function () {
	        $(".risListTr1").hide();
	        $(".risListTr1:contains(" + $(this).val() + ")").show();
	      });
	      // 검색1 끝---------------------------------------------------
	
	    })
	

  	</script>
          <jsp:include page="../include/footer.jsp"></jsp:include>
    </body>

    </html>