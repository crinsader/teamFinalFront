<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<!DOCTYPE html>
		<html lang="en">

		<head>
			<meta charset="UTF-8">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<title>Document</title>
			<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

			<jsp:include page="../include/header2.jsp"></jsp:include>
		</head>
		<style>
			* {
				margin: 0;
				padding: 0;
				text-decoration: none;
			}

			#logdiv001 {
				margin: auto;
				width: 500px;
				height: 700px;
			}

			#logdiv001>div:nth-child(2)>input {
				font-size: 110%;
				width: 500px;
				height: 50px;
				border: none;
				border-radius: 15px 15px 0px 0px;
				background-color: gainsboro;
				text-align: center;
			}

			#logdiv001>div:nth-child(4)>input {
				font-size: 110%;
				width: 500px;
				height: 50px;
				border: none;
				background-color: gainsboro;
				text-align: center;
			}

			#logdiv001>div:nth-child(2)>input:hover,
			#logdiv001>div:nth-child(4)>input:hover {
				background-color: #f8f8fa;
			}

			#logdiv001>div:nth-child(6)>input:nth-child(1) {
				font-size: 110%;
				width: 250px;
				height: 50px;
				border: none;
				border-radius: 0px 0px 0px 15px;
				background-color: black;
				color: white;
				border-right: 1px solid white;
				cursor: pointer;
				text-align: center;
			}

			#logdiv001>div:nth-child(6)>input:nth-child(2) {
				font-size: 110%;
				width: 250px;
				height: 50px;
				border: none;
				border-radius: 0px 0px 15px 0px;
				background-color: black;
				color: white;
				border-left: 1px solid white;
				cursor: pointer;
				text-align: center;
			}

			h1,
			#logdiv001 {
				text-align: center;
			}

			#logdiv001>div:nth-child(6)>input:nth-child(2):hover,
			#logdiv001>div:nth-child(8)>a:hover,
			#logdiv001>div:nth-child(6)>input:nth-child(1):hover {
				color: red;
			}

			#logdiv001>div:nth-child(7) {
				height: 10px;
			}

			#logdiv001>div:nth-child(1) {
				height: 140px;
			}

			#logdiv001>div:nth-child(3),
			#logdiv001>div:nth-child(5) {
				height: 2px;
			}

			.regex {
				font-size: 12px;
				text-align: center;
			}
		</style>

		<body>


			<% String u_id=(String) session.getAttribute("u_id"); if( u_id !=null){%>
				<%}%>


					<h1 style="margin-top: 140px;">안녕하세요 고객님!</h1>
					<h1>OneTrillion에 오신것을 환영합니다!</h1>
					<form name="f1" action="login.do" method="post">
						<div id="logdiv001">
							<div></div>
							<div>
								<input type="text" id="u_id" name="u_id" placeholder="아이디를 입력하세요" value="heeyeon123">
								<div class="u_id regex"></div>
							</div>
							<div></div>
							<div>
								<input type="password" id="u_pwd" name="u_pwd" placeholder="비밀번호를 입력하세요"
									value="heeyeon123">
								<div class="u_pwd regex"></div>
							</div>
							<div></div>
							<div>
								<input type="submit" value="로그인"><input type="button" value="회원가입"
									onclick="location.href='joinagree.do'">
							</div>
							<div></div>
							<div>
								<a href="findId.do">아이디 찾기</a> | <a href="findPw.do">비밀번호 찾기</a>
							</div>
						</div>
					</form>

					<script type="text/javascript">

						$("#u_id").keyup(function () {
							var regex = /^[A-Za-z\d]{8,15}$/;
							var result_blank = regex.exec($("#u_id").val())
							var result = regex.exec($("#u_id").val())
							if (result == null && $("#u_id").val() != "") {
								$(".u_id").html("영어 대소문자와 숫자를 혼합하여 8-15자리로 입력하세요.");
								$(".u_id").css("color", "red")
							} else {
								$(".u_id").html("");
							}
						});


						$("#u_pwd").keyup(function () {
							var regex = /^[A-Za-z\d]{8,15}$/;
							var result_blank = regex.exec($("#u_pwd").val())
							var result = regex.exec($("#u_pwd").val())
							if (result == null && $("#u_pwd").val() != "") {
								$(".u_pwd").html("영어 대소문자와 숫자를 혼합하여 8-15자리로 입력하세요.");
								$(".u_pwd").css("color", "red")
							} else {
								$(".u_pwd").html("");
							}
						});

					</script>

					<jsp:include page="../include/footer.jsp"></jsp:include>
		</body>

		</html>