<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>키워드로 장소검색하기</title>
      <script src="//code.jquery.com/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ca25fe0ce664caec60cfd9ff98deb904&libraries=services"></script>
		<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
</head>
<style>
#detailDiv001>div {
	height: 40px;
	margin: 10px;
	line-height: 40px;
}

#detailDiv001>div>input {
	width: 210px;
	height: 40px;
	color: white;
	background-color: black;
	border: 0;
	font-size: 100%;
}

#detailDiv001>div>input:hover {
	color: red;
	cursor: pointer;
}

#detailDiv001>div>div>select {
	width: 125px;
	height: 40px;
	border: 0;
	background-color: #f2f2f2;
	text-align-last: center;
}

#detailDiv001>div>div {
	text-align: right;
	position: relative;
	margin-top: -40px;
}

#detailDiv001>div>div>span {
	font-weight: bold;
}

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
	margin: 0 auto;
	z-index: 2;
}

.swiper-container {width: 732px; float: left;}
.swiper-slide>img {
	width: 732px;
	height:400px;
	object-fit:cover;
}
.swiper-slide {
	display: flex; /* 내용을 중앙정렬 하기위해 flex 사용 */
	align-items: center; /* 위아래 기준 중앙정렬 */
	justify-content: center; /* 좌우 기준 중앙정렬 */
	background-color: white;
	border-radius: 10px;
	box-sizing: border-box; /* 이 설정을 하지 않으면 슬라이드드가 틀어짐 */
	/* 아래에 있는 실행가능한 소스를 가지고 실험해 보세요 */
	;
}

/* 모달창(관리자 삭제/수정) css----------------------------------------------------------------------------------------------------------------------------------- */
#conBox>table>tbody>tr>td>input{border:0; width:100%; height: 100%; background-color: #FcFcFc; text-align: center; }
#conBox>table>tbody>tr>td{background-color: #F7F7F7; text-align: center}
#conBox>table>tbody>tr>td>button{border:0; width:18%; height:100%; background-color: black; color: white;}
#conBox>table>tbody>tr>td>button:hover{ cursor: pointer; color: red; }
/* 모달창 css 끝----------------------------------------------------------------------------------------------------------------------------------- */
#detailDivCon001 table:nth-child(2) td, #detailDivCon001 table:nth-child(3) td{ width: 25%; height: 50px; border-bottom:1px solid #ededed;}
#detailDivCon001 table:nth-child(2) td:nth-child(1){background-color: #ededed;}
#detailDivCon001 table:nth-child(2) tr:nth-child(1) td{border-top: 2px solid black;}
#detailDivCon001 table:nth-child(2) div{margin-left:10px;}
#detailDivCon001 table:nth-child(3) tr:nth-child(1) td{background-color: #ededed; border-top: 2px solid black;}
#detailDivCon001 table:nth-child(5) td:nth-child(1) {height:150px;; width: 2%; background-color: #ededed;}
#detailDivCon001 table:nth-child(5) td:nth-child(2) {width: 23%; border-right: 1px solid #ededed; text-align: center;}
#detailDivCon001 table:nth-child(5) div{margin:10px;}
#detailDivCon001 table:nth-child(5) td{border-bottom:1px solid #ededed;}
#detailDivCon001 table:nth-child(5) tr:nth-child(1) td{border-top:2px solid black;}
#detailDivCon001 table:nth-child(7) div{margin:10px; margin-left:50px;}
#detailDivCon001 table:nth-child(9) div{margin:10px; margin-left:50px;}

</style>

<body >
	<jsp:include page="../include/header2.jsp"></jsp:include>
	<div style="margin:auto;width: 1332px;height:auto;">
	<div style="width:1300px;height:0; margin-bottom: 80px">
		<h1 style="margin-top: 30px;">[오늘의 여행] ${dto.pd_name }🔥</h1>
		<input type="hidden" id="u_id" value="${member.u_id }">
		<input type="hidden" id="ad_id" value="${admin.AD_ID }">
	</div>
	<div style="margin: auto; width: 1332px; height: auto;">
		<hr style="margin-top: 40px;" />
		
	<!-- swiper 부분-->
	<div style="margin:auto; width:1332px; height:400px;margin-top: 40px; border:1px solid gray;">
	<div style="float:left; margin-left:0px; width: 732px;">
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
	<div style="width:590px;height: 400px;float: left;">
	
	<div style="width: 200px;height: 20px; float: right;text-align:center; margin:auto; box-shadow: 0 0 2px gray;">여행상품 핵심정보</div>
	<div style="margin-left: 20px;margin-top: 40px; ">
	<div style="float:left;margin-bottom: 20px;">상품번호 :${dto.pd_seq }</div><div style="float:right;margin-bottom: 20px;">조회수 : ${dto.pd_cnt}회 | 리뷰 : 0 | 평점 : <span style="font-size: 110%; color: red;">☆☆☆☆☆</span></div>			
	<p style="float: left;font-weight: bold; font-size:140%;" >[온라인/모바일 전용]${dto.pd_name }</p>
	<p style="float: left;font-weight: bold; font-size:140%;" >#벗꽃놀이 </p><p style="float: left;font-weight: bold; font-size:140%;" >#화려한 퍼레이드 </p><p style="float: left;font-weight: bold; font-size:140%;" >#데이트 코스 </p><p style="float: left;font-weight: bold; font-size:140%;" >#츄러스 맛집 </p><p style="float: left;font-weight: bold; font-size:140%;" >#석촌호수</p>
	<p style="clear: both; padding-top:40px;">여행 일정 (${period}박 ${period2}일)</p>
	<p style="margin-left: 400px; margin-top:80px;margin-bottom: 20px; font-size: 80%">성인 ${dto.pd_people }인</p> 
	<p style="text-decoration:line-through;margin-left: 300px;margin-top:7px; float: left;font-size: 80%;">358000</p><span style="float:left; margin-left:20px;font-size: 120%; font-weight: bold;">${dto.pd_price }원 </span>
	</div>
	</div>
	</div>
</div>
</div>

	<!-- swiper 부분끝-->
	
	<div style="margin:auto;width:1332px;height:auto; margin-top: 40px; ">
	<div id="detailDiv001"
			style="border: 1px solid black; background-color: white; width: 230px;position:sticky; top:40px; float:right;">
			<div style="text-align: center; font-weight: bold; font-size: 120%;">${dto.pd_name }</div>
			<div>
				출 발 :
				<div>
					<span>${dto.pd_startDate }</span>
				</div>
			</div>
			<div>
				도 착 :
				<div>
					<span>${dto.pd_endDate }</span>
				</div>
			</div>
			<div>
				인 원 :
				<div>
					<span>${dto.pd_people } </span>
				</div>
			</div>
			<div>
				금 액 :
				<div>
					<span style="font-size: 120%">￦ ${dto.pd_price } </span>
				</div>
			</div>
<!-- 			<div>
				<input id = "dateChange" type="button" value="날짜 변경" />
			</div> -->
			<hr />
			<div>
				성&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;인 :
				<div id="detailDiv007">
					<select id="sel_adault">
						<option value="0">0</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
					</select>
				</div>
			</div>
			<div class="detailDiv002" id="detailDiv003"
				style="height: 0; margin: 0; line-height: 0px; margin-left: 15px; margin-top: -10px;">￦ ${dto.adult_price }</div>
			<div>
				18세미만 :
				<div id="detailDiv008">
					<select id="sel_young">
						<option value="0">0</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
					</select>
				</div>
			</div>
			<div class="detailDiv002" id="detailDiv004"
				style="height: 0; margin: 0; line-height: 0; margin-left: 15px; margin-top: -10px">￦ ${dto.teenager_price}</div>
			<div>
				반려동물 :
				<div id="detailDiv009">
					<select id="sel_pet">
						<option value="0">0</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
					</select>
				</div>
			</div>
			<div class="detailDiv002" id="detailDiv005"
				style="height: 0; margin: 0; line-height: 0; margin-left: 15px; margin-top: -10px">￦ &nbsp;${dto.pet_price }</div>
			<hr style="margin-top: 15px;" />
			<div>
				추가인원 : 
				<div id="detailDiv006_1">
					<span style="color: red">0</span>
				</div>
			</div>
			<div>
				추가금액 : &nbsp;&nbsp;<span style="color:red;">￦</span>
				<div id="detailDiv006">
					<span style="color: red"></span>
				</div>
			</div>
			<div>
				총 &nbsp;&nbsp;합계 : &nbsp;&nbsp;<span style="color:red;">￦</span>
				<div id="detailDiv006_2">
					<span style="color: red">${dto.pd_price }</span>
				</div>
			</div>
			<div>
				<input type="button" onclick="If_User()"  value="예약하기" />
			</div>
			<div>
				<input type="button" onclick="Like_click()"   value="찜" />
			</div>
			<hr />
	
			<div id="modi_del_DIV_showUP">
				<input id="detailInput003" type="button" value="수정" style="width: 100px;" /><input
					type="button" class="btn_delete" value="삭제" style="width: 100px; margin-left: 10px;" />
			</div>
		</div>
	
	<div id="map"style="margin: auto;margin-left:0; width: 1100px; height: 500px;margin-top:40px; background-color: #F7F7F7">여기는지도에요</div>    <!-- 지  도 -->
	
<!-- 컨텐츠 -------------------------------------------------------------------------------------------------------------------------------------->
	<div id="detailDivCon001" style="margin: auto; width: 1100px; height: 100%;margin-left:0;"> 						  
 		<img src="http://jjcom0214.cafe24.com/web/OneTrillion/covid.jpg"  style="width:1100px; margin-top: 10px;" /> 					
		<table style="width:1100px; margin-top:10px;">
			<tr>
				<td><div>여행기간</div></td>
				<td colspan="3"><div>${dto.pd_startDate } ~ ${dto.pd_endDate } (${period}박 ${period2}일)</div></td>
			</tr>
			<tr>
				<td><div>이용교통</div></td>
				<td><div>버스</div></td>
				<td style="background-color: #ededed"><div>방문도시</div></td>
				<td><div>${dto.pd_location }</div></td>
			</tr>
			<tr>
				<td><div>최소인원</div></td>
				<td colspan="3"><div>${dto.pd_people } 추가인원 가능</div></td>
			</tr>
		</table>
		<table style="width:1100px; margin-top:10px; text-align: center;">
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
		<h3 style="margin-top:30px;margin-left:10px;">중요사항</h3>
		<table style="width:1100px; margin-top:10px;">
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
		<h3 style="margin-top:30px;margin-left:10px;">약관/취소수수료</h3>
		<table style="width:1100px; margin-top:10px; border-bottom:1px solid #ededed; border-top:2px solid black;">
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
		<h3 style="margin-top:30px;margin-left:10px;">여행일정</h3>
		<table style="width:1100px; margin-top:10px; border-bottom:1px solid #ededed; border-top:2px solid black;">
			<tr>
				<td>
					<div>&nbsp</div>
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
					<img style="width:1050px;" src="http://jjcom0214.cafe24.com/web/OneTrillion/detail01.png" alt="" />
					<div>&nbsp</div>
					<div>2, ${dto.pd_name } 야간투어</div>
					<div>코스: 승차-동궁과 월지-첨성대-계림-교촌마을-월정교-하차</div>	
					<div>*운행일: 매일</div>
					<div>*시간: 18:30~22:00</div>
					<div>*최소출발인원: 15명 (인원미달로 취소시 전날 16시 이후 연락드립니다)</div>
					<div>*픽업시간: 호텔앞 오전 19:15 셔틀버스 출발 예정</div>		
					<div>&nbsp</div>
					<img style="width:1050px;" src="http://jjcom0214.cafe24.com/web/OneTrillion/detail02.png" alt="" />
					<div>&nbsp</div>
				</td>
			</tr>
		</table>
	</div>
	

	<div id="modal_body"><!-- 수정 및 삭제 -->
				<div id="conBox">
				<table style="margin: 100px auto; background-color: white; height: 700px; box-shadow: 0 0 20px; border-radius: 20px;" border="1px solid black">
					<tr>
						<th width="200px" style="border-radius:20px 0 0 0; ">번호</th>
						<td colspan="2" style="border-radius:0 20px 0 0; ">
							${dto.pd_seq}<input type="hidden" id="pd_seq"  value="${dto.pd_seq }">
						</td>		
					</tr>
					<tr>
						<th>상품이름</th>
						<td width="300px" > ${dto.pd_name}</td> <!--  상단노출 -->
						<td width="300px"><input class="inputBox" id="pd_name" value="${dto.pd_name}"></td>
					</tr>
					<tr>
						<th>가격</th>
						<td> ${dto.pd_price}</td> <!--  상단노출 -->
						<td ><input class="inputBox"  id="pd_price" value="${dto.pd_price}"></td>
					</tr>
					<tr>
						<th>지도키워드</th>
						<td> ${dto.pd_keyword}</td> <!--  비노출 -->
						<td ><input class="inputBox"  id="pd_keyword" value="${dto.pd_keyword}"></td>
					</tr>
					<tr>
						<th>여행 시작일</th>
						<td> ${dto.pd_startDate}</td> <!-- 우측 배너 -->
						<td > <input class="inputBox"  type="date" id="pd_startDate" value="${dto.pd_startDate}"></td>
					</tr>
					<tr>
						<th >여행 완료일</th>
						<td> ${dto.pd_endDate}</td> <!--  우측 배너 -->
						<td><input class="inputBox"   type="date" id="pd_endDate" value="${dto.pd_endDate}"></td>
					</tr>
					<tr>
						<th>조회수</th>
						<td> ${dto.pd_cnt}</td> <!--  상단노출 -->
						<td ><input class="inputBox"  id="pd_cnt" value="${dto.pd_cnt}"></td>
					</tr>
					<tr>
						<th>상품 테마</th>
						<td> ${dto.pd_theme}</td><!--  상단노출 -->
						<td > <input class="inputBox"  id="pd_theme" value="${dto.pd_theme}"></td>
					</tr>
					<tr>
						<th>예약 사람</th>
						<td> ${dto.pd_people}</td><!--  우측배너 -->
						<td ><input class="inputBox"  id="pd_people" value="${dto.pd_people}"></td>
					</tr>
					<tr>
						<th>이미지 사진</th>
						<td> ${dto.pd_image}</td><!--  상단노출 -->
						<td ><input class="inputBox"  id="pd_image" value="${dto.pd_image}"></td>
					</tr>
					<tr>
						<th>마이리스트
						</th>
						<td> ${dto.mylist}</td> <!--  파악 해야함 -->
						<td> <input class="inputBox"  id="mylist" value="${dto.mylist}" ></td>
					</tr>
					<tr >
						<th>좋아요</th>
						<td> ${dto.good}</td><!--  상단노출 -->
						<td ><input class="inputBox"  id="good" value="${dto.good}"></td>
					</tr>
					<tr >
						<th>상품내용</th>
						<td> ${dto.pd_content}</td><!--  하단노출 -->
						<td ><input class="inputBox"  id="pd_content" value="${dto.pd_content}"></td>
					</tr>
					<tr>
						<td colspan="3" style="border-radius:0 0 20px 20px; ">
							<button  onclick="location.href='modify.do?pd_seq=${dto.pd_seq }' ">수정페이지</button>			
							<button  id="btn_modify"  >수정하기</button>
							<button  id="btn_modifyokay" >수정완료</button>
							<button  class="btn_delete" >삭제</button>
							<button id="btn_close">닫기</button>							
						</td>
					</tr>
				</table>
			</div>
	</div>

		
<!-- 모달창 끝----------------------------------------------------------------------------------------------------------------------------------------------->

<script> //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-= [Front_script]
		$(document).ready(function() {

					var option03 = $('#detailDiv007 select').val();
					var option04 = $('#detailDiv008 select').val();
					var option05 = $('#detailDiv009 select').val();

					$("#detailDiv006").text((${dto.adult_price } * option03) + (${dto.teenager_price } * option04)+ (${dto.pet_price } * option05));
					$("#detailDiv006").css("color", "red");
					$("#detailDiv006_1").css("color", "red");
					$("#detailDiv006_2").css("color", "red");
					$("#detailDiv006").css("font-size", "120%");
					$("#detailDiv006_1").css("font-size", "120%");
					$("#detailDiv006_2").css("font-size", "120%");

					$('#detailDiv007 select').on('change', function() {
						$("#detailDiv006").text((${dto.adult_price } * $(this).val()) + ($('#detailDiv008 select').val() * ${dto.teenager_price }) + ($('#detailDiv009 select').val() * ${dto.pet_price }));
						$("#detailDiv006_1").text(($(this).val() * 1) + ($('#detailDiv008 select').val() * 1) + ($('#detailDiv009 select').val() * 1));
						$("#detailDiv006_2").text(${dto.pd_price}+ ($("#detailDiv006").text()*1));
					});
					
					$('#detailDiv008 select').on('change', function() {
						$("#detailDiv006").text((${dto.teenager_price } * $(this).val()) + ($('#detailDiv007 select').val() * ${dto.adult_price }) + ($('#detailDiv009 select').val() * ${dto.pet_price }));
						$("#detailDiv006_1").text(($(this).val() * 1) + ($('#detailDiv007 select').val() * 1) + ($('#detailDiv009 select').val() * 1));
						$("#detailDiv006_2").text(${dto.pd_price}+ ($("#detailDiv006").text()*1));
					});
					
					$('#detailDiv009 select').on('change', function() {
						$("#detailDiv006").text((${dto.pet_price } * $(this).val()) + ($('#detailDiv007 select').val() * ${dto.adult_price }) + ($('#detailDiv008 select').val() * ${dto.teenager_price }));
						$("#detailDiv006_1").text(($(this).val() * 1) + ($('#detailDiv007 select').val() * 1) + ($('#detailDiv008 select').val() * 1));
						$("#detailDiv006_2").text(${dto.pd_price} + ($("#detailDiv006").text()*1));
					});


				//	$(window).scroll(function() {
					//	var newpt = $(window).scrollTop() - 135 + "px";
					//	if(($("#detailDiv001").offset().top) <= ($(window).scrollTop())){
					//		$("#detailDiv001").css("top", newpt);
					//	}else if(($("#detailDiv001").offset().top > $(window).scrollTop())){
						//	$("#detailDiv001").css("top", newpt);
						//	if($(window).scrollTop()<=147){
							//	$("#detailDiv001").css("top", "0px");
							//}
					//	}
					//})//scroll 함수끝				

				}); //document 함수 끝
	</script>
	<script>  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-= [Back_script]

	
	const u_id = $("#u_id").val().trim();
	const ad_id = $("#ad_id").val().trim();

	
	$(document).ready(function(){
		
		if(ad_id == 'TrillionAdmin1'){ //관리자면, 수정 삭제 버튼 보이기
			$("#modi_del_DIV_showUP").show();
		}else{
			$("#modi_del_DIV_showUP").hide();
		}
	
		
		
		
		$("#detailInput003").on("click", function(){
			$("#modal_body").css("display","block")
		})
		$("#btn_close").on("click", function(){
			$("#modal_body").css("display","none")
		})
		
		$(".inputBox").hide(); //처음에는 input 박스 안보이게
		$("#btn_modify").click(function(){
			$(".inputBox").show();
		});//btn_modify 함수(끝)
		
		
	    $("#btn_modifyokay").click(function(){
	    	const pd_seq = $("#pd_seq").val().trim();
	    	const pd_name = $("#pd_name").val().trim();
	    	const pd_price = $("#pd_price").val().trim();
	    	const pd_keyword = $("#pd_keyword").val().trim();
	    	const pd_startDate = $("#pd_startDate").val();
	    	const pd_endDate = $("#pd_endDate").val();
	    	const pd_cnt = $("#pd_cnt").val().trim();
	    	const pd_theme = $("#pd_theme").val().trim();
	    	const pd_people = $("#pd_people").val().trim();
	    	const pd_image = $("#pd_image").val().trim();
	    	const pd_content = $("#pd_content").val().trim();
	    	const mylist = $("#mylist").val().trim();
	    	const good = $("#good").val().trim();
			console.log(pd_seq);
	    	
			
			var allData = {"pd_seq":pd_seq,"pd_name":pd_name,"pd_price":pd_price,"pd_keyword":pd_keyword,"pd_startDate":pd_startDate,"pd_endDate":pd_endDate,"pd_cnt":pd_cnt,"pd_theme":pd_theme,"pd_people":pd_people,"pd_image":pd_image,"pd_content":pd_content,"mylist":mylist,"good":good};
		    console.log(allData);	
		    
			    $.ajax({
			        url:"modify.do",
			        type:'POST',
			        data: allData,
			        success:function(data){		
			        	//location.href="./detail.do?pd_seq=" + pd_seq;			        	
			            location.reload('./detail.do?pd_seq=' + pd_seq);
			            
			        },
			        error:function(){
			            alert("에러 발생!");
			        }
			    });	//ajax end
			    
			    
		    $(".inputBox").hide();	    	
	    }); //btn_modifyokay 함수(끝)
	});//document function==========================================================================(끝)	
	
	
    $(".btn_delete").click(function(){
    	var delete_board = confirm('게시물을 삭제하시겠습니까?');
    	
    	if(!delete_board){
    		return false;
    	}else{
    	
    	const pd_seq = $("#pd_seq").val().trim();
    	var seqdata ={"pd_seq":pd_seq};
    	console.log(seqdata);
	    $.ajax({
	        url:"delete.do",
	        type:'POST',
	        data: seqdata,
	        success:function(data){
	            alert("완료!");
	            location.href = "./search.do";
	            	            
	        },
	        error:function(){
	            alert("에러 발생~~ \n" );
	        }
	    });	//ajax end
    	}//ifelse문 
    });//btn_delete 함수 끝 =======================================================================(끝)	    	
    
    
    
    function If_User(){  

    	const pd_seq = $("#pd_seq").val().trim();
    	const pd_name = $("#pd_name").val().trim();
    	var u_id=$("#u_id").val();
    	console.log(u_id);
    	    	
    	if(u_id == "" ){ 
    		alert("로그인이 필요합니다.");
    		location.href = "./../user/login.do";
    	    		
    	}
    	//else if(u_id.equals('admin')){ //만약 아이디가 admin 이면 (관리자)    	    
    	//}
    	else{
	    	//값 예약 페이지로 넘기기 
 	    	var sel_adault =$("#sel_adault option:selected").val();
	    	//console.log(sel_adault);
 	    	var sel_young =$("#sel_young option:selected").val();
	    	//console.log(sel_young);
 	    	var sel_pet =$("#sel_pet option:selected").val();
	    	//console.log(sel_pet);
	    	var total_price=$("#detailDiv006_2").text();
	    	//console.log(total_price);
	    	

/* 	    	var checkbox_values=[];    	    	
	    	checkbox_values.push(sel_adault); //성인 수
	    	checkbox_values.push(sel_young); //아동 수
	    	checkbox_values.push(sel_pet);  //펫 수
	    	console.log(checkbox_values); //출력 ,,, 배열로 넘기는거 실패*/
	    	
	    	var allData ={"pd_seq":pd_seq,"u_id":u_id,"sel_adault":sel_adault,"sel_young":sel_young,"sel_pet":sel_pet,"total_price":total_price}; //아이디랑 인원 담고
	    	console.log(allData);

  	        $.ajax({
	            url:"reservation.do",	            
	            type:'GET',
	            data: allData,
	            success:function(){
	            	var confirmRSV = confirm(pd_seq+'번 [ '+pd_name+' ] 상품을 예약시겠습니까?');
	            	
	            	if(!confirmRSV){
	            		return false;
	            	}else{
    	                location.href = "./reservation.do?pd_seq="+pd_seq+
    	                		"&u_id="+u_id+"&sel_adault="+sel_adault+
    	                		"&sel_young="+sel_young+"&sel_pet="+sel_pet+"&total_price="+total_price;  
	            	}   
	            },
	            error:function(jqXHR, textStatus, errorThrown){
	                alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
	            }
	        });//ajax 끝  
    	    
    	} //else 끝
    	    	
    	    	
    	    		
}//If_User 함수 끝 =======================================================================(끝)9/12 추가
   
   

function Like_click(){  
	const pd_seq = $("#pd_seq").val().trim();
	const pd_name = $("#pd_name").val().trim();
	var u_id=$("#u_id").val();
	
	var Like_confirm = confirm(pd_seq+'번 [ '+pd_name+' ] 상품을 찜하시겠습니까?');
	
	if(!Like_confirm){
		return false; //아니오 눌렀을 때  돌아감
	}else{   //예 눌렀을때
		
		
		if(u_id == "" ){ 
    		alert("찜 하기위해서 로그인이 필요합니다.");
    		location.href = "./../user/login.do";
		}else{
			
			
			var confirm_again = confirm('찜 목록에 담겼습니다! 찜 목록으로 이동하시겠습니까?');
			if(!confirm_again){ //아니오
				return false;
			}else{
				location.href = "../user/wishlist.do?u_id="+u_id; 				
			}//내부(2) if문 - 찜목록 이동? 안이동?
			
					 
		}//내부(1) if문  - 로그인이 되었을때/ 안되었을 때
	
		
	}  //외부 if문 - 찜하기? 안짐하기?

}//Like_click 함수(끝) =================================================================(끝)9/13
    
    
    
    
    
    
    
    
	</script>  
	<script>
	/* --------------------------다음 지도 api-------------------------------------------------------------- */
	var infowindow = new kakao.maps.InfoWindow({
		zIndex : 1
	});

	var mapContainer = document.getElementById('map'), mapOption = {
		center : new kakao.maps.LatLng(37.566826, 126.9786567),
		level : 3
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
			map : map,
			position : new kakao.maps.LatLng(place.y, place.x)
		});
		kakao.maps.event.addListener(marker, 'click', function() {
			infowindow
					.setContent('<div style="padding:5px;font-size:12px;">'
							+ place.place_name + '</div>');
			infowindow.open(map, marker);
		});
	}
	/* --------------------------다음 지도 api-------------------------------------------------------------- */
	
	/* -------------------------- 상단 이미지 슬라이드-------------------------------------------------------------- */
	var coverflowSetting = {
		slideShadows : true, // 슬라이더 그림자 : 3D 효과를 강조하기 위한 회전시 흐릿한 효과
		rotate : 50, // 슬라이더 회전 각 : 클수록 슬라이딩시 회전이 커짐
		stretch : 0, // 슬라이더간 거리(픽셀) : 클수록 슬라이더가 서로 많이 겹침
		depth : 100, // 깊이 효과값 : 클수록 멀리있는 느낌이 강해짐
		modifier : 1, // 효과 배수 : 위 숫자값들에 이 값을 곱하기 처리하여 효과를 강하게 처리함
	}

	var myswiper = null;

	function init() {
		if (myswiper != null)
			myswiper.destroy();

		myswiper = new Swiper('.swiper-container', {
			slidesPerView : 1, // 동시에 보여줄 슬라이드 갯수
			spaceBetween : 0, // 슬라이드간 간격
			slidesPerGroup : 1, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음(한번 넘어갈떄 그룹수만큼 넘어감 1이면 1장씩 5면 5장씩)
			loopFillGroupWithBlank : true,
			loop : true, // 슬라이드 반복

			autoplay : { // 자동 재생
				delay : 3000, //자동재생 넘어가는 딜레이 
			},
			speed : 1000, // 넘어갈때 속도 2초

			navigation : {
				nextEl : '.swiper-button-next', // 다음 버튼 클래스명
				prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
			},
		});
	}
	init();
	/* -------------------------- 상단 이미지 슬라이드 끝-------------------------------------------------------------- */
	
	
	</script>
	</div>
	
	<jsp:include page="../include/footer.jsp"></jsp:include>

</body>
</html>