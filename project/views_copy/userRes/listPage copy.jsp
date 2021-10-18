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
                <div class="introMenu2" id="introinfo1" style="margin-top: 40px;">
                    <!-- 컨텐츠 ---------------------------------------------------------------------------------------------------------------------------------->
                    <table id="resListTab1" style="width: 100%; margin-top: 40px; border-top:2px solid #343a40">
                      <tr style="height: 45px; background-color: #ededed; text-align: center;">
                        <th>예약번호</th>
                        <th>예약자명</th>
                        <th>상품번호</th>
                        <th>생년월일</th>
                        <th>이메일</th>
                        <th>핸드폰번호</th>
                        <th>아이디</th>

                      </tr>
                      <!---------forEach 시작-------------------------------------------------------------------------------------------------------------------------->

                      <c:forEach var="board" items="${userResList }">
                      <tr class="risListTr1"
                        style="height:45px; border-bottom:1px solid #ededed; text-align: center; cursor: pointer;" >
                        <td>${board.ures_seq }</td>
                        <td>${board.res_name}</td>
                        <td>${board.pd_seq}</td>
                        <td>${board.res_birth}</td>
                        <td>${board.res_email}</td>
                        <td>${board.res_phone }</td>
                        <td>${board.u_id }</td>

                      </tr>
                      </c:forEach> 
                      <!---------forEach 끝-------------------------------------------------------------------------------------------------------------------------->
                      <tr>
                        <td colspan="7" style="height: 10px; background-color: #ededed;"></td>
                      </tr>
                    </table>
  
    
    
                    <!-- 컨텐츠 끝---------------------------------------------------------------------------------------------------------------------------------->
                </div>
    
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
    
        </script>
    </body>
    <jsp:include page="../include/footer.jsp"></jsp:include>
    
    </html>