<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html>
    
    <head>
        <meta charset="UTF-8">
        <title>회원 예약내역 페이지</title>
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
      <c:if test="${sessionScope.u_id != null }">
        <jsp:include page="../include/header2.jsp"></jsp:include>
    </c:if>
    <% // 로그인 처리 -> 로그인 x (로그인페이지 이동)
        String u_id = (String) session.getAttribute("u_id");
        if( u_id != null){
        }else{%>
        <script> alert('로그인이 필요합니다.'); window.location.href = "http://localhost:8088/trip/user/login.do";</script>
        <%}%>
        <div style="margin:auto; width:1100px; min-height: 800px;">
            <!--  왼쪽 메뉴 ---------------------------------------------------------------------------------------------->
            <div class="list-group" id="leftSlide01"
                style="float:left;width:180px; height:600px; margin-top: 15px; position: relative;">
                <a href="#" class="list-group-item list-group-item-action"
                    style="background-color: #ededed; color: #343a40; font-weight: bold;">마이페이지</a>
                <a href="#" class="list-group-item list-group-item-action">개인정보</a>
                <a href="<%=request.getContextPath() %>/myPage/list.do" class="list-group-item list-group-item-action">1대1문의</a>
                <a href="#" class="list-group-item list-group-item-action">찜 내역</a>
                <a href="#" class="list-group-item list-group-item-action">예약내역</a>
            </div>
            <!--  왼쪽 메뉴 끝---------------------------------------------------------------------------------------------->
            <div style="float:right; width:915px; height: 800px;">
                <!--  div상단 바---------------------------------------------------------------------------------------------->
                    <nav style="margin-top:15px; height: 45px; line-height: 45px; background-color: #ededed; ">
                        <a class="navbar-brand"
                            style="font-size: 100%; margin-left: 20px; color: #343a40; font-weight: bold;"
                            href="#">예약내역</a>
                    </nav>
                <!--  div상단 바 끝---------------------------------------------------------------------------------------------->
              <table id="resListTab1" style="width: 100%; margin-top: 40px; border-top:2px solid #343a40">
                <tr style="height: 45px; background-color: #ededed; text-align: center;">
                  <th>예약번호</th>
                  <th>예약날짜</th>
                  <th>상품명</th>
                  <th>총 가격</th>
                  <th>총 인원</th>
                  <th>출발일</th>
                  <th>리뷰</th>
                </tr>
                <!---------forEach 시작-------------------------------------------------------------------------------------------------------------------------->
                <!--아래 onclick 회원 예약 상세 보기 페이지로 설정 해주세요-->
                <c:forEach var="board" items="${userResList }">
                <tr class="risListTr1"
                  style="height:45px; border-bottom:1px solid #ededed; text-align: center; cursor: pointer;" >
                  
                  <td>${board.ures_seq }</td>
                  <td>${board.sysDate}</td>
                  <td onclick="location.href='<%=request.getContextPath() %>/userRes/resDetail.do?ures_seq=${board.ures_seq}' ">${board.pd_name }</td>
                  <td>${board.res_price }</td>
                  <td>${board.res_people }</td>
                  <td>${board.pd_startDate }</td>
                  <td style="border-right: 0; width: 150px;">
                    <a href="#" class="btn btn-secondary" data-bs-toggle="modal"
                      data-bs-target="#exampleModalCenter">리뷰작성</a>
                  </td>
                </tr>
                </c:forEach> 
                <!---------forEach 끝-------------------------------------------------------------------------------------------------------------------------->
                <tr>
                  <td colspan="7" style="height: 10px; background-color: #ededed;"></td>
                </tr>
              </table>
              <!-- 하단 페이징/검색----------------------------------------------------------------------------------------------------------------------->
              <div style="width: 100%; margin-top: 10px; margin-bottom: 40px;" >
               <!--페이징 tag 시작----------------------------------------------------------------------------------------------------------------------------------------->
               <div style="float: left;">
                   <ul class="pagination">
                     <li class="page-item">
                         <c:if test="${pageMaker.prev}">
                           <a class="page-link" href="listPage.do${pageMaker.makeQuery(pageMaker.startPage - 1)}" aria-label="Previous"
                               style="color: gray; border:1px solid #ededed">
                               <span aria-hidden="true">&laquo;</span>
                           </a>
                         </c:if>
                     </li>

                     <li class="page-item">
                       <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
                         <a class="page-link" href="listPage.do${pageMaker.makeQuery(idx)}"
                               style="color: gray;border:1px solid #ededed">${idx}</a>
                       </c:forEach>
                     </li>

                     <li class="page-item">
                         <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                           <a class="page-link" href="listPage.do${pageMaker.makeQuery(pageMaker.endPage + 1)}" aria-label="Next"
                               style="color: gray;border:1px solid #ededed">
                               <span aria-hidden="true">&raquo;</span>
                           </a>
                         </c:if>
                     </li>
                   </ul>
               </div>
               <!--페이징 tag 끝----------------------------------------------------------------------------------------------------------------------------------------->
               <!--검색 -------------------------------------------------------------------------------->
               <div style="float: right;">
                 <div class="input-group mb-3" style="width: 300px; float: left;">
                   <input type="text" class="form-control keyword" placeholder="검색할 단어를 입력하세요"
                       aria-label="Recipient's username" aria-describedby="button-addon2"
                       style="border:1px solid #ededed;">
                   <button class="btn btn-outline-secondary" type="button" id="button-addon2"
                       style="border:1px solid #ededed">검색</button>
                 </div>
               </div>
             <!--검색 -------------------------------------------------------------------------------->
           </div>
         <!-- 하단 페이징/검색 끝----------------------------------------------------------------------------------------------------------------------->
            </div>
          </div>
          <!-- Modal 시작--------------------------------------------------------------------------------------------------------------------------------------->
          <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
            aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLongTitle">리뷰를 작성하세요</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                  <table id="resListTab2" style="width:100%; text-align: center;">
                    <tr style="height: 70px; border-top: 2px solid #343a40">
                      <th>제목</th>
                      <td><input type="text" id = "reply_title" class="form-control" placeholder="제목을 입력하세요"
                          style="height: 60px; border:0;"></td>
                    </tr>
                    <tr>
                      <th>내용</th>
                      <td><textarea class="form-control" id="exampleFormControlTextarea1" rows="10" style="border: 0;"
                          placeholder="내용을 입력하세요"></textarea></td>
                    </tr>
                  </table>
                  <table id="resListTab3"
                    style="width: 100%; text-align: center; margin-top: 15px; border-top: 2px solid #343a40;">
                    <tr style="height: 70px; background-color: #ededed;">
                      <th>아주좋음</th>
                      <th>좋음</th>
                      <th>보통</th>
                      <th>별로</th>
                      <th>최악</th>
                    </tr>
                    <tr style="height: 70px; border-bottom: 1px solid #ededed;" id = "star">
                      <td><input type="radio" name="review1" checked id = "fiveStar"> ★★★★★</td>
                      <td><input type="radio" name="review1" id = "fourStar"> ★★★★☆</td>
                      <td><input type="radio" name="review1" id = "threeStar"> ★★★☆☆</td>
                      <td><input type="radio" name="review1" id = "twoStar"> ★★☆☆☆</td>
                      <td style="border-right: 0;"><input type="radio" name="review1" id = "oneStar"> ★☆☆☆☆</td>
                    </tr>
                  </table>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onClick = "replyInsert()" >작성완료</button>
                </div>
              </div>
            </div>
          </div>
          <!-- Modal 끝---------------------------------------------------------------------------------------------------------------------------------------->
          <script>
            $(document).ready(function () {
    
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
    
         	function replyInsert(){
         		

         	}
          </script>
          <jsp:include page="../include/footer.jsp"></jsp:include>
    </body>

    </html>