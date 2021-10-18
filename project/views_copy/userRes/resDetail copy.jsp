<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="UTF-8">
      <title>회원예약 상세내역 페이지</title>
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
        .resDetailTab1 th {
          height: 45px;
          background-color: #ededed;
          border-bottom: 1px solid white;
          text-align: center;
        }

        .resDetailTab1 td {
          border-bottom: 1px solid #ededed;
          text-align: center;
        }

        .resDetailTab1 p {
          margin: 0;
          text-align: left;
          margin-left: 20px;
        }

        .resDetailTd1:hover {
          cursor: pointer;
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
              <a href="<%=request.getContextPath() %>/myPage/list.do"
                class="list-group-item list-group-item-action">1대1문의</a>
              <a href="#" class="list-group-item list-group-item-action">찜 내역</a>
              <a href="#" class="list-group-item list-group-item-action">예약내역</a>
            </div>
            <!--  왼쪽 메뉴 끝---------------------------------------------------------------------------------------------->
            <div style="float:right; width:915px; height: auto;">
              <!--  div상단 바---------------------------------------------------------------------------------------------->
              <nav style="margin-top:15px; height: 45px; line-height: 45px; background-color: #ededed; ">
                <a class="navbar-brand" style="font-size: 100%; margin-left: 20px; color: #343a40; font-weight: bold;"
                  href="#">예약내역</a>/<a class="navbar-brand"
                  style="font-size: 100%; margin-left: 20px; color: #343a40; font-weight: bold;" href="#">예약 상세내역</a>
              </nav>
              <!--  div상단 바 끝---------------------------------------------------------------------------------------------->
              <div class="introMenu2" id="introinfo1" style="margin-top: 40px;">
                <!-- 컨텐츠 ---------------------------------------------------------------------------------------------------------------------------------->

                <table class="resDetailTab1" style="width: 100%; margin-top: 40px;">
                  <tr>
                    <td colspan="4" style="text-align: left;">
                      <h5 style="margin-left: 10px; font-weight: bold;">여행상품정보 </h5>

                    </td>
                  </tr>
                  <tr style="border-top: 2px solid #343a40;">
                    <th colspan="2" style="width: 40%;">예약번호</th>
                    <td colspan="2">${userResDetail.ures_seq}</td>
                  </tr>
                  <tr>
                    <th colspan="2">상품명</th>
                    <td class="resDetailTd1" colspan="2"
                      onclick="location.href='<%=request.getContextPath() %>/board/detail.do?pd_seq=${userResDetail.pd_seq}' ">
                      ${userResDetail.pd_name}</td>
                  </tr>
                  <tr>
                    <th colspan="2">상품번호</th>
                    <td class="resDetailTd1" colspan="2"
                      onclick="location.href='<%=request.getContextPath() %>/board/detail.do?pd_seq=${userResDetail.pd_seq}' ">
                      ${userResDetail.pd_seq}</td>
                  </tr>
                  <tr>
                    <th colspan="2">여행기간</th>
                    <td colspan="2">${userResDetail.pd_startDate} ~ ${userResDetail.pd_endDate}</td>
                  </tr>
                  <tr>
                    <th style="width:20%; height: 100px;">총 인원</th>
                    <td>${userResDetail.res_people}</td>
                    <th style="width:20%">추가인원</th>
                    <td>
                      <p>성인 : ${userResDetail.adult_num}</p>
                      <p>18세미만 : ${userResDetail.teenager_num}</p>
                      <p>반려동물 : ${userResDetail.pet_num}</p>
                    </td>
                  </tr>
                  <tr>
                    <th style="width:20%">총 가격</th>
                    <td colspan="3">
                      <h5>${userResDetail.res_price}</h5>
                    </td>
                  </tr>
                </table>

                <table class="resDetailTab1" style="width: 100%; margin-top: 40px;">
                  <tr>
                    <td colspan="2" style="text-align: left;">
                      <h5 style="margin-left: 10px; font-weight: bold;">여행자정보</h5>
                    </td>
                  </tr>
                  <tr style="border-top: 2px solid #343a40;">
                    <th style="width: 40%;">회원ID</th>
                    <td>${userResDetail.u_id}</td>
                  </tr>
                  <tr>
                    <th>여행자명</th>
                    <td>${userResDetail.res_name}</td>
                  </tr>
                  <tr>
                    <th>이메일</th>
                    <td>${userResDetail.res_email}</td>
                  </tr>
                  <tr>
                    <th>휴대폰번호</th>
                    <td>${userResDetail.res_phone}</td>
                  </tr>
                  <tr>
                    <th>요청사항</th>
                    <td>${userResDetail.res_comment}</td>
                  </tr>
                </table>
                <div style="text-align: right;">
                  <a class="btn btn-secondary"
                    href="http://localhost:8088/trip/userRes/list.do?u_id=${userResDetail.u_id}" role="button"
                    style="margin-top:10px; height: 40px; margin-bottom: 10px;">돌아가기</a>
                  <a class="btn btn-secondary" href="http://localhost:8088/trip/reply/list.do" role="button"
                    style="margin-top:10px; height: 40px; margin-bottom: 10px;">댓글 전체보기</a>
                  <a class="btn btn-secondary"
                    href="http://localhost:8088/trip/reply/insert.do?u_id=${userResDetail.u_id}&pd_seq=${userResDetail.pd_seq}"
                    role="button" style="margin-top:10px; height: 40px; margin-bottom: 10px;">댓글쓰기</a>
                  <a class="btn btn-secondary" role="button" onClick="userResDelete(${userResDetail.ures_seq})"
                    style="margin-top:10px; height: 40px; margin-bottom: 10px;">예약 취소하기</a>
                </div>

                <!-- 컨텐츠 끝---------------------------------------------------------------------------------------------------------------------------------->
              </div>
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
              // 왼쪽 메뉴 스크롤 끝---------------------------------------------------------------------

            })

            function userResDelete(ures_seq) {
              var res_confirm = confirm('예약을 취소하시겠습니까?');
              if (!res_confirm) {
                return false;
              } else {
                var uresData = { "ures_seq": ures_seq }
                console.log(uresData)
                $.ajax({
                  url: "http://localhost:8088/trip/userRes/delete.do",
                  type: 'POST',
                  data: uresData,
                  success: function (data) {
                    alert("취소되었습니다!");
                    location.href = "http://localhost:8088/trip/userRes/list.do";
                  },
                  error: function () {
                    alert("에러 발생");
                  }
                });
              }
            }


          </script>
    </body>
    <jsp:include page="../include/footer.jsp"></jsp:include>

    </html>