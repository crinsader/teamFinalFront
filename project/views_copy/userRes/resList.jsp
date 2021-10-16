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
              <a href="#" class="list-group-item list-group-item-action"
                style="background-color: #343a40; color: white;">마이페이지</a>
              <a href="#" class="list-group-item list-group-item-action">개인정보</a>
              <a href="#" class="list-group-item list-group-item-action">1대1문의</a>
              <a href="#" class="list-group-item list-group-item-action">찜 내역</a>
              <a href="#" class="list-group-item list-group-item-action">예약내역</a>
              <a href="#" class="list-group-item list-group-item-action">Contact Us</a>
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
                  style="height:70px; border-bottom:1px solid #ededed; text-align: center; cursor: pointer;" >
                  <td>${board.ures_seq }</td>
                  <td>${board.pd_startDate } ~ ${board.pd_endDate }</td>
                  <td onclick="location.href='<%=request.getContextPath() %>/userRes/resDetail.do?ures_seq=${board.ures_seq}' ">${board.pd_name }</td>
                  <td>${board.res_price }</td>
                  <td>${board.res_people }</td>
                  <td>${board.pd_startDate }</td>
                  <td style="border-right: 0; width: 150px;">
                    <a href="#" class="btn btn-secondary" data-toggle="modal"
                      data-target="#exampleModalCenter">리뷰작성하기</a>
                  </td>
                </tr>
                </c:forEach> 
                <!---------forEach 끝-------------------------------------------------------------------------------------------------------------------------->
              </table>
            </div>
          </div>
          <!-- Modal 시작--------------------------------------------------------------------------------------------------------------------------------------->
          <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
            aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLongTitle">리뷰를 작성하세요</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
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
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                  <button type="button" class="btn btn-secondary" data-dismiss="modal" onClick = "replyInsert()" >작성완료</button>
                </div>
              </div>
            </div>
          </div>
          <!-- Modal 끝---------------------------------------------------------------------------------------------------------------------------------------->
          <script>
         	function replyInsert(){
         		

         	}
          </script>
          <jsp:include page="../include/footer.jsp"></jsp:include>
    </body>

    </html>