<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="UTF-8">
      <title>비회원 예약 상세내역</title>
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

        .resDetNoMemTd1:hover {
          background-color: #f8f9fa;
          cursor: pointer;
        }
      </style>
      <jsp:include page="../include/header2.jsp"></jsp:include>
    </head>

    <body>
      <script type="text/javascript">

      </script>

          <div style="margin: auto;width:915px;">
            <div>
              <nav class="navbar-dark bg-dark" style="margin-top:10px; height: 45px; line-height: 45px;">
                <a class="navbar-brand" style="font-size: 100%; margin-left: 20px;" href="#">비회원 예약 상세내역</a>
              </nav>
            </div>
            <table class="resDetailTab1" style="width: 100%; margin-top: 40px;">
              <tr>
                <td colspan="4" style="text-align: left;">
                  <h5 style="margin-left: 10px; font-weight: bold;">여행상품정보 </h5>

                </td>
              </tr>
              <tr style="border-top: 2px solid #343a40;">
                <th colspan="2" style="width: 40%;">예약번호</th>
                <td colspan="2">${noUserSelectId.res_seq}</td>
              </tr>
              <tr>
                <th colspan="2">상품명</th>
                <td class="resDetNoMemTd1" colspan="2" onclick="location.href='<%=request.getContextPath() %>/board/detail.do?pd_seq=${noUserSelectId.pd_seq}' ">${noUserSelectId.pd_name}</td>
              </tr>
              <tr>
                <th colspan="2">상품번호</th>
                <td class="resDetNoMemTd1" colspan="2" onclick="location.href='<%=request.getContextPath() %>/board/detail.do?pd_seq=${noUserSelectId.pd_seq}' ">${noUserSelectId.pd_seq}</td>
              </tr>
              <tr>
                <th colspan="2">여행기간</th>
                <td colspan="2">${noUserSelectId.pd_startDate} ~ ${noUserSelectId.pd_endDate}</td>
              </tr>
              <tr>
                <th style="width:20%; height: 100px;">총 인원</th>
                <td>${noUserSelectId.res_people}</td>
                <th style="width:20%">추가인원</th>
                <td>
                  <p>성인 : ${noUserSelectId.adult_num}</p>
                  <p>18세미만 : ${noUserSelectId.teenager_num}</p>
                  <p>반려동물 : ${noUserSelectId.pet_num}</p>
                </td>
              </tr>
              <tr>
                <th style="width:20%">총 가격</th>
                <td colspan="3">
                  <h5>${noUserSelectId.res_price}</h5>
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
                <th style="width: 40%;">여행자명</th>
                <td>${noUserSelectId.res_name}</td>
              </tr>
              <tr>
                <th>이메일</th>
                <td>${noUserSelectId.res_email}</td>
              </tr>
              <tr>
                <th>휴대폰번호</th>
                <td>${noUserSelectId.res_phone}</td>
              </tr>
              <tr>
                <th>요청사항</th>
                <td>${noUserSelectId.res_comment}</td>
              </tr>
            </table>
            <div style="text-align: right;">
              <a class="btn btn-secondary" href="http://localhost:8088/trip" role="button"
                style="margin-top:10px; height: 40px; margin-bottom: 10px;">HOME</a>
              <a class="btn btn-secondary"  role="button" onClick = "noUserResDelete(${noUserSelectId.res_seq})"
                style="margin-top:10px; height: 40px; margin-bottom: 10px;">예약취소</a>
            </div>
          </div>
          <script>
            function noUserResDelete(res_seq){
              var res_confirm = confirm('예약을 취소하시겠습니까?');
              if(!res_confirm){
                return false;
              }else{
                var noResData = {"res_seq" : res_seq}
                console.log(noResData)
                $.ajax({
                  url:"http://localhost:8088/trip/noUserRes/delete.do",
                  type:'POST',
                  data: noResData,
                  success:function(data){
                      alert("취소되었습니다!");
                      location.href = "http://localhost:8088/trip/";						            	            
                  },
                  error:function(){
                      alert("에러 발생");
                  }
              });
              }
            }
              </script>
          <jsp:include page="../include/footer.jsp"></jsp:include>
    </body>

    </html>