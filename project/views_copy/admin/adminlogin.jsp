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

		</head>
		<style>
			* {
				margin: 0;
				padding: 0;
				text-align: center;
				text-decoration: none;
			}

			#logdiv001 {
				margin: auto;
				width: 400px;
				height: 800px;
			}

			#logdiv001>div:nth-child(2)>input {
				font-size: 110%;
				width: 400px;
				height: 50px;
				border: none;
				border-radius: 15px 15px 0px 0px;
				background-color: gainsboro;
			}

			#logdiv001>div:nth-child(4)>input {
				font-size: 110%;
				width: 400px;
				height: 50px;
				border: none;
				background-color: gainsboro;
			}

			#logdiv001>div:nth-child(1) {
				height: 400px;
				line-height: 400px;
			}

			#logdiv001>div:nth-child(3) {
				height: 2px;
			}

			#logdiv001>div:nth-child(5) {
				height: 2px;
			}

			#logdiv001>div:nth-child(6)>input {
				font-size: 110%;
				width: 400px;
				height: 50px;
				border: none;
				border-radius: 0px 0px 15px 15px;
				background-color: black;
				color: white;
				border-right: 1px solid white;
				cursor: pointer;
			}

			#logdiv001>div:nth-child(6)>input:hover {
				color: red;
			}

			#logdiv001>div:nth-child(7) {
				height: 10px;
			}

			#logdiv001>div:nth-child(8)>a:hover {
				color: red;
			}


			.regex {
				font-size: 12px;
				text-align: center;
			}
		</style>

		<jsp:include page="../include/header.jsp"></jsp:include>

		<body>



			<form name="f1" action="adminlogin.do" method="post" id="adminLoginForm">
				<div id="logdiv001">
					<div>
						<h1>관리자 로그인 페이지3</h1>
					</div>
					<div>
						<input type="text" id="AD_ID" name="AD_ID" placeholder="아이디를 입력하세요">
					</div>
					<div></div>
					<div>
						<input type="password" id="AD_PWD" name="AD_PWD" placeholder="비밀번호를 입력하세요">
					</div>
					<div></div>
					<div>
						<input type="submit" value="로그인">
					</div>

				</div>
			</form>

			<script>
				$(function () {
					$("#adminLoginForm").submit();
					alert("관리자님 안녕하세요.");
				})
			</script>

		</body>

		</html>