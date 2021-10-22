<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>관리자 회원 수정</title>
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
			<span>회원 선택</span>
			</div>
			<!-- 검색 영역 -->
			<div class="search_wrap keyword" style="margin-left: 700px; margin-top: 20px;">
				<input type="text" class="form-control keyword1" placeholder="검색할 단어를 입력하세요"
				aria-label="Recipient's username" aria-describedby="button-addon2"
				 style="border:1px solid #ededed; ">
				 <button class="btn btn-outline-secondary" type="button" id="button-addon2"
				style="border:1px solid #ededed">검색</button>
			</div> 
				<!-- 검색 영역 끝 -->
			<div class="content_wrap">
					<div class="table_wrap">
	               			<div class="table_exist">
		                    	<table class="table">
		                    		<thead>
		                    			<tr>
		                    				<td>회원ID</td>
		                    				<td>닉네임</td>
		                    				<td>이메일</td>
		                    			</tr>
		                    		</thead>
		                    		<c:forEach items="${userList}" var="list">
		                    		<tr class="tr001">
		                    			<td data-name="${list.u_id}"><a class="move" href="${list.u_id}">${list.u_id}</a></td>
		                    			<td data-name="${list.u_nickName}">${list.u_nickName}</td>
		                    			<td data-name="${list.u_email}">${list.u_email}</td>
		                    		</tr>
		                    		</c:forEach>
		                    	</table>
	                    	</div>                			
					</div>
		</div>
</body>
<script>
	 	//검색2 ---------------------------------------------------
		$(".keyword1").keyup(function() {
		    $(".tr001").hide();
		    $(".tr001:contains(" + $(this).val() + ")").show();
		});
		// 검색2 끝--------------------------------------------------- 
	
		// 자식창의 text값 부모창으로 전달
		$(".move").on("click", function(e){ 
			e.preventDefault();
			var u_id = $(this).text();
			$(opener.document).find("#u_id").val(u_id);
			window.close();
		});	
</script>
</html>