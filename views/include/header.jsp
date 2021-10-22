<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html lang="en">

	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>OneTrillion</title>
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
		<script src="https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.13.1/underscore-min.js"></script>
		<script src="https://unpkg.com/babel-standalone@6.15.0/babel.min.js"></script>
	</head>
	<style>
		.navbar a {
			font-size: 130%;
		}

		.dropdown-menu select {
			cursor: pointer;
		}

		.input-group-text {
			padding: 5px;
		}

		.input-group,
		.dropdown-menu select,
		.dropdown-menu input {
			height: 45px;
			;

		}
		#top_btn{
		  position: fixed;
		  right: 0;
		  bottom: -50px;
		  display: inline-block;
		  background-color: black;
		  width: 80px;
		  height: 60px;
		  line-height: 50px;
		  font-weight: bold;
		  opacity: 0;
		  transition: 0.7s ease;
		  font-size: 17px;
		  text-align: center;
		
		}
		
		#top_btn.on{
		  opacity: 1;
		  cursor: pointer;
		  bottom: 0;
		  text-align: center;
		opacity: 0.8;
		}
	</style>

	<body>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark"
			style="height:auto; min-height: 70px; box-shadow: 0 0 20px gray;">
			<div class="container-fluid" style=" padding-right: 0; width: 1300px; ">
				<a class="navbar-brand" href="<%=request.getContextPath() %>/"
					style="font-weight: bold; font-size: 30px">OneTrillion</a>
				<% String u_id=(String) session.getAttribute("u_id"); if(u_id==null){%>
					<div class=" navbar-collapse" id="navbarNav">
						<ul class="navbar-nav">
							<li class="nav-item">
								<a class="nav-link" href="<%=request.getContextPath()%>/user/login.do">Login</a>
							</li>
							<li class="nav-item">
								<a class="nav-link"
									href="<%=request.getContextPath() %>/user/myPageInfo.do?u_id=${member.u_id}">Member</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="<%=request.getContextPath()%>/user/cs.do">Customer</a>
							</li>
							<li class="nav-item">
								<a class="nav-link"
									href="<%=request.getContextPath()%>/userRes/list.do?u_id=${member.u_id}">Reservation</a>
							</li>
							<li class="nav-item">
								<a class="nav-link"
									href="<%=request.getContextPath()%>/wishlist/list.do?u_id=${member.u_id }">Wishlist</a>
							</li>
						</ul>
					</div>
					<%}else{%>
						<div class=" navbar-collapse" id="navbarNav">
							<ul class="navbar-nav">
								<li class="nav-item">
									<a class="nav-link" id="btnLogout" href="#">Logout</a>
								</li>
								<li class="nav-item">
									<a class="nav-link"
										href="<%=request.getContextPath() %>/user/myPageInfo.do?u_id=${member.u_id}">Member</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="<%=request.getContextPath()%>/user/cs.do">Customer</a>
								</li>
								<li class="nav-item">
									<a class="nav-link"
										href="<%=request.getContextPath()%>/userRes/list.do?u_id=${member.u_id}">Reservation</a>
								</li>
								<li class="nav-item">
									<a class="nav-link"
										href="<%=request.getContextPath()%>/wishlist/list.do?u_id=${member.u_id }">Wishlist</a>
								</li>
							</ul>
						</div>
						<%}%>
							<div>
								<ul class="navbar-nav me-auto mb-2 mb-lg-0">
									<% u_id=(String) session.getAttribute("u_id"); if(u_id==null){%>

										<%}else{%>
											<li class="nav-item">
												<a class="nav-link"
													style="border:1px solid gray; border-radius: 10px;">${member.u_nickName}</a>
											</li>
											<%}%>
												<li class="nav-item dropdown">
													<a class="nav-link dropdown-toggle" href="#"
														id="navbarDropdownMenuLink" role="button"
														data-bs-toggle="dropdown" aria-expanded="false">
														Search
													</a>
													<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink"
														style="width: 230px; padding: 10px;">
														<li>
															<h5 style="margin-top: 10px; margin-left: 10px;">여행지</h5>
															<hr style="margin-bottom: 10px;">
														</li>
														<li>
															<select name="" class="nation form-select"
																aria-label="Default select example"
																style="margin-bottom: 10px;">
																<option value="korea">국내</option>
																<option value="abroad">해외</option>
															</select>
														</li>
														<li>
															<select name="" class="location form-select"
																aria-label="Default select example"
																style="margin-bottom: 20px;">
																<option value="seoul">서울</option>
																<option value="kyeongki">경기</option>
																<option value="incheon">인천</option>
																<option value="kangwon">강원</option>
																<option value="chungnam">충남</option>
																<option value="chungbuk">충북</option>
																<option value="jeonbuk">전북</option>
																<option value="jeonnam">전남</option>
																<option value="kyungbuk">경북</option>
																<option value="kyungnam">경남</option>
																<option value="jeju">제주</option>

															</select>
														</li>
														<li>
															<h5 style="margin-left: 10px;">기간</h5>
															<hr style="margin-bottom: 10px;">
														</li>
														<li>
															<div class="input-group" style="margin-bottom: 10px;">
																<span class="input-group-text"
																	id="basic-addon1">출발</span>
																<input type="date" class="form-control startDate"
																	value="2021-01-01" aria-label="Username"
																	aria-describedby="basic-addon1">
															</div>
														</li>
														<li>
															<div class="input-group" style="margin-bottom: 20px;">
																<span class="input-group-text"
																	id="basic-addon1">도착</span>
																<input type="date" class="form-control endDate"
																	value="2021-01-15" aria-label="Username"
																	aria-describedby="basic-addon1">
															</div>
														</li>
														<li>
															<h5 style="margin-left: 10px;">가격</h5>
															<hr style="margin-bottom: 10px;">
														</li>
														<li>
															<div class="input-group " style="margin-bottom: 10px;">
																<span class="input-group-text"
																	id="basic-addon1">최소</span>
																<input type="text" class="form-control startDate"
																	value="10000" aria-label="Username"
																	aria-describedby="basic-addon1">
															</div>
														</li>
														<li>
															<div class="input-group " style="margin-bottom: 20px;">
																<span class="input-group-text"
																	id="basic-addon1">최대</span>
																<input type="text" class="form-control startDate"
																	value="1000000" aria-label="Username"
																	aria-describedby="basic-addon1">
															</div>
														</li>
														<li>
															<input class="btn btn-secondary" id="hearderInput001"
																type="button" value="검색" style="width: 100%;"
																onclick="search()">
														</li>

													</ul>
												</li>
								</ul>
							</div>
			</div>
		</nav>
		       <a id="top_btn" style="color: white; text-decoration: none ">TOP</a>   
		
	</body>
	<script>


		$("#div001_in01_in02").on("click", function () {
			location.href = "<%=request.getContextPath() %>/board/search.do";
		})

		$("#btnLogout").on("click", function () {
			if (confirm("정말 로그아웃 하시겠습니까?")) {
				location.href = "<%=request.getContextPath() %>/user/logout.do";
				alert("로그아웃되었습니다");
			}
		});

		$(".dropdown-toggle").on("click", function () {
			$(".dropdown-menu").slideToggle("fast");
		})

		function logout() {
			if (confirm("정말 로그아웃 하시겠습니까?")) {
				location.href = "<%=request.getContextPath() %>/user/logout.do";
				alert("로그아웃되었습니다");
			}
		}


		var searchTemp = `

		{{ for(var i=0; i<searchList.length; i++){  var search=searchList[i]; }}
         <figure>
            <div onclick="searchImgModalClick()" onmouseover="searchImgModalOver()" onmouseout="searchImgModalOut()" class="searchImgModal">찜</div>
            <img onmouseover="searchImg01Over()" onmouseout="searchImg01Out()" class="searchImg01" src="{{=search['pd_image'] }} " onclick="location.href='http://localhost:8088/trip/board/detail.do?pd_seq={{=search['pd_seq'] }} ' ">
            <div onmouseover="searchImgModal2Over()" onmouseout="searchImgModal2Out()" class="searchImgModal2">예약하기</div>
             <figcaption>
				<p>{{=search['pd_name'] }}</p>
	            <p>{{=search['pd_startDate'] }} ~ {{=search['pd_endDate'] }}</p>
	            <p># {{=search['pd_theme'] }} # {{=search['pd_theme'] }} # {{=search['pd_theme'] }}</p>
             </figcaption>
         </figure>     
		 {{ } }}
	
	`

		$(document).ready(function () {
			$("#div001_in01_in02_in01").click(function () {
				$("#div001_in01_in02_in02").slideToggle("fast");
			})
		});

		function search() {
			var location = $('.location').val();
			var startDate = $('.startDate').val();
			var endDate = $('.endDate').val();

			$.ajax({
				type: 'POST',
				/* data : JSON.stringify(param), */
				data: {
					location: $('.location').val(),
					//keyword : $('.land').val(),
					startDate: $('.startDate').val(),
					endDate: $('.endDate').val(),
				},

				url: "http://localhost:8088/trip/board/search.do",

				success: function (data) {
					//alert("송신완료");

					var searchList = JSON.parse(data).searchList;

					if (searchList === "") {
						alert('출발 날짜와 도착날짜를 확인해주세요!')

					} else if (searchList === "contentMiss") {
						alert('검색할 정보가 없습니다!')

					} else {
						var compiled = _.template(searchTemp, null, {
							interpolate: /\{\{\=(.+?)\}\}/g,
							evaluate: /\{\{(.+?)\}\}/g
						});
						//console.log(searchList);
						var html = compiled({ "searchList": searchList });
						//html.trigger("create")
						$('#searchDiv001').html(html);
					}
				}

			});
		}
		$(window).scroll(function(){
		    
		    if( $(this).scrollTop() > 100 ){
		      $("#top_btn").addClass("on");
		    }
		    else{
		      $("#top_btn").removeClass("on");
		    }
		    
		  });
		    
		$("#top_btn").click(function(){
		  window.scrollTo({top : 0, behavior: 'smooth'}); 
		});

	</script>

	</html>