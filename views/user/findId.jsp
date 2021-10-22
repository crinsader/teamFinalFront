<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> -->
<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>아이디 찾기 페이지</title>
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
		margin-bottom: 10px;
	}
</style>

<body>
	<div style="height: 95vh;">
		<table style="margin: auto; height: 100%; width: 400px;">
			<tr>
				<td>
					<!--컨텐츠--------------------------------------------------------------------------->
					<div id="findIdDiv001">
						<div style="text-align: center; cursor: pointer;"><img style="width: 300px; margin-bottom: 40px;"
								src="http://jjcom0214.cafe24.com/web/OneTrillion/logo02.png" alt="logo01" onclick="GoHome()">
						</div>
						<form action="findIdSucc.do" method="post">
							<div class="">
								<label for="formGroupExampleInput" class="form-label">가입하신 이메일을 입력하여 주세요.</label>
								<span class="id regex" style="float: right;"></span>
								<input type="text" id="u_email" name="u_email" class="form-control"
									id="formGroupExampleInput" placeholder="ex)abcd1234@OneTrillion.com">
							</div>
							<div class="u_email regex"></div>
							<button type="submit" class="btn btn-dark" name="signup" id="findBtn">찾기</button>
							<button type="button" class="btn btn-secondary"
								onclick="location.href='../user/login.do'">취소</button>
						</form>
					</div>
					<!--컨텐츠 끝--------------------------------------------------------------------------->
				</td>
			</tr>
		</table>
	</div>

	<script type="text/javascript">
		$("#u_email").keyup(function () {
			var regex = /.+@[a-z]+(\.[a-z]+){1,2}$/;
			var result = regex.exec($("#u_email").val());
			if (result == null && $("#u_email").val() != "") {
				$(".u_email").html("올바른 이메일 형식으로 입력해주세요");
				$(".u_email").css("color", "red")
			} else {
				$(".u_email").html("");
			}
		});
		
		function GoHome() {
			location.href='http://localhost:8088/trip/';
		}
	</script>
</body>

</html>