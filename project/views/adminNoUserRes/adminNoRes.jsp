<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>비회원 예약관리 리스트 페이지</title>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
	integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
	crossorigin="anonymous"></script>
<style>
* {
	margin: 0;
	padding: 0;
}

.list-group-item:hover {
	cursor: pointer;
	background-color: #f8f9fa;
}

.adminMainDiv1 p {
	margin-bottom: 0;
	line-height: 45px;
	text-align: center;
	font-weight: bold;
	background-color: #ededed;
	border-radius: 20px 20px 0 0;
}

.table th {
	font-size: 80%;
	writing-mode: tb-rl;
}

.table td, .btn001 {
	font-size: 80%;
}

#adminMemtable1 th {
	width: 25%;
	height: 40px;
	background-color: #ededed;
	border-bottom: 1px solid white;
	text-align: center;
}

#adminMemtable1 td {
	border-bottom: 1px solid #ededed;
	padding-left: 20px;
}
</style>
</head>

<body>
	<script type="text/javascript">
		function deleteNoUserRes(res_seq, per_title){
      		var res_confirm = confirm('회원 예약을 삭제하시겠습니까?');
      		if(!res_confirm){
      			return false;
      		}else{
      			var resData = {"res_seq" : res_seq,
      							"per_title" : per_title}
      			//console.log(uresData)
      			$.ajax({
			        url:"http://localhost:8088/trip/adminNoUserRes/delete.do",
			        type:'POST',
			        data: resData,
			        success:function(data){
			            alert("삭제되었습니다!");
			            location.href = "http://localhost:8088/trip/adminNoUserRes/list.do";						            	            
			        },
			        error:function(){
			            alert("에러 발생");
			        }
			    });
      		}
		}
		
	</script>


	<div style="width: 1800px; height: 100vh;">
				<jsp:include page="../include/adminInclude.jsp"></jsp:include>

		<div style="float: right; width: 1500px; height: 100%;">
			<div
				style="margin-top: 40px; width: 1500px; height: 90%; border-radius: 20px; box-shadow: 0 0 20px #ededed;">
				<div class="adminMainDiv1">
					<p>비회원 예약관리 리스트</p>
					<table class="table table-hover">
						<thead>
							<tr>
								<th scope="col">RES_SEQ</th>
								<th scope="col">RES_PWD</th>
								<th scope="col">PD_SEQ</th>
								<th scope="col">PD_NAME</th>
								<th scope="col">PD_STARTDATE</th>
								<th scope="col">PD_ENDDATE</th>
								<th scope="col">ADULT_NUM</th>
								<th scope="col">TEENAGER_NUM</th>
								<th scope="col">PET_NUM</th>
								<th scope="col">ADULT_PRICE</th>
								<th scope="col">TEENAGER_PRICE</th>
								<th scope="col">PET_PRICE</th>
								<th scope="col">RES_PRICE</th>
								<th scope="col">RES_PEOPLE</th>
								<th scope="col">RES_NAME</th>
								<th scope="col">RES_BIRTH</th>
								<th scope="col">RES_EMAIL</th>
								<th scope="col">RES_COMMENT</th>
								<th scope="col">RES_PHONE</th>
								<th scope="col">수정/삭제</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="board" items="${noUserResList }">
								<!-- forEach 문 시작--------------------------------------------------------------------------------------------------------------------------------------->
								<tr style="cursor: pointer;" onclick="" class = "noUserResDetail">
									<td data-bs-toggle="modal"
										data-bs-target=".bd-example-modal-lg" onclick="">${board.res_seq }</td>
									<td data-bs-toggle="modal"
										data-bs-target=".bd-example-modal-lg" onclick="">${board.res_pwd}</td>
									<td data-bs-toggle="modal"
										data-bs-target=".bd-example-modal-lg" onclick="">${board.pd_seq }</td>
									<td data-bs-toggle="modal"
										data-bs-target=".bd-example-modal-lg" onclick="">${board.pd_name }</td>
									<td data-bs-toggle="modal"
										data-bs-target=".bd-example-modal-lg" onclick="">${board.pd_startDate }</td>
									<td data-bs-toggle="modal"
										data-bs-target=".bd-example-modal-lg" onclick="">${board.pd_endDate }</td>
									<td data-bs-toggle="modal"
										data-bs-target=".bd-example-modal-lg" onclick="">${board.adult_num }</td>
									<td data-bs-toggle="modal"
										data-bs-target=".bd-example-modal-lg" onclick="">${board.teenager_num }</td>
									<td data-bs-toggle="modal"
										data-bs-target=".bd-example-modal-lg" onclick="">${board.pet_num }</td>
									<td data-bs-toggle="modal"
										data-bs-target=".bd-example-modal-lg" onclick="">${board.adult_price }</td>
									<td data-bs-toggle="modal"
										data-bs-target=".bd-example-modal-lg" onclick="">${board.teenager_price }</td>
									<td data-bs-toggle="modal"
										data-bs-target=".bd-example-modal-lg" onclick="">${board.pet_price }</td>
									<td data-bs-toggle="modal"
										data-bs-target=".bd-example-modal-lg" onclick="">${board.res_price }</td>
									<td data-bs-toggle="modal"
										data-bs-target=".bd-example-modal-lg" onclick="">${board.res_people }</td>
									<td data-bs-toggle="modal"
										data-bs-target=".bd-example-modal-lg" onclick="">${board.res_name }</td>
									<td data-bs-toggle="modal"
										data-bs-target=".bd-example-modal-lg" onclick="">${board.res_birth }</td>
									<td data-bs-toggle="modal"
										data-bs-target=".bd-example-modal-lg" onclick="">${board.res_email }</td>
									<td data-bs-toggle="modal"
										data-bs-target=".bd-example-modal-lg" onclick="">${board.res_comment }</td>
									<td data-bs-toggle="modal"
										data-bs-target=".bd-example-modal-lg" onclick="">${board.res_phone }</td>

									<td><a class="btn btn-secondary btn001"
										onclick="location.href='http://localhost:8088/trip/adminNoUserRes/modify.do?res_seq=${board.res_seq }'"
										role="button" style="padding: 5px;">수정</a> <a
										class="btn btn-secondary btn001" onclick="deleteNoUserRes(${board.res_seq }, '${board.pd_name }')" role="button"
										style="padding: 5px;">삭제</a></td>
								</tr>
							</c:forEach>
							<!-- forEach 문 끝--------------------------------------------------------------------------------------------------------------------------------------->
						</tbody>
					</table>
					<div style="width: 100%;">
						<!--페이징 tag----------------------------------------------------------------------------------------------------------------------------------------->
						<div style="float: left; margin-left: 10px;">
							<ul class="pagination">
								<c:if test="${pageMaker.prev}">
									<li class="page-item"><a class="page-link"
										href="list.do${pageMaker.makeQuery(pageMaker.startPage - 1)}"
										aria-label="Previous"
										style="color: gray; border: 1px solid #ededed"> <span
											aria-hidden="true">&laquo;</span>
									</a></li>
								</c:if>
								<c:forEach begin="${pageMaker.startPage}"
									end="${pageMaker.endPage}" var="idx">
									<li class="page-item"><a class="page-link"
										href="list.do${pageMaker.makeQuery(idx)}"
										style="color: gray; border: 1px solid #ededed">${idx}</a></li>
								</c:forEach>

								<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
									<li class="page-item"><a class="page-link"
										href="list.do${pageMaker.makeQuery(pageMaker.endPage + 1)}"
										aria-label="Next"
										style="color: gray; border: 1px solid #ededed"> <span
											aria-hidden="true">&raquo;</span>
									</a></li>
								</c:if>
							</ul>
						</div>
						<!--페이징 tag----------------------------------------------------------------------------------------------------------------------------------------->
						<div style="float: right; margin-right: 10px;">
							<div class="input-group mb-3"
								style="width: 300px; float: left; margin-right: 10px;">
								<input type="text" class="form-control"
									placeholder="검색할 단어를 입력하세요" aria-label="Recipient's username"
									aria-describedby="button-addon2"
									style="border: 1px solid #ededed;">
								<button class="btn btn-outline-secondary" type="button"
									id="button-addon2" style="border: 1px solid #ededed">검색</button>
							</div>
							<a class="btn btn-secondary" href="insert.do" role="button">등록</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Modal----------------------------------------------------------------------------------------------------------------->
	<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog"
		aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">예약 내역 상세 보기</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<table id="adminMemtable1"
					style="width: 100%; border-top: 2px solid #343a40;">
					<tr>
						<th>순번</th>
						<td>1 [db에서 가져오는것이 아닌 뷰페이지에서 자동으로 순번 설정되게]</td>
					</tr>
					<tr>
						<th>RES_SEQ</th>
						<td id = "res_seq"></td>
					</tr>
					<tr>
						<th>RES_PWD</th>
						<td id = "res_pwd"></td>
					</tr>
					<tr>
						<th>PD_SEQ</th>
						<td id = "pd_seq"></td>
					</tr>
					<tr>
						<th>PD_NAME</th>
						<td id = "pd_name"></td>
					</tr>

					<tr>
						<th>PD_STARTDATE</th>
						<td id = "pd_startDate"></td>
					</tr>
					<tr>
						<th>PD_ENDDATE</th>
						<td id = "pd_endDate"></td>
					</tr>
					<tr>
						<th>ADULT_NUM</th>
						<td id = "adult_num"></td>
					</tr>
					<tr>
						<th>TEENAGER_NUM</th>
						<td id = "teenager_num"></td>
					</tr>
					<tr>
						<th>PET_NUM</th>
						<td id = "pet_num"></td>
					</tr>
					<tr>
						<th>ADULT_PRICE</th>
						<td id = "adult_price"></td>
					</tr>
					<tr>
						<th>TEENAGER_PRICE</th>
						<td id = "teenager_price"></td>
					</tr>
					<tr>
						<th>PET_PRICE</th>
						<td id = "pet_price"></td>
					</tr>
					<tr>
						<th>RES_PRICE</th>
						<td id = "res_price"></td>
					</tr>
					<tr>
						<th>RES_PEOPLE</th>
						<td id = "res_people"></td>
					</tr>
					<tr>
						<th>RES_NAME</th>
						<td id = "res_name"></td>
					</tr>

					<tr>
						<th>RES_BIRTH</th>
						<td id = "res_birth"></td>
					</tr>
					<tr>
						<th>RES_EMAIL</th>
						<td id = "res_email"></td>
					</tr>
					<tr>
						<th>RES_COMMENT</th>
						<td id = "res_comment"></td>
					</tr>
					<tr>
						<th>RES_PHONE</th>
						<td id = "res_phone"></td>
					</tr>
				</table>
				<div style="text-align: right;">
					<a class="btn btn-secondary" href="#" role="button" onclick = "noUserResModalDelete()"
						style="margin-top: 10px; margin-bottom: 10px;">삭제</a> <a
						class="btn btn-secondary" href="#" role="button" onclick = "noUserResModalModfiy()"
						style="margin-top: 10px; margin-bottom: 10px; margin-right: 10px;">수정</a>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">

function noUserResModalDelete(){ 
	var res_seq= $('#res_seq').text();
 	var deleteconfirm = confirm(res_seq+'번 질문을 삭제하시겠습니까?');						    	
	if(!deleteconfirm){
		return false;
	}else{
	var seqData ={"res_seq":res_seq};
	
    $.ajax({
        url:"delete.do",
        type:'POST',
        data: seqData,
        success:function(data){
            alert("삭제되었습니다.");
            location.href = "./list.do";							            	            
        },
        error:function(){
            alert("에러");
        }
    });	
	}		 
	
};

function noUserResModalModfiy(){  
 	var res_seq= $('#res_seq').text();	    	
	location.href = "./modify.do?res_seq="+res_seq;	 
};


$(document).ready(function(){       
    $(".noUserResDetail").on("click", function(){
    	 var res_seq = $(this).children("td:nth-child(1)").text();  
    	 var pd_seq = $(this).children("td:nth-child(2)").text();
    	 var pd_name = $(this).children("td:nth-child(3)").text();
    	 var pd_startDate = $(this).children("td:nth-child(4)").text();
    	 var pd_endDate = $(this).children("td:nth-child(5)").text();
    	 var adult_num = $(this).children("td:nth-child(6)").text();
    	 var teenager_num = $(this).children("td:nth-child(7)").text();
    	 var pet_num = $(this).children("td:nth-child(8)").text();
    	 var adult_price = $(this).children("td:nth-child(9)").text();
    	 var teenager_price = $(this).children("td:nth-child(10)").text();
    	 var pet_price = $(this).children("td:nth-child(11)").text();
    	 var res_price = $(this).children("td:nth-child(12)").text();
    	 var res_people = $(this).children("td:nth-child(13)").text();
    	 var res_name = $(this).children("td:nth-child(14)").text();
    	 var res_pwd = $(this).children("td:nth-child(15)").text();
    	 var res_birth = $(this).children("td:nth-child(16)").text();
    	 var res_email = $(this).children("td:nth-child(17)").text();
    	 var res_comment = $(this).children("td:nth-child(18)").text();
    	 var res_phone = $(this).children("td:nth-child(19)").text();
    	   	 
     	 $('#res_seq').text(res_seq);
     	 $('#pd_seq').text(pd_seq);
     	 $('#pd_name').text(pd_name);
     	 $('#pd_startDate').text(pd_startDate);
     	 $('#pd_endDate').text(pd_endDate);
     	 $('#adult_num').text(adult_num);
     	 $('#teenager_num').text(teenager_num);
     	 $('#pet_num').text(pet_num);
     	 $('#adult_price').text(adult_price);
     	 $('#teenager_price').text(teenager_price);
     	 $('#pet_price').text(pet_price);
     	 $('#res_price').text(res_price);
     	 $('#res_people').text(res_people);
     	 $('#res_name').text(res_name);
     	 $('#res_pwd').text(res_pwd);
     	 $('#res_birth').text(res_birth);
     	 $('#res_email').text(res_email);
     	 $('#res_comment').text(res_comment);
     	 $('#res_phone').text(res_phone);

    })
            
})

</script>

</body>

</html>