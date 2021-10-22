<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
      <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</head>
<body>
<h1>상품 목록</h1>
     <table id="resListTab1" style="width: 100%; margin-top: 40px; border-top:2px solid #343a40">
       <tr style="height: 70px; background-color: #ededed; text-align: center;">
         <th>상품 번호</th>
         <th>상품 명</th>
         <th>상품가격</th>
         <th>키워드</th>
         <th>조회수</th>
         <th>출발일</th>
         <th>도착일</th>
       </tr>
       <!---------forEach 시작-------------------------------------------------------------------------------------------------------------------------->
       <!--아래 onclick 회원 예약 상세 보기 페이지로 설정 해주세요-->
       <c:forEach var="board" items="${list }">
       <tr class="risListTr1"
         style="height:70px; border-bottom:1px solid #ededed; text-align: center; cursor: pointer;" >
         <td>${board.pd_seq }</td>
         <td>${board.pd_name}</td>
         <td>${board.pd_price}</td>
         <td>${board.pd_keyword}</td>
         <td>${board.pd_cnt}</td>
         <td>${board.pd_startDate }</td>
         <td>${board.pd_endDate }</td>
       </tr>
       </c:forEach> 
       <!---------forEach 끝-------------------------------------------------------------------------------------------------------------------------->
     </table>
       <form id = "moveForm" method = "get">
        <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
        <input type="hidden" name="amount" value="${pageMaker.cri.amount }">  
         <input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
         <input type="hidden" name="type" value="${pageMaker.cri.type }">
        </form>
		<div style="float: left; margin-left: 10px;" class = "pageInfo_area">
			<ul class="pagination pageInfo" id = "pageInfo">
				<c:if test="${pageMaker.prev}">
					<li class="page-item"><a class="page-link"
						href="${pageMaker.startPage - 1}"
						aria-label="Previous"
						style="color: gray; border: 1px solid #ededed"> <span
							aria-hidden="true">&laquo;</span>
					</a></li>
				</c:if>
				<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">
					<li class="page-item pageInfo_btn ${pageMaker.cri.pageNum == num ? "active":"" }"><a class="page-link pageInfo_btn" href="${num}"
						style="color: gray; border: 1px solid #ededed">${num}</a></li>
				</c:forEach>

				<c:if test="${pageMaker.next}">
					<li class="page-item"><a class="page-link"
						href="${pageMaker.endPage + 1}"
						aria-label="Next"
						style="color: gray; border: 1px solid #ededed"> <span
							aria-hidden="true">&raquo;</span>
					</a></li>
				</c:if>
			</ul>
		</div>
		<script type="text/javascript">
    	let moveForm = $('#moveForm');
		$(".pageInfo a").on("click", function(e){
			e.preventDefault();
	        moveForm.find("input[name='pageNum']").val($(this).attr("href"));
	        moveForm.attr("action", "/trip/board/listPage.do");
	        moveForm.submit(); 
	    });
		</script>
</body>
</html>