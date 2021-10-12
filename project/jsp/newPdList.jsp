<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="UTF-8">
      <title>최근본 상품</title>
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

          <div style="margin: auto;width:915px;">
            <div>
              <nav class="navbar-dark bg-dark" style="margin-top:40px; height: 50px; line-height: 40px;">
                <a class="navbar-brand" style="font-size: 100%; margin-left: 20px;" href="#">최근본 상품</a>
              </nav>
            </div>

            <div style="column-width: 100; margin-top: 40px;">
              <!---------forEach 시작-------------------------------------------------------------------------------------------------------------------------->
              <div class="card" style="width: 18rem;margin-bottom: 15px; display: inline-block; margin-left:10px; ">
                <img class="card-img-top" src="https://ifh.cc/g/dSBquS.jpg" alt="Card image cap">
                <div style="padding: 10px;">
                  <h5 style="margin: 0;">${상품명}</h5>
                  <p style="margin: 0;">${startDate} ~ ${endDate}</p>
                  <p style="margin: 0; margin-bottom: 10px;">${가격}</p>
                  <a href="#" class="btn btn-secondary">Detail</a>
                  <a href="#" class="btn btn-secondary" style="position: absolute; top:10px; right: 10px;">찜</a>
                  <a href="#" class="btn btn-secondary" style="position: absolute; top:49px; right: 10px;">공</a>
                </div>
              </div>
              <div class="card" style="width: 18rem;margin-bottom: 15px; display: inline-block; margin-left:10px; ">
                <img class="card-img-top" src="https://ifh.cc/g/dSBquS.jpg" alt="Card image cap">
                <div style="padding: 10px;">
                  <h5 style="margin: 0;">${상품명}</h5>
                  <p style="margin: 0;">${startDate} ~ ${endDate}</p>
                  <p style="margin: 0; margin-bottom: 10px;">${가격}</p>
                  <a href="#" class="btn btn-secondary">Detail</a>
                  <a href="#" class="btn btn-secondary" style="position: absolute; top:10px; right: 10px;">찜</a>
                  <a href="#" class="btn btn-secondary" style="position: absolute; top:49px; right: 10px;">공</a>
                </div>
              </div>
              <div class="card" style="width: 18rem;margin-bottom: 15px; display: inline-block; margin-left:10px; ">
                <img class="card-img-top" src="https://ifh.cc/g/dSBquS.jpg" alt="Card image cap">
                <div style="padding: 10px;">
                  <h5 style="margin: 0;">${상품명}</h5>
                  <p style="margin: 0;">${startDate} ~ ${endDate}</p>
                  <p style="margin: 0; margin-bottom: 10px;">${가격}</p>
                  <a href="#" class="btn btn-secondary">Detail</a>
                  <a href="#" class="btn btn-secondary" style="position: absolute; top:10px; right: 10px;">찜</a>
                  <a href="#" class="btn btn-secondary" style="position: absolute; top:49px; right: 10px;">공</a>
                </div>
              </div>
              <div class="card" style="width: 18rem;margin-bottom: 15px; display: inline-block; margin-left:10px; ">
                <img class="card-img-top" src="https://ifh.cc/g/dSBquS.jpg" alt="Card image cap">
                <div style="padding: 10px;">
                  <h5 style="margin: 0;">${상품명}</h5>
                  <p style="margin: 0;">${startDate} ~ ${endDate}</p>
                  <p style="margin: 0; margin-bottom: 10px;">${가격}</p>
                  <a href="#" class="btn btn-secondary">Detail</a>
                  <a href="#" class="btn btn-secondary" style="position: absolute; top:10px; right: 10px;">찜</a>
                  <a href="#" class="btn btn-secondary" style="position: absolute; top:49px; right: 10px;">공</a>
                </div>
              </div>
              <div class="card" style="width: 18rem;margin-bottom: 15px; display: inline-block; margin-left:10px; ">
                <img class="card-img-top" src="https://ifh.cc/g/dSBquS.jpg" alt="Card image cap">
                <div style="padding: 10px;">
                  <h5 style="margin: 0;">${상품명}</h5>
                  <p style="margin: 0;">${startDate} ~ ${endDate}</p>
                  <p style="margin: 0; margin-bottom: 10px;">${가격}</p>
                  <a href="#" class="btn btn-secondary">Detail</a>
                  <a href="#" class="btn btn-secondary" style="position: absolute; top:10px; right: 10px;">찜</a>
                  <a href="#" class="btn btn-secondary" style="position: absolute; top:49px; right: 10px;">공</a>
                </div>
              </div>
              <div class="card" style="width: 18rem;margin-bottom: 15px; display: inline-block; margin-left:10px; ">
                <img class="card-img-top" src="https://ifh.cc/g/dSBquS.jpg" alt="Card image cap">
                <div style="padding: 10px;">
                  <h5 style="margin: 0;">${상품명}</h5>
                  <p style="margin: 0;">${startDate} ~ ${endDate}</p>
                  <p style="margin: 0; margin-bottom: 10px;">${가격}</p>
                  <a href="#" class="btn btn-secondary">Detail</a>
                  <a href="#" class="btn btn-secondary" style="position: absolute; top:10px; right: 10px;">찜</a>
                  <a href="#" class="btn btn-secondary" style="position: absolute; top:49px; right: 10px;">공</a>
                </div>
              </div>
              <div class="card" style="width: 18rem;margin-bottom: 15px; display: inline-block; margin-left:10px; ">
                <img class="card-img-top" src="https://ifh.cc/g/dSBquS.jpg" alt="Card image cap">
                <div style="padding: 10px;">
                  <h5 style="margin: 0;">${상품명}</h5>
                  <p style="margin: 0;">${startDate} ~ ${endDate}</p>
                  <p style="margin: 0; margin-bottom: 10px;">${가격}</p>
                  <a href="#" class="btn btn-secondary">Detail</a>
                  <a href="#" class="btn btn-secondary" style="position: absolute; top:10px; right: 10px;">찜</a>
                  <a href="#" class="btn btn-secondary" style="position: absolute; top:49px; right: 10px;">공</a>
                </div>
              </div>
              <div class="card" style="width: 18rem;margin-bottom: 15px; display: inline-block; margin-left:10px; ">
                <img class="card-img-top" src="https://ifh.cc/g/dSBquS.jpg" alt="Card image cap">
                <div style="padding: 10px;">
                  <h5 style="margin: 0;">${상품명}</h5>
                  <p style="margin: 0;">${startDate} ~ ${endDate}</p>
                  <p style="margin: 0; margin-bottom: 10px;">${가격}</p>
                  <a href="#" class="btn btn-secondary">Detail</a>
                  <a href="#" class="btn btn-secondary" style="position: absolute; top:10px; right: 10px;">찜</a>
                  <a href="#" class="btn btn-secondary" style="position: absolute; top:49px; right: 10px;">공</a>
                </div>
              </div>

              <!---------forEach 끝-------------------------------------------------------------------------------------------------------------------------->
            </div>
          </div>
          <script>
            $(document).ready(function () {
            })
          </script>
          <jsp:include page="../include/footer.jsp"></jsp:include>
    </body>

    </html>