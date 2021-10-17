<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../include/header2.jsp"></jsp:include>

	<div
		style="margin: auto; width: 1100px; height: 700px; border: 1px solid red; text-align: center;">

		<h1>${param.u_id}님 예약에 성공 하셨습니다!!!</h1>
		<br/>
		상품번호 - > ${pd_seq} <br>
		상품이름 -> ${dto.pd_name}<br>
		예약자 이름 -> ${member.u_nickName}<br>

		예약자 이메일 -> ${member.u_email}<br>
		
		<button id="RSV_check">예약 확인하러 가기</button>
		<button id="search_back">목록으로 돌아가기</button>
	</div>
	
	
<jsp:include page="../include/footer.jsp"></jsp:include>


<script type="text/javascript">
		$(document).ready(function() {
			$("#RSV_check").click(function() {
				location.href = "../user/reserveCheck.do";

			});//RSV_check 클릭 함수 끝

			$("#search_back").click(function() {

				location.href = "./search.do";
			});//search_back 클릭 함수 끝
		});//document 끝
</script>
</body>
</html>