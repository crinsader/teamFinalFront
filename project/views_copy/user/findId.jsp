<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>아이디 찾기</title>
<jsp:include page="../include/header2.jsp"></jsp:include>
</head>
<body>
<div style="height:900px;">
<div style="height:300px;"></div>
	<div class="w3-content w3-container w3-margin-top">
		<div class="w3-container w3-card-4">
			<form action="findIdSucc.do" method="post">
				<div class="w3-center w3-large w3-margin-top">
					<h3>아이디 찾기</h3>
				</div>
				<div>
					<p>
						<label>가입하신 이메일을 입력하여 주세요.</label> <input class="w3-input" type="text"
							id="u_email" name="u_email">
					</p>
					<div class="u_email regex"></div>
					<p class="w3-center">
						<button type="submit" id=findBtn
							class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">찾기</button>
						<button type="button" onclick="location.href='../user/login.do'"
							class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-margin-bottom w3-round">취소</button>
					</p>
				</div>
			</form>
		</div>
	</div>
</div>

<script type="text/javascript">
	
	$("#u_email").keyup(function() {
        var regex = /.+@[a-z]+(\.[a-z]+){1,2}$/;
        var result = regex.exec($("#u_email").val());
        if (result == null && $("#u_email").val() != "") {
           $(".u_email").html("올바른 이메일 형식으로 입력해주세요");
           $(".u_email").css("color", "red")
        } else{
           $(".u_email").html("");
        }
     });
</script>
</body>
<jsp:include page="../include/footer.jsp"></jsp:include>
</html>