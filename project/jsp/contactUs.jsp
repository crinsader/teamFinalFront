<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>contactUs</title>
			<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
				integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
				crossorigin="anonymous">
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

				.myPageMenu:hover {
					background-color: #ededed;
					cursor: pointer;
				}

				#myPageinfo1>img {
					width: 292px;
					height: 180px;
					margin-left: 5px;
					margin-top: 20px;
					margin-bottom: 20px;
				}

				.kosmodiv01 {
					width: 437.5px;
					height: 370px;
					margin-left: 20px;
					float: left;
				}

				.kosmodiv02 {
					width: 437.5px;
					height: 370px;
					margin-left: 20px;
					float: left;
				}

				.skyb {
					color: skyblue;
				}

				.skybl {
					color: black;
				}
			</style>
			<!-- <script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ca25fe0ce664caec60cfd9ff98deb904&libraries=services"></script> -->
		</head>

		<body>
			<div style="margin:auto; width:1100px; height:800px;">
				<div class="list-group"
					style="float:left;width:180px; height:600px; margin-top: 40px; position: fixed;">
					<a href="#" class="list-group-item list-group-item-action">마이페이지</a>
					<a href="#" class="list-group-item list-group-item-action">개인정보</a>
					<a href="#" class="list-group-item list-group-item-action">1대1문의</a>
					<a href="#" class="list-group-item list-group-item-action">찜 내역</a>
					<a href="#" class="list-group-item list-group-item-action">예약내역</a>
					<a href="#" class="list-group-item list-group-item-action"
						style="background-color: #343a40; color: white;">Contact Us</a>
				</div>
				<div style="float:right;width:915px;">
					<div class="myPageMenu2" id="myPageinfo1">
						<a class="navbar-brand"
							style="font-size: 100%;  margin-top: 40px;margin-left: 20px;color: black;"
							href="#"><strong>오시는 길</strong></a>
						<hr style="margin-left: 20px; height: 3px; background-color: gray;">
					</div>
					<div id="map" style=" margin-left: 20px; width:895px;height:500px; border: 2px solid red;"></div>
					<!-- <div style=" margin-left: 20px; width:895px;height:500px; border: 2px solid red;"></div> -->
					<script>
						var infowindow = new kakao.maps.InfoWindow({
							zIndex: 1
						});

						var mapContainer = document.getElementById('map'), mapOption = {
							center: new kakao.maps.LatLng(37.566826, 126.9786567),
							level: 3
						};
						var map = new kakao.maps.Map(mapContainer, mapOption);
						var ps = new kakao.maps.services.Places();
						ps.keywordSearch("강남역", placesSearchCB);
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
					</script>
					<div class="kosmodiv01">
						<div style="height: 40px;width: 437.5px;background-color: skyblue;line-height: 40px;">
							<p style="margin-left: 10px; color: white;">대중교통으로 방문하시는 경우</p>
						</div>
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
					</div>
					<div class="kosmodiv02">
						<div style="height: 40px;width: 437.5px;background-color: skyblue;line-height: 40px;">
							<p style="margin-left: 10px; color: white;">자가용으로 방문하시는 경우</p>
						</div>
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
					</div>
				</div>
				<div>
					<ul style="list-style: none;margin-left: 180px;font-size: 80%;font: bold;clear: both;">
						<li>대표 상담 번호 1544-2288</li>
						<li>상담 가능 시간 평일 오전 9시 ~ 오후 6시 (토,일요일 및 공휴일 휴무)</li>
					</ul>
				</div>
			</div>

			</div>
			</script>

			<jsp:include page="../include/footer.jsp"></jsp:include>
		</body>

		</html>