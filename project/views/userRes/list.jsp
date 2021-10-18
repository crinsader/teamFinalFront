<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>userResList Paging</h1>
	<div>

		<table style="table-layout: fixed; width: 159px" border="1px">
			<colgroup>
				<col style="width: 110px">
				<col style="width: 260px">
				<col style="width: 310px">
				<col style="width: 110px">
				<col style="width: 110px">
				<col style="width: 110px">
				<col style="width: 110px">
			</colgroup>
			<thead>
				<tr>
					<th>예약번호</th>
					<th>상품명</th>
					<th>아이디</th>
					<th>예약자명</th>
					<th>날짜</th>
					<th>총가격</th>
					<th>핸드폰</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="client" items="${userResList }">
					<tr>
						<td><a class = "move" >${client.ures_seq  } </a> </td>
						<td>${client.pd_name  }</td>
						<td>${client.u_id  } </td>
						<td>${client.res_name}</td>
						<td>${client.pd_startDate}~${client.pd_endDate}</td>
						<td>${client.res_price}</td>
						<td>${client.res_phone }</td>


					</tr>
				</c:forEach>

			</tbody>

		</table>
		<h3>${pageMaker}</h3>
		<div class="pull-right">
			<ul class="pagination">
				<c:if test="${pagerMaker.prev}">
				<li class="page-item">
				<a class="page-link" href="${pageMaker.startPage-1 }">Previous</a>
				</li>
				</c:if>
				<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">

					<li class="page-item ${pageMaker.cri.pageNum == num? "active" : "" } ">
					<a class="page-link" href="${num }">${num}</a>
					</li>
				</c:forEach>
				<c:if test="${pagerMaker.next}">
					<li class="page-item">
					<a class="page-link" href="${pageMaker.endPage-1 }">Next</a>
					</li>
				</c:if>
			</ul>


		</div>
		<form id="actionForm" action = "listPage.do" method = "get">
			<input type="hidden" name = "pageNum" value = "${pageMaker.cri.pageNum }" />
			<input type="hidden" name = "amount" value = "${pageMaker.cri.amount }" />
			
		</form>

	<script type="text/javascript">
	var actionForm = $("#actionForm");
	var ures_seq = $('.move').val();
		$(".page-link").on("click", function(e){
			e.preventDefault();
			var targetPage = $(this).attr('href');
			//console.log(targetPage);
			actionForm.find("input[name='pageNum']").val(targetPage);
			//console.log(actionForm.find("input[name='pageNum']").val())
			actionForm.submit();
		});
		

		
	
	</script>
</body>
</html>