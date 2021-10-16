<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

	<!-- 유효성 검사를 위한 taglib 3개 -->
	<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
			<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
				<!DOCTYPE html>
				<html lang="en">

				<head>
					<meta charset="UTF-8">
					<meta http-equiv="X-UA-Compatible" content="IE=edge">
					<meta name="viewport" content="width=device-width, initial-scale=1.0">
					<title>Document</title>
					<!-- 우편번호 API -->
					<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
					<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
					<jsp:include page="../include/header2.jsp"></jsp:include>
				</head>
				<style>
					* {
						margin: 0;
						padding: 0;
						text-decoration: none;
					}

					#joinDiv001 {
						margin: auto;
						width: 500px;
						height: 800px;
					}

					#joinDiv001>input {
						border: 0;
						width: 500px;
						height: 50px;
						font-size: 110%;
						background-color: gainsboro;
						text-align: center;
					}

					.regex {
						font-size: 12px;
						text-align: center;
					}

					.joinLine {
						height: 2px;
					}

					#joinDiv001>input:hover {
						background-color: #f8f8fa;
					}

					#zipBtn,
					#signupbtn,
					#resignupbtn {
						color: white;
					}

					#zipBtn:hover,
					#signupbtn:hover,
					#resignupbtn:hover {
						cursor: pointer;
						color: red;
					}

					label {
						display: block;
					}
				</style>

				<body>
					<h1 style="margin-top: 70px; text-align: center;">OneTrillion Member Join</h1>

					<%-- <form:form modelAttribute="userDTO" method="post" id="signform"> --%>
						<form action="join.do" method="POST" id="signform">
							<div id="joinDiv001">
								<div style="height: 70px;"></div>
								<!-- 아이디 입력칸 --------------------------------------------------------------------->
								<input type="text" name="u_id" id="id" placeholder="아이디를 입력하세요"
									style="border-radius: 15px 15px 0px 0px;">
								<div class="id regex"></div>
								<div class="joinLine"></div>
								<%-- <form:input path="u_id" id="u_id" name="u_id" type="text" />
								<form:errors path="u_id" /> --%>
								<!-- 비밀번호 입력 칸 --------------------------------------------------------------------->
								<input type="password" name="u_pwd" id="u_pwd" placeholder="비밀번호를 입력하세요">
								<div class="u_pwd regex"></div>
								<div class="joinLine"></div>
								<%-- <form:input path="u_pwd" id="u_pwd" name="u_pwd" type="password" />
								<form:errors path="u_pwd" /> --%>
								<!-- 비밀번호 확인 입력 칸 --------------------------------------------------------------------->
								<input type="password" id="repw" placeholder="비밀번호를 다시한번 입력하세요">
								<div class="repw regex"></div>
								<div class="joinLine"></div>
								<!-- 이름 입력 칸 --------------------------------------------------------------------->
								<input type="text" name="u_nickName" id="u_nickName" placeholder="닉네임을 입력하세요">
								<div class="u_nickName regex"></div>
								<div class="joinLine"></div>
								<!-- 이메일 입력 칸 --------------------------------------------------------------------->
								<input type="text" name="u_email" id="email" placeholder="이메일을 입력하세요">
								<div class="email regex"></div>
								<div class="joinLine"></div>
								<input type="submit" name="signup" value="작성완료" id="signupbtn"
									style="float:left; width:249px; background-color: black; border-radius: 0px 0px 0px 15px;">
								<input type="reset" value="다시입력" id="resignupbtn"
									style="float:right;width:249px; background-color: black; border-radius: 0px 0px 15px 0px;">
							</div>
						</form>
						<%-- </form:form> --%>

							<script>

								$("#resignupbtn").on("click", function () {
									if ($(".id").val() != null || $(".u_pwd").val() != null || $(".u_nickName").val() != null || $(".email").val() != null || $(".repw").val() != null)
										$(".id").html("");
									$(".u_pwd").html("");
									$(".repw").html("");
									$(".u_nickName").html("");
									$(".email").html("");
								});

								$('input#email').keyup(function () {
									var inputEmail = $(this).val();
									var sendUrl = "http://localhost:8088/trip/user/emailCheckAjax.do?email=" + inputEmail;
									var regex = /.+@[a-z]+(\.[a-z]+){1,2}$/;
									var result = regex.exec($("#email").val());
									$.get(sendUrl, function (data, status) {
										if (status == 'success') {
											if (result == null || data == 'impossible') {
												$(".email").html("이메일 양식이 아니거나 존재하는 이메일 입니다.");
												$(".email").css("color", "red");
											} else if (result != null && data == 'possible') {
												$(".email").html("사용 가능한 이메일입니다.");
												$(".email").css("color", "pink");
											} else {
												$(".email").html("");
											}
										} else {
											alert("오류가 생겼습니다!")
										}
									});
								});// keyup 종료





								$('input#id').keyup(function () {
									var inputId = $(this).val();
									var regex = /^[A-Za-z0-9\d]{8,15}$/;
									var regexspc = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣~!@#$%^&*()_+|<>?:{}]/;
									var result = regex.exec($("#id").val());
									var resultspc = regexspc.exec($("#id").val());
									var sendUrl = "http://localhost:8088/trip/user/idCheckAjax.do?id=" + inputId;
									$.get(sendUrl, function (data, status) {
										if (status === 'success') {
											if (data === 'possible' && inputId != "") {
												$(".id").html("영어 대소문자와 숫자를 혼합하여 8-15자리로 입력하세요 (특수문자 한글제외)");
												$(".id").css("color", "red");
												if (inputId.length > 7 && inputId.length < 16 && resultspc == null && result != null) {
													$(".id").html("사용가능한 아이디입니다!");
													$(".id").css("color", "pink");
												}
											} else if (data === "impossible") {
												$(".id").html("이미 존재하는 아이디입니다!");
												$(".id").css("color", "red");
											} else {
												$(".id").html("");
											}

										} else {
											alert("오류가 생겼습니다!")
										}
									});

								});// keyup 종료


								// 실행함수 ----------------------------------------------------------------------
								$(function () {

									//비밀번호 유효성검사
									$("#repw").prop("readonly", true)
									$("#u_pwd").keyup(function () {
										var regex = /^[a-zA-Z0-9\d]{8,15}$/;
										var regexspc = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣~!@#$%^&*()_+|<>?:{}]/;
										var result = regex.exec($("#u_pwd").val());
										var resultspc = regexspc.exec($("#u_pwd").val());

										if (result == null && $("#u_pwd").val() != "") {
											$(".u_pwd").html("영어와 숫자를 혼합하여 8-15자리로 입력하세요");
											$(".u_pwd").css("color", "red")
											$("#repw").prop("readonly", true)
										} else {
											$(".u_pwd").html("");
											$("#repw").prop("readonly", false)


										}
									});

									// 입력한 비밀번호끼리 맞는지 확인 (이중체크)  
									$("#repw").on("keyup", function () {
										if ($("#u_pwd").val() == $("#repw").val()) {
											$(".repw").html("비밀번호가 일치합니다");
											$(".repw").css("color", "pink");
										} else if ($("#u_pwd").val() != $("#repw").val()) {
											$(".repw").html("비밀번호가 일치하지않습니다");
											$(".repw").css("color", "red");
										} else if ($("#u_pwd").val() != "" && $("#repw").val() == "") {
											$(".repw").html("");
										} else if ($("#u_pwd").val() == "" && $("#repw").val() != "") {
											$(".repw").html("");
										}
									});


									//이름 유효성검사 진행중 10/08
									$("#u_nickName").on("input", function () {
										var regex = /[가-힣]{2,}/;
										var result = regex.exec($("#u_nickName").val());
										var result_empty = $("#u_nickName").val() == "";
										if (result != null) {
											$(".u_nickName").html("좋은 이름이네요!");
											$(".u_nickName").css("color", "pink");
										} else if (result_empty) {
											$(".u_nickName").html("");
										} else if (result == null) {
											$(".u_nickName").html("한글로 2글자 이상 작성해주세요.");
											$(".u_nickName").css("color", "red");
										}
									});

									//회원가입 버튼 눌렀을 때, 빈칸 있으면 다시 유효성 검사 진행    
									$("#signupbtn").on("click", function () {
										var id = $("#id").val();
										var pw = $("#u_pwd").val();
										var name = $("#u_nickName").val();
										var email = $("#email").val();

										var idregex = /^[A-Za-z\d]{8,15}$/;
										var pwregex = /^[A-Za-z\d]{8,15}$/;
										var nameregex = /[가-힣]{2,}/;
										var emailregex = /.+@[a-z]+(\.[a-z]+){1,2}$/;



										var idregexc = idregex.exec(id);
										if (idregexc == null) {
											alert("아이디 양식을 다시 확인해주세요");
											return;
										}

										var pwregexc = pwregex.exec(pw);
										if (pwregexc == null) {
											alert("비밀번호 양식을 다시 확인해주세요");
											return;
										}

										var nameregexc = nameregex.exec(name);
										if (nameregexc == null) {
											alert("이름 양식을 다시 확인해주세요");
											return;
										}

										var emailregexc = emailregex.exec(email);
										if (emailregexc == null) {
											alert("이메일 양식을 다시 확인해주세요");
											return;
										}

										//빈칸이 없으면 제출~
										$("#signform").submit();
										alert("회원가입 성공");
									})
								})
							</script>
							<jsp:include page="../include/footer.jsp"></jsp:include>
				</body>

				</html>