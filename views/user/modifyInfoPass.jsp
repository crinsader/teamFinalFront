<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>회원정보 변경전 비밀번호 입력</title>
			<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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

				/*------------------------------------------------------------------------------------------------------*/
				#logindiv01 {
					width: 100%;
					height: 100%;

				}

				#logintable01 {
					margin: auto;
					width: 400px;
					height: 100%;
					text-align: center;
				}

				.input-group-sm {
					width: 400px;
					height: 45px;
					margin-bottom: 5px;
				}

				.btn-dark {
					width: 400px;
					height: 45px;
					margin-bottom: 5px;
				}

				.btn-primary {
					height: 45px;
					width: 197px;
					margin-bottom: 5px;
				}

				.btn-success {
					height: 45px;
					width: 197px;
					margin-bottom: 5px;
					margin-right: 5px;
				}

				.btn-secondary {
					width: 400px;
					height: 45px;
					margin-bottom: 5px;
				}

				.loginA01 {
					color: gray;
					text-decoration: none;
				}

				.loginA01:hover {
					color: black;
				}

				.input-group {
					height: 45px;
					margin-bottom: 5px;
				}

				.input-group-text {
					width: 50px;
				}
			</style>
		</head>

		<body>
			<c:if test="${sessionScope.u_id != null }">
				<jsp:include page="../include/header2.jsp"></jsp:include>
			</c:if>
			<% // 로그인 처리 -> 로그인 x (로그인페이지 이동)
				String u_id = (String) session.getAttribute("u_id");
				if (u_id != null) {
				} else {
				%>
				<script>
					alert('로그인이 필요합니다.');
					window.location.href = "http://localhost:8088/trip/user/login.do";
				</script>
				<% } %> -->
					<div style="margin:auto; width:1100px; min-height: 800px;">
						<div class="list-group" id="leftSlide01"
							style="float:left;width:180px; height:600px; margin-top: 15px; position: relative;">
							<a href="#" class="list-group-item list-group-item-action"
								style="background-color: #ededed; color: #343a40; font-weight: bold;">마이페이지</a>
							<a href="#" class="list-group-item list-group-item-action">개인정보</a>
							<a href="#" class="list-group-item list-group-item-action">1대1문의</a>
							<a href="#" class="list-group-item list-group-item-action">찜 내역</a>
							<a href="#" class="list-group-item list-group-item-action">예약내역</a>
						</div>
						<div style="float:right; width:915px; height: 70vh;">
							<div>
								<nav
									style="margin-top:15px; height: 45px; line-height: 45px; background-color: #ededed; ">
									<a class="navbar-brand"
										style="font-size: 100%; margin-left: 20px; color: #343a40; font-weight: bold;"
										href="#">개인정보</a>/<a class="navbar-brand"
										style="font-size: 100%; margin-left: 20px; color: #343a40; font-weight: bold;"
										href="#">비밀번호
										입력</a>
								</nav>
							</div>
							<div class="introMenu2" id="introinfo1" style="margin-top: 40px; height: 100%;">
								<!-- 컨텐츠 ---------------------------------------------------------------------------------------------------------------------------------->
								<div id="logindiv01">
									<table id="logintable01">
										<tr>
											<td>
												<div>
													<div><img style="width: 300px; margin-bottom: 40px; cursor: pointer;"
															src="http://jjcom0214.cafe24.com/web/OneTrillion/logo02.png"
															alt="logo01" onclick="GoHome()">
													</div>
													<form name="f1" action="modifyInfoPass.do" method="post" id="form">
														<input id="u_pwd_ori" value="${member.u_pwd }" type="hidden">
														<div class="input-group">
															<span class="input-group-text" id="basic-addon1">ID</span>
															<input type="text" id="staticEmail" name="u_id"
																class="form-control" aria-label="Username"
																aria-describedby="basic-addon1" value="${member.u_id }"
																readonly>
														</div>
														<div class="input-group">
															<span class="input-group-text" id="basic-addon1">PW</span>
															<input type="password" id="inputPassword" name="u_pwd"
																class="form-control" aria-label="Username"
																aria-describedby="basic-addon1">
														</div>
														<div>
															<input type="submit" id="submitbtn" class="btn btn-dark"
																value="확인">
														</div>
														<div style="margin-bottom: 40px; color: gray;"> 비밀번호를 입력해주세요
														</div>

													</form>
												</div>
											</td>
										</tr>
									</table>
								</div>
								<!-- 컨텐츠 ---------------------------------------------------------------------------------------------------------------------------------->
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
							// 왼쪽 메뉴 스크롤 끝---------------------------------------------------------------------

						})
						
						function GoHome() {
							location.href='http://localhost:8088/trip/';
						}

					</script>
		</body>
		<jsp:include page="../include/footer.jsp"></jsp:include>

		</html>