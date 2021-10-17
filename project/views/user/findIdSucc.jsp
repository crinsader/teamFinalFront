<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> -->
<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>아이디 찾기 결과 페이지</title>
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
	#findIdDiv001 button,
	#findIdDiv001 input {
		width: 100%;
		height: 45px;
		margin-bottom: 5px;
	}
</style>

<body>
	<div style="height: 95vh;">
		<table style="margin: auto; height: 100%; width: 400px;">
			<tr>
				<td>
					<!--컨텐츠--------------------------------------------------------------------------->
					<div id="findIdDiv001">
						<div style="text-align: center;"><img style="width: 300px; margin-bottom: 40px;"
								src="http://jjcom0214.cafe24.com/web/OneTrillion/logo02.png" alt="logo01">
						</div>

						<div class="card" style="margin-bottom: 5px; text-align: center;">
							<h5 class="card-header" style="height: 45px; line-height: 30px;">아이디 찾기
								검색결과</h5>
							<div class="card-body">
								<p class="card-text">회원님의 아이디는: <strong>${ u_email }</strong> 입니다.</p>
							</div>
						</div>
						<div class="u_email regex"></div>
						<button type="submit" class="btn btn-dark" name="signup" id="loginBtn">로그인</button>
						<button type="button" class="btn btn-secondary"
							onclick="location.href='../user/login.do'">취소</button>
					</div>
					<!--컨텐츠 끝--------------------------------------------------------------------------->
				</td>
			</tr>
		</table>
	</div>
	<script>
		$(function () {
			$("#loginBtn").click(function () {
				location.href = '../user/login.do';
			})
		})
	</script>
</body>

</html>