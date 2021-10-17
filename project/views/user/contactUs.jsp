<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>Contact Us 페이지</title>
			<!-- <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ca25fe0ce664caec60cfd9ff98deb904&libraries=services"></script> -->
			<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
			<script type="text/javascript"
				src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ca25fe0ce664caec60cfd9ff98deb904&libraries=services"></script> <!-- 지도cdn -->
			<style>
				.introMenu {
					height: 50px;
					width: 150px;
					border-bottom: 1px solid #ededed;
					line-height: 50px;
					text-align: center;
					margin-left: 10px;
				}

				.introMenu:hover {
					background-color: #ededed;
					cursor: pointer;
				}

				.introMenu2 table tr {
					height: 45px;
				}

				.introMenu2 table th {
					text-align: center;
					width: 50%;
					background-color: #ededed;
					border-top: 2px solid #343a40;
				}

				.introMenu2 table td {
					padding: 10px;
				}

				.introMenu2 li {
					font-size: 90%;
				}
			</style>
		</head>

		<body>
			<jsp:include page="../include/header2.jsp"></jsp:include>
			<div style="margin:auto; width:1100px; min-height: 800px;">
				<div class="list-group" id="leftSlide01"
					style="float:left;width:180px; height:600px; margin-top: 15px; position: relative;">
					<a href="#" class="list-group-item list-group-item-action"
						style="background-color: #ededed; color: #343a40; font-weight: bold;">고객센터</a>
					<a href="#" class="list-group-item list-group-item-action">공지사항</a>
					<a href="#" class="list-group-item list-group-item-action">자주하는질문</a>
					<a href="#" class="list-group-item list-group-item-action">1대1문의</a>
					<a href="#" class="list-group-item list-group-item-action">Contact Us</a>
				</div>
				<div style="float:right; width:915px; height: auto;">
					<div>
						<nav style="margin-top:15px; height: 45px; line-height: 45px; background-color: #ededed; ">
							<a class="navbar-brand"
								style="font-size: 100%; margin-left: 20px; color: #343a40; font-weight: bold;"
								href="#">Contact
								Us</a>
						</nav>
					</div>
					<div class="introMenu2" id="introinfo1" style="margin-top: 40px;">
						<!-- 여기에 컨튼츠 ------------------------------------------------------------------------------------------------------------->
						<div id="map" style="width:100%;height:500px; border-radius: 5px; background-color: #ededed;">
							다음 지도 노출 영역
						</div>
						<div>
							<table style="margin-top: 10px; border-bottom: 1px solid #ededed; margin-bottom: 40px;">
								<tr>
									<th style="border-right: 1px solid white;">대중교통으로 방문하시는 경우</th>
									<th>자가용으로 방문하시는 경우</th>
								</tr>
								<tr>
									<td style="border-right: 1px solid #ededed;">
										<ul>
											<li class="skyb">
												<p class="skybl"><strong>지하철</strong><br>
													가산디지털단지역 6번출구 나오셔서 좌측횡단보도 건너 좌측으로 10m가시면 삼거리가 나옵니다.
													삼거리에서 우측 방향으로 직진하셔서 사거리 대각선방향에 우리은행 건물 413호 입니다.</p>
											</li>
											<li class="skyb">
												<p class="skybl"><strong>버스</strong><br>
													21,571,652,금천05 <br>
													[디지털3단지 월드벤쳐센터]정류장에서 하차</p>
											</li>
											<li class="skyb">
												<p class="skybl"><strong>주소</strong><br>
													서울시 금천구 가산디지털2로 123<br> 월드메르디앙 2차 4층 413호</p>
											</li>
										</ul>
									</td>
									<td>
										<ul>
											<li class="skyb">
												<p class="skybl">서부간선 도로를 타고 오다가 광명교를 타고 좌회전 후 첫 사거리에서 우회전</p>
											</li>
											<li class="skyb">
												<p class="skybl">가리봉5거리에서 철산방량 수출의 다리를 넘어 첫사거리 (한진사거리)에서 우회전</p>
											</li>
											<li class="skyb">
												<p class="skybl">남부 순환도로 구로 IC로 나와 죄회전</p>
											</li>
										</ul>
									</td>
								</tr>
								<tr>
									<th colspan="2">대표 상담 번호</th>
								</tr>
								<tr>
									<td colspan="2" style="text-align: center; height: 200px;">
										<h1 style="margin-bottom: 40px;">1544-2288</h1>
										상담 가능 시간 평일 오전 9시 ~ 오후 6시 (토,일요일 및 공휴일 휴무)
									</td>
								</tr>
							</table>
						</div>




						<!-- 여기에 컨튼츠 ------------------------------------------------------------------------------------------------------------->
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
					// 왼쪽 메뉴 스크롤 끝----------------------------------------------------------------------
				})


				// 다음 지도 시작---------------------------------------------------------------------------------------------
					var infowindow = new kakao.maps.InfoWindow({zIndex:1});
					
					var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
					    mapOption = {
					        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
					        level: 3 // 지도의 확대 레벨
					    };  
					
					// 지도를 생성합니다    
					var map = new kakao.maps.Map(mapContainer, mapOption); 
					
					// 장소 검색 객체를 생성합니다
					var ps = new kakao.maps.services.Places(); 
					
					// 키워드로 장소를 검색합니다
					ps.keywordSearch("서울시 금천구 가산동 426-5 월드메르디앙 2차", placesSearchCB); 
					
					// 키워드 검색 완료 시 호출되는 콜백함수 입니다
					function placesSearchCB (data, status, pagination) {
					    if (status === kakao.maps.services.Status.OK) {
					
					        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
					        // LatLngBounds 객체에 좌표를 추가합니다
					        var bounds = new kakao.maps.LatLngBounds();
					
					        for (var i=0; i<data.length; i++) {
					            displayMarker(data[i]);    
					            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
					        }       
					
					        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
					        map.setBounds(bounds);
					    } 
					}
					
					// 지도에 마커를 표시하는 함수입니다
					function displayMarker(place) {
					    
					    // 마커를 생성하고 지도에 표시합니다
					    var marker = new kakao.maps.Marker({
					        map: map,
					        position: new kakao.maps.LatLng(place.y, place.x) 
					    });
					
					    // 마커에 클릭이벤트를 등록합니다
					    kakao.maps.event.addListener(marker, 'click', function() {
					        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
					        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
					        infowindow.open(map, marker);
					    });
					}
		// 다음 지도 끝---------------------------------------------------------------------------------------------

			</script>
		</body>
		<jsp:include page="../include/footer.jsp"></jsp:include>

		</html>