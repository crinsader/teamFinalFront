<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <!DOCTYPE html>
      <html>

      <head>
         <meta charset="utf-8">
         <title>키워드로 장소검색하기</title>
         <script src="//code.jquery.com/jquery.min.js"></script>
         <script src="http://code.jquery.com/jquery-latest.min.js"></script> 
         <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> -->
         <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
         <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script> <!-- 카카오톡 공유하기CDN 10/11보영 -->
         <script type="text/javascript"
            src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ca25fe0ce664caec60cfd9ff98deb904&libraries=services"></script>
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">

         <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
            crossorigin="anonymous">
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
         <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
            integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
            crossorigin="anonymous"></script>
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
            integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
            crossorigin="anonymous"></script>
      </head>
      <style>
         .detailDiv002 {
            font-size: 80%;
            color: red;
         }

         #modal_body {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            display: none;
            margin: auto;
            z-index: 2;
         }


         .swiper-slide>img {
            width: 800px;
            height: 550px;
            object-fit: cover;
         }

         .swiper-slide {
            display: flex;
            /* 내용을 중앙정렬 하기위해 flex 사용 */
            align-items: center;
            /* 위아래 기준 중앙정렬 */
            justify-content: center;
            /* 좌우 기준 중앙정렬 */
            background-color: white;
            /* 이 설정을 하지 않으면 슬라이드드가 틀어짐 */
            /* 아래에 있는 실행가능한 소스를 가지고 실험해 보세요 */

         }


         /*< !-- 카톡/페이스북/트위터 공유하기 10-11 한보영-->*/
         .link-icon {
            display: inline-block;
            width: 42px;
            height: 42px;
         }

         .link-icon.twitter {
            background-image: url('https://ifh.cc/g/ORGhzR.png');
            background-repeat: no-repeat;
         }

         .link-icon.facebook {
            background-image: url('https://ifh.cc/g/fshkW4.png');
            background-repeat: no-repeat;
         }

         .link-icon.kakao {
            background-image: url('https://ifh.cc/g/NqDEib.png');
            background-repeat: no-repeat;
         }

         /* 모달창(관리자 삭제/수정) css----------------------------------------------------------------------------------------------------------------------------------- */
         #conBox>table>tbody>tr>td>input {
            border: 0;
            width: 100%;
            height: 100%;
            background-color: #FcFcFc;
            text-align: center;
         }

         #conBox>table>tbody>tr>td {
            background-color: #F7F7F7;
            text-align: center
         }

         #conBox>table>tbody>tr>td>button {
            border: 0;
            width: 18%;
            height: 100%;
            background-color: black;
            color: white;
         }

         #conBox>table>tbody>tr>td>button:hover {
            cursor: pointer;
            color: red;
         }

         /* 모달창 css 끝----------------------------------------------------------------------------------------------------------------------------------- */
         #detailDivCon001 table:nth-child(2) td,
         #detailDivCon001 table:nth-child(3) td {
            width: 25%;
            height: 45px;
            border-bottom: 1px solid #ededed;
         }

         #detailDivCon001 table:nth-child(2) td:nth-child(1) {
            background-color: #ededed;
         }


         #detailDivCon001 table:nth-child(2) div {
            margin-left: 10px;
         }

         #detailDivCon001 table:nth-child(3) tr:nth-child(1) td {
            background-color: #ededed;
         }

         #detailDivCon001 table:nth-child(5) td:nth-child(1) {
            height: 150px;
            width: 2%;
            background-color: #ededed;
         }

         #detailDivCon001 table:nth-child(5) td:nth-child(2) {
            width: 23%;
            border-right: 1px solid #ededed;
            text-align: center;
         }

         #detailDivCon001 table:nth-child(5) div {
            margin: 10px;
         }

         #detailDivCon001 table:nth-child(5) td {
            border-bottom: 1px solid #ededed;
         }


         #detailDivCon001 table:nth-child(7) div {
            margin: 10px;
            margin-left: 50px;
         }

         #detailDivCon001 table:nth-child(9) div {
            margin: 10px;
            margin-left: 50px;
         }

         #detailDivCon001 table {
            border-top: 2px solid #343a40;
            width: 100%;
            margin-top: 10px;

         }

         #detailTableCon001 td {
            padding: 10px;
         }

         .form-select {
            height: 45px;
         }

         .input-group {
            height: 45px;
            margin-bottom: 10px;

         }

         .input-group-text {
            font-size: 80%;
            width: 60px;
            padding: 0;
            padding-left: 3px;
         }

         .form-control {
            background-color: black;
         }

         #detailTab001 td {
            padding: 20px;
         }
      </style>

      <body>
         <jsp:include page="../include/header2.jsp"></jsp:include>
         <div style="margin:auto; width: 1300px;margin-top: 40px;">
            <input type="hidden" id="u_id" value="${member.u_id }">
            <div style="margin: auto; width: 1300px; height: auto;">
               <div style="margin:auto; width:1300px; height:550px;">
                  <!-- swiper 부분-->
                  <div style="float:left; width: 800px;">
                     <div class="swiper-container">
                        <div class="swiper-wrapper">
                           <div class="swiper-slide"><img src="${image.image01 }"></div>
                           <div class="swiper-slide"><img src="${image.image02 }"></div>
                           <div class="swiper-slide"><img src="${image.image03 }"></div>
                           <div class="swiper-slide"><img src="${image.image04 }"></div>
                           <div class="swiper-slide"><img src="${image.image05 }"></div>
                        </div>
                        <!-- 네비게이션 버튼 지정 -->
                        <div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
                        <div class="swiper-button-prev"></div><!-- 이전 버튼 -->
                     </div>
                  </div>
                  <!-- swiper 부분끝-->
                  <div style="float: left; width:500px;height: 550px; padding: 20px; padding-top: 0;">
                     <!-- 1-->
                     <div style="height: 55px; width: 100%;">
                        <div style="float: left;">
                           <h5>상품번호 : ${dto.pd_seq }</h5>
                        </div>
                        <div style="float: right;">
                           <h5>조회수 : ${dto.pd_cnt }회</h5>
                        </div>
                     </div>
                     <!-- 2-->
                     <div style="height: 125px; width: 100%;">
                        <h2 style="clear: both;">[OneTrillion 독점]${dto.pd_name }</h2>
                     </div>
                     <!-- 3-->
                     <div style="height: 110px; width: 100%;">
                        <h4>#${dto.pd_name } #${dto.pd_name } #${dto.pd_name } #${dto.pd_name }</h4>
                     </div>
                     <!-- 5-->
                     <div style="height: 35px; width: 100%;">
                        <h5>${dto.pd_startDate } ~ ${dto.pd_endDate }</h5>
                     </div>
                     <!-- 5-->
                     <div style="height: 90px; width: 100%;">
                        <hr>
                        <div style="float: left;  margin-bottom: 10px;">
                           <h5>리뷰 : (포이치로 전체 리뷰 개수 구현)</h5>
                        </div>
                        <div style="float: right;  margin-bottom: 10px;">
                           <h5>(포이치로 전체 평점 평균)/ 5</h5>
                        </div>
                        <hr style="clear: both;">
                     </div>
                     <!-- 6-->
                     <div style="height: 100px; width: 100%;">
                        <div>
                           <h5 style="float: right;"><br>
                              성인 ${dto.pd_people}</h5>
                        </div>
                        <div>
                           <h2 style=" clear:both; float: right;">${dto.pd_price} 원</h2>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>


         <div style="margin:auto;width:1300px;height:auto; margin-top: 10px; ">
            <div
               style="border: 1.25px solid rgb(206, 212, 218); border-radius: 5px; background-color: white; width: 230px;position:sticky; top:10px; float:right; padding: 10px;">
               <h5 style="text-align: center; font-weight: bold;">${dto.pd_name }</h5>
               <hr style="margin-top: 10px; margin-bottom: 10px;" />
               <div>
                  <div class="input-group">
                     <span class="input-group-text" id="basic-addon1"
                        style="padding-left: 7px;">출&nbsp;&nbsp;&nbsp;&nbsp;발</span>
                     <input type="text" class="form-control" value="${dto.pd_startDate }" disabled readonly>
                  </div>
               </div>

               <div>
                  <div class="input-group">
                     <span class="input-group-text" id="basic-addon1"
                        style="padding-left: 7px;">도&nbsp;&nbsp;&nbsp;&nbsp;착</span>
                     <input type="text" class="form-control" value="${dto.pd_endDate }" disabled readonly>
                  </div>
               </div>
               <div>
                  <div class="input-group">
                     <span class="input-group-text" id="basic-addon1"
                        style="padding-left: 7px;">인&nbsp;&nbsp;&nbsp;&nbsp;원</span>
                     <input type="text" class="form-control" value="${dto.pd_people }" disabled readonly>
                  </div>
               </div>
               <div>
                  <div class="input-group">
                     <span class="input-group-text" id="basic-addon1"
                        style="padding-left: 7px;">금&nbsp;&nbsp;&nbsp;&nbsp;액</span>
                     <input type="text" class="form-control" value="${dto.pd_price }" disabled readonly>
                  </div>
               </div>
               <hr style="margin-top: 10px; margin-bottom: 5px;" />
               <div>
                  <div class="detailDiv002" id="detailDiv003" style="float: right;">${dto.adult_price }</div>
                  <div id="detailDiv007" class="input-group">
                     <span class="input-group-text" id="basic-addon1"
                        style="padding-left: 7px;">성&nbsp;&nbsp;&nbsp;&nbsp;인</span>
                     <select id="sel_adault" class="form-select" aria-label="Default select example">
                        <option value="0">0</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                     </select>
                  </div>
               </div>
               <div>
                  <div class="detailDiv002" id="detailDiv004" style="float: right;">${dto.teenager_price}</div>
                  <div id="detailDiv008" class="input-group">
                     <span class="input-group-text" id="basic-addon1">18세미만</span>
                     <select id="sel_young" class="form-select" aria-label="Default select example">
                        <option value="0">0</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                     </select>
                  </div>
               </div>
               <div>
                  <div class="detailDiv002" id="detailDiv005" style="float: right;">${dto.pet_price }</div>
                  <div id="detailDiv009" class="input-group">
                     <span class="input-group-text" id="basic-addon1">반려동물</span>
                     <select id="sel_pet" class="form-select" aria-label="jDefault select example">
                        <option value="0">0</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                     </select>
                  </div>
               </div>

               <hr style="margin-top: 10px; margin-bottom: 10px;" />
               <div>
                  <div class="input-group">
                     <span class="input-group-text" id="basic-addon1">추가인원</span>
                     <input id="detailDiv006_1" type="text" class="form-control" value="0" disabled readonly>
                  </div>
               </div>
               <div>
                  <div class="input-group">
                     <span class="input-group-text" id="basic-addon1">추가금액</span>
                     <input id="detailDiv006" type="text" class="form-control" value="0" disabled readonly>
                  </div>
               </div>
               <div>
                  <div class="input-group">
                     <span class="input-group-text" id="basic-addon1">총 &nbsp;&nbsp;합계</span>
                     <input id="detailDiv006_2" type="text" class="form-control" value="${dto.pd_price}" disabled
                        readonly>
                  </div>
               </div>
               <hr style="margin-top: 10px; margin-bottom: 10px;" />
               <div>
                  <input type="button" class="btn btn-secondary"
                     style="width: 100%; height: 45px; margin-bottom: 5px;" onclick="If_User()" value="예약하기" />
               </div>
               <div>
                  <input type="button" class="btn btn-secondary"
                     style="width: 100%; height: 45px; margin-bottom: 5px;" onclick="If_NoUser()"
                     value="비회원 예약하기" />
               </div>
               <div>
                  <input type="button" class="btn btn-secondary"
                     style="width: 100%; height: 45px; margin-bottom: 5px;" onclick="Wish_Click()" value="찜" />
               </div>
               <div style="height: 45px; width: 100%; margin-top: 5px;">
                  <div id="test001" style="margin: auto; width: 160px;">
                     <a id="btnTwitter" class="link-icon twitter" href="javascript:shareTwitter();"></a>
                     <a id="btnFacebook" class="link-icon facebook" href="javascript:shareFacebook();"
                        style="margin-left:10px"></a>
                     <a id="btnKakao" class="link-icon kakao" href="javascript:shareKakao();"
                        style="margin-left:10px"></a>
                  </div>
               </div>
            </div>

            <div id="map"
               style="margin: auto;margin-left:0; width: 1060px; height: 500px;background-color: #F7F7F7">
               여기는지도에요</div> <!-- 지  도 -->

            <!-- 컨텐츠 -------------------------------------------------------------------------------------------------------------------------------------->
            <div id="detailDivCon001"
               style="margin: auto; width: 1060px; height: 100%;margin-left:0; margin-bottom: 40px;">
               <img src="http://jjcom0214.cafe24.com/web/OneTrillion/covid.jpg"
                  style="width:100%; margin-top: 10px;" />
               <table style=" border-bottom: 1px solid #ededed;">
                  <tr>
                     <td>
                        <div>여행기간</div>
                     </td>
                     <td colspan="3">
                        <div>${dto.pd_startDate } ~ ${dto.pd_endDate } (${period}박 ${period2}일)</div>
                     </td>
                  </tr>
                  <tr>
                     <td>
                        <div>이용교통</div>
                     </td>
                     <td>
                        <div>버스</div>
                     </td>
                     <td style="background-color: #ededed">
                        <div>방문도시</div>
                     </td>
                     <td>
                        <div>${dto.pd_location }</div>
                     </td>
                  </tr>
                  <tr>
                     <td>
                        <div>최소인원</div>
                     </td>
                     <td colspan="3">
                        <div>${dto.pd_people } 추가인원 가능</div>
                     </td>
                  </tr>
               </table>
               <table style="text-align: center;">
                  <tr>
                     <td>구분</td>
                     <td>성인</td>
                     <td>18세미만</td>
                     <td>반려동물</td>
                  </tr>
                  <tr>
                     <td>추가비용(1인당)</td>
                     <td>${dto.adult_price }원</td>
                     <td>${dto.teenager_price }원</td>
                     <td>${dto.pet_price }원</td>
                  </tr>
               </table>
               <h4 style="margin-top:40px;margin-left:10px; font-weight: bold;">중요사항</h4>
               <table>
                  <tr>
                     <td></td>
                     <td>전달사항</td>
                     <td>
                        <div>* 실시간 예약으로 진행하는 상품이므로, 예약접수가 마감될 수 있습니다.</div>
                     </td>
                  </tr>
                  <tr>
                     <td></td>
                     <td>포함사항</td>
                     <td>
                        <div>* OneTrillion 전박 숙박요금(2인실 기준)</div>
                        <div>* ${dto.pd_name } 버스 이용요금(2인 기준)</div>
                        <div>* 호텔 내 조식(2인 기준)</div>
                     </td>
                  </tr>
                  <tr>
                     <td></td>
                     <td>비포함사항</td>
                     <td>
                        <div>* 조식외 식사 및 개인경비</div>
                     </td>
                  </tr>
               </table>
               <h4 style="margin-top:40px;margin-left:10px; font-weight: bold;">약관/취소수수료</h4>
               <table style="border-bottom:1px solid #ededed;">
                  <tr>
                     <td>
                        <div>&nbsp</div>
                        <div>국내여행 표준약관(제5조)에 의하여 자체 특별약관이 적용됩니다.</div>
                        <div>★취소규정일 전에도 항공선발권으로 인하여 취소수수료가 발생될수있습니다. (1인 3만원)</div>
                        <div>★취소 및 접수는 업무 특성상 영업시간(월~금: 09:00~18:00)에만 가능하십니다.</div>
                        <div>(※토,일 및 공휴일 날짜계산에서 제외 및 접수불가 합니다)</div>
                        <div>&nbsp</div>
                        <div>1. 여행 취소 및 환불 규정</div>
                        <div>- 여행개시 7일전 취소 : 전액 환불</div>
                        <div>- 여행개시 6~5일전 취소 : 여행경비의 70% 환불</div>
                        <div>- 여행개시 4~3일전 취소 : 여행경비의 50% 환불</div>
                        <div>- 여행개시 2일전 취소 : 여행경비 전액 환불 불가</div>
                        <div>&nbsp</div>
                        <div>2. 연휴 및 성수기출발 상품은 취소 및 환불 규정은 별도 책정됩니다.</div>
                        <div>- 여행개시 출발 15일전 취소 : 전액 환불/출발 날짜 변경 가능</div>
                        <div>- 여행개시 출발 13일전 취소 : 여행경비의 80% 환불</div>
                        <div>- 여행개시 출발 11일전 취소 : 여행경비의 70% 환불</div>
                        <div>- 여행개시 출발 09일전 취소 : 여행경비의 50% 환불</div>
                        <div>- 여행개시 출발 07일전 취소 : 출발 날짜 변경 불가/여행경비 전액 환불 불가</div>
                        <div>&nbsp</div>
                     </td>
                  </tr>
               </table>
               <h4 style="margin-top:40px;margin-left:10px; font-weight: bold;">여행일정</h4>
               <table id="detailTableCon001" style="border-bottom:1px solid #ededed;">
                  <tr>
                     <td>
                        <!-- <div>&nbsp</div>
                  <div>★ ${dto.pd_name }</div>
                  <div>${dto.pd_name }의 사계절과 문화유산을 담은 곳으로 보문호수를 배경으로 진정한 휴식과 쉼을 주는 호텔</div>
                  <div>부대시설: F&B 레스토랑, 실내외 수영장, 키즈라운지 등</div>
                  <div>&nbsp</div>
                  <div>★ ${dto.pd_name } 시티투어</div>
                  <div>1, 세계문화유산투어</div>
                  <div>코스: 승차-무열왕릉-대릉원(천마총)-분황사-석굴암-불국사-하차</div>
                  <div>*운행일: 매일</div>
                  <div>*소요시간: 7~8시간</div>
                  <div>*최소출발인원: 15명 (인원미달로 취소시 전날 15시까지 연락드립니다)</div>
                  <div>*픽업시간: 호텔앞 오전 09:50 셔틀버스 출발 예정</div>
                  <div>&nbsp</div>
                  <img style="width:1050px;" src="http://jjcom0214.cafe24.com/web/OneTrillion/detail01.png"
                     alt="" />
                  <div>&nbsp</div>
                  <div>2, ${dto.pd_name } 야간투어</div>
                  <div>코스: 승차-동궁과 월지-첨성대-계림-교촌마을-월정교-하차</div>
                  <div>*운행일: 매일</div>
                  <div>*시간: 18:30~22:00</div>
                  <div>*최소출발인원: 15명 (인원미달로 취소시 전날 16시 이후 연락드립니다)</div>
                  <div>*픽업시간: 호텔앞 오전 19:15 셔틀버스 출발 예정</div>
                  <div>&nbsp</div>
                  <img style="width:1050px;" src="http://jjcom0214.cafe24.com/web/OneTrillion/detail02.png"
                     alt="" />
                  <div>&nbsp</div> -->
                        <div>${pd_content1}</div>
                     </td>
                  </tr>
                  <tr>
                     <td><img style="width:1050px;" src="${pd_image1}" alt="" /></td>
                  </tr>
                  <tr>
                     <td>
                        <div>${pd_content2}</div>
                     </td>
                  </tr>
                  <tr>
                     <td><img style="width:1050px;" src="${pd_image2}" alt="" /></td>
                  </tr>
                  <tr>
                     <td>
                        <div>${pd_content3}</div>
                     </td>
                  </tr>
                  <tr>
                     <td><img style="width:1050px;" src="${pd_image3}" alt="" /></td>
                  </tr>
                  <tr>
                     <td>
                        <div>${pd_content4}</div>
                     </td>
                  </tr>
                  <tr>
                     <td><img style="width:1050px;" src="${pd_image4}" alt="" /></td>
                  </tr>
                  <tr>
                     <td>
                        <div>${pd_content5}</div>
                     </td>
                  </tr>
                  <tr>
                     <td><img style="width:1050px;" src="${pd_image5}" alt="" /></td>
                  </tr>
               </table>
               <h4 style="margin-top:40px;margin-left:10px; font-weight: bold;">고객리뷰</h4>
               <table id="resListTab1" style="width: 100%; border-top:2px solid #343a40">
                  <tr style="height: 45px; background-color: #ededed; text-align: center;">
                     <th style="width: 60%;">제목</th>
                     <th>평점</th>
                     <th>닉네임</th>
                     <th>날짜</th>
                  </tr>
                  <!---------forEach 시작-------------------------------------------------------------------------------------------------------------------------->
                  <!--아래 onclick 회원 예약 상세 보기 페이지로 설정 해주세요-->
                  <c:forEach var="board" items="${replyPdDetail }">
                     <tr class="detailRevTr01"
                        style="height:45px; border-bottom:1px solid #ededed; text-align: center; cursor: pointer;">

                        <td>${board.reply_title }</td>
                        <td>
                           <span class="star star01" data-rate="1">★</span><span class="star star02"
                              data-rate="2">★</span><span class="star star03" data-rate="3">★</span><span
                              class="star star04" data-rate="4">★</span><span class="star star05"
                              data-rate="5">★</span> <span class="starScore">${board.reply_rate}</span>/5
                        </td>
                        <td>${board.u_id}</td>
                        <td>${board.reply_date }</td>
                     </tr>
                     <tr style="height:45px; display: none; border-bottom: 2px solid #343a40;">
                        <td colspan="4" style="padding-left: 20px;">${board.reply_content}</td>
                     </tr>
                  </c:forEach>
                  <!---------forEach 끝-------------------------------------------------------------------------------------------------------------------------->
                  <tr>
                     <td colspan="4" style="height: 10px; background-color: #ededed;"></td>
                  </tr>
               </table>
               <!-- 하단 페이징/검색----------------------------------------------------------------------------------------------------------------------->
               <div style=" margin: auto; width: 150px; margin-top: 10px; margin-bottom: 40px;">
                  <ul class="pagination">
                     <li class="page-item">
                        <c:if test="${pageMaker.prev}">
                           <a class="page-link"
                              href="listPage.do${pageMaker.makeQuery(pageMaker.startPage - 1)}"
                              aria-label="Previous" style="color: gray; border:1px solid #ededed">
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
                           <a class="page-link" href="listPage.do${pageMaker.makeQuery(pageMaker.endPage + 1)}"
                              aria-label="Next" style="color: gray;border:1px solid #ededed">
                              <span aria-hidden="true">&raquo;</span>
                           </a>
                        </c:if>
                     </li>
                  </ul>
               </div>
               <!-- 하단 페이징/검색 끝----------------------------------------------------------------------------------------------------------------------->
            </div>
               <div id="modal_body">
      <!-- 수정 및 삭제 -->
      <div id="conBox" style = "display: none">
         <table
            style="margin: 100px auto; background-color: white; height: 700px; box-shadow: 0 0 20px; border-radius: 20px;"
            border="1px solid black">
            <tr>
               <th width="200px" style="border-radius: 20px 0 0 0;">번호</th>
               <td colspan="2" style="border-radius: 0 20px 0 0;">
                  ${dto.pd_seq}<input type="hidden" id="pd_seq"
                  value="${dto.pd_seq }">
               </td>
            </tr>
            <tr>
               <th>상품이름</th>
               <td width="300px">${dto.pd_name}</td>
               <!--  상단노출 -->
               <td width="300px"><input class="inputBox" id="pd_name"
                  value="${dto.pd_name}"></td>
            </tr>
            <tr>
               <th>가격</th>
               <td>${dto.pd_price}</td>
               <!--  상단노출 -->
               <td><input class="inputBox" id="pd_price"
                  value="${dto.pd_price}"></td>
            </tr>
            <tr>
               <th>지도키워드</th>
               <td>${dto.pd_keyword}</td>
               <!--  비노출 -->
               <td><input class="inputBox" id="pd_keyword"
                  value="${dto.pd_keyword}"></td>
            </tr>
            <tr>
               <th>여행 시작일</th>
               <td>${dto.pd_startDate}</td>
               <!-- 우측 배너 -->
               <td><input class="inputBox" type="date" id="pd_startDate"
                  value="${dto.pd_startDate}"></td>
            </tr>
            <tr>
               <th>여행 완료일</th>
               <td>${dto.pd_endDate}</td>
               <!--  우측 배너 -->
               <td><input class="inputBox" type="date" id="pd_endDate"
                  value="${dto.pd_endDate}"></td>
            </tr>
            <tr>
               <th>조회수</th>
               <td>${dto.pd_cnt}</td>
               <!--  상단노출 -->
               <td><input class="inputBox" id="pd_cnt" value="${dto.pd_cnt}"></td>
            </tr>
            <tr>
               <th>상품 테마</th>
               <td>${dto.pd_theme}</td>
               <!--  상단노출 -->
               <td><input class="inputBox" id="pd_theme"
                  value="${dto.pd_theme}"></td>
            </tr>
            <tr>
               <th>예약 사람</th>
               <td>${dto.pd_people}</td>
               <!--  우측배너 -->
               <td><input class="inputBox" id="pd_people"
                  value="${dto.pd_people}"></td>
            </tr>
            <tr>
               <th>이미지 사진</th>
               <td>${dto.pd_image}</td>
               <!--  상단노출 -->
               <td><input class="inputBox" id="pd_image"
                  value="${dto.pd_image}"></td>
            </tr>

            <tr>
               <th>상품내용</th>
               <td>${dto.pd_content1}</td>
               <!--  하단노출 -->
               <td><input class="inputBox" id="pd_content1"
                  value="${dto.pd_content1}"></td>
            </tr>
            <tr>
               <td colspan="3" style="border-radius: 0 0 20px 20px;">
                  <button onclick="location.href='modify.do?pd_seq=${dto.pd_seq }' ">수정페이지</button>
                  <button id="btn_modify">수정하기</button>
                  <button id="btn_modifyokay">수정완료</button>
                  <button class="btn_delete">삭제</button>
                  <button id="btn_close">닫기</button>
               </td>
            </tr>
         </table>
      </div>
   </div>
   <!-- 모달창 끝----------------------------------------------------------------------------------------------------------------------------------------------->
            <script> //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-= [Front_script]
               $(document).ready(function () {

                  var option03 = $('#detailDiv007 select').val();
                  var option04 = $('#detailDiv008 select').val();
                  var option05 = $('#detailDiv009 select').val();

                  $("#detailDiv006").val((${ dto.adult_price } * option03) + (${ dto.teenager_price } * option04) + (${ dto.pet_price } * option05));

               $('#detailDiv007 select').on('change', function () {
                  $("#detailDiv006").val((${ dto.adult_price } * $(this).val()) + ($('#detailDiv008 select').val() * ${ dto.teenager_price }) + ($('#detailDiv009 select').val() * ${ dto.pet_price }));
               $("#detailDiv006_1").val(($(this).val() * 1) + ($('#detailDiv008 select').val() * 1) + ($('#detailDiv009 select').val() * 1));
               $("#detailDiv006_2").val(${ dto.pd_price } + ($("#detailDiv006").val() * 1));
                     });

               $('#detailDiv008 select').on('change', function () {
                  $("#detailDiv006").val((${ dto.teenager_price } * $(this).val()) + ($('#detailDiv007 select').val() * ${ dto.adult_price }) + ($('#detailDiv009 select').val() * ${ dto.pet_price }));
               $("#detailDiv006_1").val(($(this).val() * 1) + ($('#detailDiv007 select').val() * 1) + ($('#detailDiv009 select').val() * 1));
               $("#detailDiv006_2").val(${ dto.pd_price } + ($("#detailDiv006").val() * 1));
                     });

               $('#detailDiv009 select').on('change', function () {
                  $("#detailDiv006").val((${ dto.pet_price } * $(this).val()) + ($('#detailDiv007 select').val() * ${ dto.adult_price }) + ($('#detailDiv008 select').val() * ${ dto.teenager_price }));
               $("#detailDiv006_1").val(($(this).val() * 1) + ($('#detailDiv007 select').val() * 1) + ($('#detailDiv008 select').val() * 1));
               $("#detailDiv006_2").val(${ dto.pd_price } + ($("#detailDiv006").val() * 1));
                     });




               $(".detailRevTr01").on("click", function () { //고객리뷰 내용 숨김/보기
                  if ($(this).next().css("display") == "none") {
                     $(this).next().show()
                  } else {
                     $(this).next().hide()
                  }

               })

               if ($(".starScore").text() == "1") { // 별점 표시
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

         }); //document 함수 끝




            </script>
            <script>  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-= [Back_script]


               const u_id = $("#u_id").val().trim();


               //2021. 10. 11 19:00 현성 - 비회원으로 예약하기 임시로 만들어놨습니다
               function If_NoUser() {

                  const pd_seq = $("#pd_seq").val().trim();
                  const pd_name = $("#pd_name").val().trim();
                  //값 예약 페이지로 넘기기 
                  var sel_adault = $("#sel_adault option:selected").val();
                  var sel_young = $("#sel_young option:selected").val();
                  var sel_pet = $("#sel_pet option:selected").val();
                  var total_price = $("#detailDiv006_2").val();
                  var allData = { "pd_seq": pd_seq, "sel_adault": sel_adault, "sel_young": sel_young, "sel_pet": sel_pet, "total_price": total_price };
                  //console.log(allData);

                  $.ajax({
                     url: "noUserReservation.do",
                     type: 'GET',
                     data: allData,
                     success: function () {
                        var confirmRSV = confirm(pd_seq + '번 [ ' + pd_name + ' ] 상품을 예약시겠습니까?');

                        if (!confirmRSV) {
                           return false;
                        } else {
                           location.href = "./noUserReservation.do?pd_seq=" + pd_seq + "&sel_adault=" + sel_adault +
                              "&sel_young=" + sel_young + "&sel_pet=" + sel_pet + "&total_price=" + total_price;
                        }
                     },
                     error: function (jqXHR, textStatus, errorThrown) {
                        alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
                     }
                  });

               }//비회원예약하기 끝


               function If_User() {

                  const pd_seq = $("#pd_seq").val().trim();
                  const pd_name = $("#pd_name").val().trim();
                  var u_id = $("#u_id").val();
                  console.log(u_id);

                  if (u_id == "") {
                     alert("로그인이 필요합니다.");
                     location.href = "./../user/login.do";
                  } else if (u_id == "${userDTO.u_id}") {

                     alert('이미 예약한 상품입니다!');
                     location.href = "http://localhost:8088/trip/userRes/list.do?u_id=" + u_id;
                  }
                  //else if(u_id.equals('admin')){ //만약 아이디가 admin 이면 (관리자)           
                  //}
                  else {
                     //값 예약 페이지로 넘기기 
                     var sel_adault = $("#sel_adault option:selected").val();
                     var sel_young = $("#sel_young option:selected").val();
                     var sel_pet = $("#sel_pet option:selected").val();
                     var total_price = $("#detailDiv006_2").val();
                     var allData = { "pd_seq": pd_seq, "u_id": u_id, "sel_adault": sel_adault, "sel_young": sel_young, "sel_pet": sel_pet, "total_price": total_price }; //아이디랑 인원 담고
                     console.log(allData);

                     $.ajax({
                        url: "reservation.do",
                        type: 'GET',
                        data: allData,
                        success: function () {
                           var confirmRSV = confirm(pd_seq + '번 [ ' + pd_name + ' ] 상품을 예약시겠습니까?');

                           if (!confirmRSV) {
                              return false;
                           } else {
                              location.href = "./reservation.do?pd_seq=" + pd_seq +
                                 "&u_id=" + u_id + "&sel_adault=" + sel_adault +
                                 "&sel_young=" + sel_young + "&sel_pet=" + sel_pet + "&total_price=" + total_price;
                           }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                           alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
                        }
                     });//ajax 끝  

                  } //else 끝



               }//If_User 함수 끝 =======================================================================(끝)9/12 추가





               // 10/14 이희연 찜기능 구현 완료 
               function Wish_Click(){  
                  const pd_seq = $("#pd_seq").val().trim();
                  const pd_name = $("#pd_name").val().trim();
                  const u_id = $("#u_id").val();
                  const pd_price = $("#pd_price").val().trim();
                  const pd_startDate = $("#pd_startDate").val();
                  const pd_endDate = $("#pd_endDate").val();
                  const pd_image = $("#pd_image").val().trim();
                  
                  var Like_confirm = confirm(pd_seq+'번 [ '+pd_name+' ] 상품을 찜하시겠습니까?');
                  
                  if(!Like_confirm){
                     return false; // 아니오
                  }else{ // 예
                     if(u_id == "" ){ // 미로그인 시
                        alert("찜 하기위해서 로그인이 필요합니다.");
                        location.href = "http://localhost:8088/trip/user/login.do";
                      } else if (u_id == "${wDto.u_id}"){ // wishlist 상품 중복여부 판단
                         alert('이미 찜 한 상품입니다!');
                         location.href = "http://localhost:8088/trip/wishlist/list.do?u_id="+u_id;
                      } else{   
                        $.ajax({
                           url : "http://localhost:8088/trip/wishlist/wishlist.do",
                           type : "GET",
                           data : { "pd_seq":pd_seq, 
                                 "u_id":u_id, 
                                 "pd_name":pd_name,
                                 "pd_startDate" : pd_startDate,
                                 "pd_endDate" : pd_endDate,
                                 "pd_price" : pd_price,
                                 "pd_image" : pd_image
                           },
                           success : function(data, status){
                              if(status == 'success'){
                                 var confirm_again = confirm('찜 목록에 담겼습니다. 찜 목록으로 이동하시겠습니까?');
                                 if(!confirm_again){ //아니오
                                    return false;
                                 }else{
                                    location.href = "http://localhost:8088/trip/wishlist/list.do?u_id="+u_id;    
                                 }//내부(2) if문 - 찜목록 이동? 안이동?
                                       
                              }else{
                                 alert("이미 찜에 등록된 상품입니다.");
                              }
                           }
                        })          
                     }//내부(1) if문  - 로그인여부 판단
                  }  //외부 if문 - 찜하기? 안찜하기?
               }//Wish_Click 함수 종료


               /* --------------------------다음 지도 api-------------------------------------------------------------- */
               var infowindow = new kakao.maps.InfoWindow({
                  zIndex: 1
               });

               var mapContainer = document.getElementById('map'), mapOption = {
                  center: new kakao.maps.LatLng(37.566826, 126.9786567),
                  level: 3
               };
               var map = new kakao.maps.Map(mapContainer, mapOption);
               var ps = new kakao.maps.services.Places();
               ps.keywordSearch("<c:out value='${dto.pd_keyword}'/>", placesSearchCB);
               function placesSearchCB(data, status, pagination) {
                  if (status === kakao.maps.services.Status.OK) {
                     var bounds = new kakao.maps.LatLngBounds();
                     for (var i = 0; i < data.length; i++) {
                        displayMarker(data[i]);
                        bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
                     }
                     map.setBounds(bounds);
                  }
               }

               function displayMarker(place) {
                  var marker = new kakao.maps.Marker({
                     map: map,
                     position: new kakao.maps.LatLng(place.y, place.x)
                  });
                  kakao.maps.event.addListener(marker, 'click', function () {
                     infowindow
                        .setContent('<div style="padding:5px;font-size:12px;">'
                           + place.place_name + '</div>');
                     infowindow.open(map, marker);
                  });
               }
               /* --------------------------다음 지도 api-------------------------------------------------------------- */

               /* -------------------------- 상단 이미지 슬라이드-------------------------------------------------------------- */
               var coverflowSetting = {
                  slideShadows: true, // 슬라이더 그림자 : 3D 효과를 강조하기 위한 회전시 흐릿한 효과
                  rotate: 50, // 슬라이더 회전 각 : 클수록 슬라이딩시 회전이 커짐
                  stretch: 0, // 슬라이더간 거리(픽셀) : 클수록 슬라이더가 서로 많이 겹침
                  depth: 100, // 깊이 효과값 : 클수록 멀리있는 느낌이 강해짐
                  modifier: 1, // 효과 배수 : 위 숫자값들에 이 값을 곱하기 처리하여 효과를 강하게 처리함
               }

               var myswiper = null;

               function init() {
                  if (myswiper != null)
                     myswiper.destroy();

                  myswiper = new Swiper('.swiper-container', {
                     slidesPerView: 1, // 동시에 보여줄 슬라이드 갯수
                     spaceBetween: 0, // 슬라이드간 간격
                     slidesPerGroup: 1, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음(한번 넘어갈떄 그룹수만큼 넘어감 1이면 1장씩 5면 5장씩)
                     loopFillGroupWithBlank: true,
                     loop: true, // 슬라이드 반복

                     autoplay: { // 자동 재생
                        delay: 3000, //자동재생 넘어가는 딜레이 
                     },
                     speed: 1000, // 넘어갈때 속도 2초

                     navigation: {
                        nextEl: '.swiper-button-next', // 다음 버튼 클래스명
                        prevEl: '.swiper-button-prev', // 이번 버튼 클래스명
                     },
                  });
               }
               init();
               /* -------------------------- 상단 이미지 슬라이드 끝-------------------------------------------------------------- */

               //트위터, 카카오톡, 페이스북 공유하기 [10-11 한보영]
               const pd_seq = $("#pd_seq").val().trim();
               const pd_name = $("#pd_name").val().trim();



               function shareTwitter() {//트위터 공유하기
                  var sendText = "[Onetrillion]" + pd_name + "여행지 공유하기"; // 전달할 텍스트
                  var sendUrl = "localhost:8088/trip/board/detail.do?pd_seq=" + pd_seq// 전달할 URL
                  window.open("https://twitter.com/intent/tweet?text=" + sendText + "&url=" + sendUrl);
               }


               function shareFacebook() {
                  var sendUrl = "localhost:8088/trip/board/detail.do?pd_seq=" + pd_seq;// 전달할 URL
                  window.open("http://www.facebook.com/sharer/sharer.php?u=" + sendUrl);
               }

               function shareKakao() {  //카카오톡 공유하기
                  Kakao.init('ca25fe0ce664caec60cfd9ff98deb904');

                  Kakao.Link.createDefaultButton({
                     container: '#btnKakao', // 카카오공유버튼ID
                     objectType: 'feed',
                     content: {
                        title: "[Onetrillion]" + pd_name, //  제목
                        description: pd_name + " 여행지를 공유합니다.", // 설명
                        imageUrl: "https://ifh.cc/g/y8CkiM.png", // URL
                        link: {
                           mobileWebUrl: "http://localhost:8088/trip/board/detail.do?pd_seq=" + pd_seq,
                           webUrl: "http://localhost:8088/trip/board/detail.do?pd_seq=" + pd_seq
                        }
                     }
                  });
               }

            </script>
         </div>
         

         <jsp:include page="../include/footer.jsp"></jsp:include>

      </body>

      </html>