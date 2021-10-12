<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="UTF-8">
      <title>회원정보 변경전 비밀번호 입력</title>
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
        .myPageMenu {
          height: 50px;
          width: 150px;
          border-bottom: 1px solid #ededed;
          line-height: 50px;
          text-align: center;
          margin-left: 10px;
        }

        .passdiv02 {
          width: 895px;
          height: 250px;
          margin-left: 20px;
          text-align: center;

        }

        .passdiv02>img {
          margin-top: 25px;
          width: 600px;
          height: 200px;
        }

        .passdiv03 {
          border: solid rgb(195, 194, 194) 1px;
          width: 895px;
          height: 250px;
          margin-left: 20px;

        }

        .passdiv05 {
          width: 300px;
          height: 250px;
          float: right;
        }

        .btn-warning {
          width: 120px;
          height: 90px;
          margin-top: 80px;
        }

        .btn-success {
          height: 40px;
          width: 350px;
          margin-left: 95px;
          margin-top: 40px;
        }

        .btn-primary {
          height: 40px;
          width: 350px;
          margin-left: 5px;
          margin-top: 40px;
        }

        .passdiv10 {
          clear: both;
          width: 895px;
          height: 150px;
          background-color: rgb(226, 219, 219);
          margin-left: 20px;
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

          <div style="margin:auto; width:1100px; height:800px;">
            <div class="list-group" style="float:left;width:180px; height:600px; margin-top: 40px;">
              <a href="#" class="list-group-item list-group-item-action">마이페이지</a>
              <a href="#" class="list-group-item list-group-item-action"
                style="background-color: #343a40; color: white;">개인정보</a>
              <a href="#" class="list-group-item list-group-item-action">1대1문의</a>
              <a href="#" class="list-group-item list-group-item-action">찜 내역</a>
              <a href="#" class="list-group-item list-group-item-action">예약내역</a>
              <a href="#" class="list-group-item list-group-item-action">Contact Us</a>
            </div>
            <div style="float:right;width:915px;">
              <div class="myPageMenu2" id="myPageinfo1">
                <a class="navbar-brand" style="font-size: 100%;  margin-top: 40px;margin-left: 20px;color: black;"
                  href="#"><strong>비밀번호 인증</strong></a>
                <hr style="margin-left: 20px; height: 3px; background-color: gray;">
                <div class="passdiv02">
                  <img src="http://jjcom0214.cafe24.com/web/OneTrillion/logo02.png">
                </div>
                <div class="passdiv03">
                  <div class="passdiv05"> <button type="button" class="btn btn-warning"><strong>확인</strong></button>
                  </div>
                  <form>
                    <div class="form-group row" style="margin-left:50px;margin-top: 80px;">
                      <label for="staticEmail" class="col-sm-2 col-form-label">Email</label>
                      <div class="col-sm-10">
                        <input type="text" style="width: 200px;" readonly class="form-control-plaintext"
                          id="staticEmail" value="OneTrillion@google.com">
                      </div>
                    </div>
                    <div class="form-group row" style="margin-left:50px;margin-top: 10px;">
                      <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
                      <div class="col-sm-10">
                        <input type="password" class="form-control" id="inputPassword" placeholder="Password">
                      </div>
                    </div>
                  </form>
                </div>
              </div>
              <div class="passdiv10">
                <button type="button" class="btn btn-success">Naver</button><button type="button"
                  class="btn btn-primary">Google</button>
                <p style="margin-left: 95px;margin-top: 5px; font-size: 80%;"><strong>sns로 가입한 고객님은 다시한번 재인증을
                    진행해주세요</strong>
                </p>
              </div>
            </div>
          </div>
          </div>
          <script>





          </script>

          <jsp:include page="../include/footer.jsp"></jsp:include>
    </body>

    </html>