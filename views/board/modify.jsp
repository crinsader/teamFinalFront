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
<h1>${dto.pd_seq }번 글 수정하기</h1>

<form action="modify.do" method="post" >
<input type="hidden" name="pd_seq"  value="${dto.pd_seq }">
			
<table style="margin: auto; border: 1px solid black;">

	<tr>
		<th>상품이름</th>
		<td> <input type="text"  name="pd_name" 	value="${dto.pd_name }"> </td>
	</tr>
	<tr>
		<th>가격</th>
		<td> <input type="text"  name="pd_price" 	value="${dto.pd_price }"> </td>
	</tr>
	<tr>
		<th>지도키워드</th>
		<td> <input type="text"  name="pd_keyword" 	value="${dto.pd_keyword }"> </td>
	</tr>
	<tr>
		<th>여행 시작일</th>
		<td> <input type="text"  name="pd_startDate" 	value="${dto.pd_startDate }"> </td>
	</tr>
		<tr>
		<th>여행 완료일</th>
		<td> <input type="text"  name="pd_endDate" 	value="${dto.pd_endDate }"> </td>
	</tr>
		<tr>
		<th>상품 개수(재고)</th>
		<td> <input type="text"  name="pd_cnt" 	value="${dto.pd_cnt }"> </td>
	</tr>
		<tr>
		<th>상품 테마</th>
		<td> <input type="text"  name="pd_theme" 	value="${dto.pd_theme }"></td>
	</tr>
		<tr>
		<th>인원</th>
		<td> <input type="text"  name="pd_people" 	value="${dto.pd_people }"> </td>
	</tr>
		<tr>
		<th>이미지 사진 주소</th>
		<td> <input type="text"  name="pd_image" 	value="${dto.pd_image }"> </td>
	</tr>
		<tr>
		<th>상품내용</th>
		<td><textarea rows="15" cols="80" name="pd_content1">${dto.pd_content1 }</textarea> 	</td>
	</tr>	
</table>
		

		<button type="submit">저장</button>
	</form>

<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>
