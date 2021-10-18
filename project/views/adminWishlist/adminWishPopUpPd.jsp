<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>관리자 상품 수정</title>
<style>
.wrapper{
	width:100%;
	height:535px;
}
.subject_name_warp{
	font-size: 33px;
    font-weight: bolder;
    padding-left: 15px;
    background-color: lightgreen;
    height: 13%;
    line-height: 70px;
    color: white;
}
.content_wrap{
	height:87%;
}

.table_wrap{
	padding: 20px 35px
}
.table_exist{
	height:251px;
}
.table{
	width: 100%;
    border: 1px solid #d3d8e1;
    text-align: center;
    border-collapse: collapse;
}
.table td{
	padding: 10px 5px;
	border : 1px solid #e9ebf0;
}
.table thead{
	background-color: #f8f9fd;	
	font-weight: 600;
}
.table a{
	color:#1088ed;
	font-weight: 500;
}

.table_empty{
	text-align: center;
    margin: 101px 0 130px 0;
    font-size: 25px;
}
</style>
</head>
<body>
	<div class="subject_name_warp">
			<span>상품 선택</span>
			</div>
			<!-- 검색 영역 -->
			<div class="search_wrap keyword">
				<input type="text" class="form-control keyword1" placeholder="검색할 단어를 입력하세요"
				aria-label="Recipient's username" aria-describedby="button-addon2"
				 style="border:1px solid #ededed;">
				 <button class="btn btn-outline-secondary" type="button" id="button-addon2"
				style="border:1px solid #ededed">검색</button>
			</div> 
			<!-- 검색 영역 끝-->
			<div class="content_wrap">
					<div class="table_wrap">
	               			<div class="table_exist">
		                    	<table class="table tr001">
		                    		<thead>
		                    			<tr>
		                    				<td>상품번호</td>
		                    				<td>상품명</td>
		                    				<td>출발일</td>
		                    				<td>도착일</td>
		                    				<td>가격</td>
		                    				<td>이미지</td>
		                    			</tr>
		                    		</thead>
		                    		<c:forEach items="${list}" var="list">
		                    		<tr>
		                    			<td data-name="${list.pd_seq}">${list.pd_seq}</td>
		                    			<td data-name="${list.pd_name}"><a class="move" href="${list.pd_seq}">${list.pd_name}</a></td>
		                    			<td data-name="${list.pd_startDate}">${list.pd_startDate}</td>
		                    			<td data-name="${list.pd_endDate}">${list.pd_endDate}</td>
		                    			<td data-name="${list.pd_price}">${list.pd_price}</td>
		                    			<td data-name="${list.pd_image}">${list.pd_image}</td>
		                    		</tr>
		                    		</c:forEach>
		                    	</table>
	                    	</div>                			
					</div>
		</div>
</body>
<script>
	/* 	//검색2 ---------------------------------------------------
		$(".keyword1").keyup(function() {
		    $(".tr001").hide();
		    $(".tr001:contains(" + $(this).val() + ")").show();
		});
		// 검색2 끝--------------------------------------------------- */
	
	
		// 자식창의 text값 부모창으로 전달
		$(".move").on("click", function(e){ 
			e.preventDefault();
			
			var pd_seq = $(this).parent().prev().text();
			var pd_name= $(this).text();
			var pd_startDate = $(this).parent().next().text();
			var pd_endDate = $(this).parent().next().next().text();
			var pd_price = $(this).parent().next().next().next().text();
			var pd_image = $(this).parent().next().next().next().next().text();
			
			$(opener.document).find("#pd_seq").val(pd_seq);
			$(opener.document).find("#pd_name").val(pd_name);
			$(opener.document).find("#pd_startDate").val(pd_startDate); 
			$(opener.document).find("#pd_endDate").val(pd_endDate); 
			$(opener.document).find("#pd_price").val(pd_price); 
			$(opener.document).find("#pd_image").val(pd_image); 
			
			window.close();
		});	
</script>
</html>