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
	</style>

	<body>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark"
			style="height:auto; min-height: 70px; box-shadow: 0 0 20px gray;">
			<div class="container-fluid" style=" padding-right: 0; width: 1300px; ">
				<a class="navbar-brand" href="<%=request.getContextPath() %>/"
					style="font-weight: bold;">OneTrillion</a>
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
															<h5 style="margin-top: 10px; margin-left: 10px;">?????????</h5>
															<hr style="margin-bottom: 10px;">
														</li>
														<li>
															<select name="" class="nation form-select"
																aria-label="Default select example"
																style="margin-bottom: 10px;">
																<option value="korea">??????</option>
																<option value="abroad">??????</option>
															</select>
														</li>
														<li>
															<select name="" class="location form-select"
																aria-label="Default select example"
																style="margin-bottom: 20px;">
																<option value="seoul">??????</option>
																<option value="kyeongki">??????</option>
																<option value="incheon">??????</option>
																<option value="kangwon">??????</option>
																<option value="chungnam">??????</option>
																<option value="chungbuk">??????</option>
																<option value="jeonbuk">??????</option>
																<option value="jeonnam">??????</option>
																<option value="kyungbuk">??????</option>
																<option value="kyungnam">??????</option>
																<option value="jeju">??????</option>

															</select>
														</li>
														<li>
															<h5 style="margin-left: 10px;">??????</h5>
															<hr style="margin-bottom: 10px;">
														</li>
														<li>
															<div class="input-group" style="margin-bottom: 10px;">
																<span class="input-group-text"
																	id="basic-addon1">??????</span>
																<input type="date" class="form-control startDate"
																	value="2021-01-01" aria-label="Username"
																	aria-describedby="basic-addon1">
															</div>
														</li>
														<li>
															<div class="input-group" style="margin-bottom: 20px;">
																<span class="input-group-text"
																	id="basic-addon1">??????</span>
																<input type="date" class="form-control endDate"
																	value="2021-01-15" aria-label="Username"
																	aria-describedby="basic-addon1">
															</div>
														</li>
														<li>
															<h5 style="margin-left: 10px;">??????</h5>
															<hr style="margin-bottom: 10px;">
														</li>
														<li>
															<div class="input-group " style="margin-bottom: 10px;">
																<span class="input-group-text"
																	id="basic-addon1">??????</span>
																<input type="text" class="form-control startDate"
																	value="10000" aria-label="Username"
																	aria-describedby="basic-addon1">
															</div>
														</li>
														<li>
															<div class="input-group " style="margin-bottom: 20px;">
																<span class="input-group-text"
																	id="basic-addon1">??????</span>
																<input type="text" class="form-control startDate"
																	value="1000000" aria-label="Username"
																	aria-describedby="basic-addon1">
															</div>
														</li>
														<li>
															<input class="btn btn-secondary" id="hearderInput001"
																type="button" value="??????" style="width: 100%;"
																onclick="search()">
														</li>

													</ul>
												</li>
								</ul>
							</div>
			</div>
		</nav>
	</body>
	<script>


		$("#div001_in01_in02").on("click", function () {
			location.href = "<%=request.getContextPath() %>/board/search.do";
		})

		$("#btnLogout").on("click", function () {
			if (confirm("?????? ???????????? ???????????????????")) {
				location.href = "<%=request.getContextPath() %>/user/logout.do";
				alert("???????????????????????????");
			}
		});

		$(".dropdown-toggle").on("click", function () {
			$(".dropdown-menu").slideToggle("fast");
		})

		function logout() {
			if (confirm("?????? ???????????? ???????????????????")) {
				location.href = "<%=request.getContextPath() %>/user/logout.do";
				alert("???????????????????????????");
			}
		}


		var searchTemp = `

		{{ for(var i=0; i<searchList.length; i++){  var search=searchList[i]; }}
         <figure>
            <div onclick="searchImgModalClick()" onmouseover="searchImgModalOver()" onmouseout="searchImgModalOut()" class="searchImgModal">???</div>
            <img onmouseover="searchImg01Over()" onmouseout="searchImg01Out()" class="searchImg01" src="{{=search['pd_image'] }} " onclick="location.href='http://localhost:8088/trip/board/detail.do?pd_seq={{=search['pd_seq'] }} ' ">
            <div onmouseover="searchImgModal2Over()" onmouseout="searchImgModal2Out()" class="searchImgModal2">????????????</div>
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
					//alert("????????????");

					var searchList = JSON.parse(data).searchList;

					if (searchList === "") {
						alert('?????? ????????? ??????????????? ??????????????????!')

					} else if (searchList === "contentMiss") {
						alert('????????? ????????? ????????????!')

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


	</script>

	</html>