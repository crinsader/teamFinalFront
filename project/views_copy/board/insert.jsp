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
<h1>board - insert page</h1>
<h1>입력 게시판</h1>
<form action="insert.do" method="post" >
	<input type="hidden" id="good"  value="0">
<table style="margin: auto; border: 1px solid black;">

	<tr>
		<th>상품이름</th>
		<td> <input type="text"  name="pd_name" value="고창 여행"	> </td>
	</tr>
	<tr>
		<th>가격</th>
		<td> <input type="text"  name="pd_price" value="5000"	> </td>
	</tr>
	<tr>
		<th>지도키워드</th>
		<td> <input type="text"  name="pd_keyword" value="고창"	> </td>
	</tr>
	<tr>
		<th>여행 시작일</th>
		<td> <input type="text"  name="pd_startDate" value="2021-01-01"	> </td>
	</tr>
	<tr>
		<th>여행 완료일</th>
		<td> <input type="text"  name="pd_endDate" value="2021-01-07"	> </td>
	</tr>
	<tr>
		<th>조회수</th>
		<td> <input type="text"  name="pd_cnt" value="0"	> </td>
	</tr>
	<tr>
		<th>상품 테마</th>
		<td> <input type="text"  name="pd_theme" 	value="alone"></td>
	</tr>
	<tr>
		<th>인원</th>
		<td> <input type="text"  name="pd_people" value="11"	> </td>
	</tr>
	<tr>
		<th>이미지 사진 주소</th>
		<td> <input type="text"  name="pd_image" value="https://ifh.cc/g/uVCtpi.jpg"> </td>
	</tr>
	<tr>
		<th>상품내용</th>
		<td><textarea rows="15" cols="80" name="pd_content1"></textarea> 	</td>
	</tr>	
</table>
		

		<button type="submit">저장</button>
	</form>

<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>