<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!DOCTYPE html>
		<html lang="en">

		<head>
			<meta charset="UTF-8">
			<meta hloginp-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<title>관리자로그인 페이지</title>
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
		</head>
		<style>
			* {
				margin: 0;
				padding: 0;
				text-decoration: none;
			}

			#logindiv01 {
				width: 100%;
				height: 95vh;
			}

			#logintable01 {
				margin: auto;
				width: 400px;
				height: 100%;
				text-align: center;
			}

			.btn-dark {
				width: 400px;
				height: 45px
			}

			.input-group-text {
				width: 50px;
			}

			.form-control {
				height: 45px
			}

			.input-group {
				margin-bottom: 5px;
			}
		</style>

		<body>
			<div id="logindiv01">
				<table id="logintable01">
					<tr>
						<td>
							<div>
								<form name="f1" action="adminMain.do" method="post" id="adminLoginForm">
									<div><img style="width: 300px; margin-bottom: 40px; cursor: pointer;"
											src="http://jjcom0214.cafe24.com/web/OneTrillion/logo02.png" alt="logo01" onclick="GoHome()">
									</div>
									<div class="input-group ">
										<span class="input-group-text" id="basic-addon1">ID</span>
										<input type="text" id="AD_ID" name="AD_ID" class="form-control"
											aria-label="Username" aria-describedby="basic-addon1">
									</div>
									<div></div>
									<div class="input-group ">
										<span class="input-group-text" id="basic-addon1">PW</span>
										<input type="password" id="AD_PWD" name="AD_PWD" class="form-control"
											aria-label="Username" aria-describedby="basic-addon1">
									</div>
									<div></div>
									<input type="submit" class="btn btn-dark" value="Login">
									</form>
							</div>
						</td>
					</tr>
				</table>
			</div>
			<script>
				function GoHome() {
					location.href='http://localhost:8088/trip/';
				}
			</script>
		</body>

		</html>