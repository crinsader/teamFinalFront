<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품 리스트 페이지</title>
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
        .table td,
        .btn001 {
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
        #adminMemtable1 img {
            width: 100%;
        }
        table {
            table-layout: fixed;
            word-break: break-all;
        }
        td {
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
        }
    </style>
</head>

<body>
    <div style="width: 1800px; height: 100vh;">
		<jsp:include page="../include/adminInclude.jsp"></jsp:include>
    <div style="float:right; width: 1500px;height: 100%;">
            <div
                style="margin-top: 40px; width: 1500px; height: 90%; border-radius: 20px; box-shadow: 0 0 20px #ededed;">
                <div class="adminMainDiv1">
                    <p>상품 리스트</p>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <!-- <th scope="col">순번</th> -->
                                <th scope="col" width="50px">상품번호</th>
                                <th scope="col">상품명</th>
                                <th scope="col">상품가격</th>
                                <th scope="col">키워드</th>
                                <th scope="col">출발일</th>
                                <th scope="col">도착일</th>
                                <th scope="col" width="50px">조회수</th>
                                <th scope="col" width="50px">테마</th>
                                <th scope="col" width="25px">기준인원</th>
                                <th scope="col">지역</th>
                                <th scope="col" width="25px">성인</th>
                                <th scope="col" width="25px">미성년자</th>
                                <th scope="col" width="25px">반려동물</th>
                                <th scope="col">성인요금</th>
                                <th scope="col">미성년자요금</th>
                                <th scope="col">반려동물요금</th>
                                <th scope="col">수정/삭제</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- forEach 문 시작--------------------------------------------------------------------------------------------------------------------------------------->
                            <c:forEach var="pdlist" items="${pdList }" varStatus="status"> 
                            <tr style="cursor: pointer;" class="detail tr01">
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${pdlist.pd_seq }</td>
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${pdlist.pd_name }</td>
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${pdlist.pd_price }</td>
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${pdlist.pd_keyword }</td>
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${pdlist.pd_startDate }</td>
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${pdlist.pd_endDate }</td>
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${pdlist.pd_cnt }</td>
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${pdlist.pd_theme }</td>
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${pdlist.pd_people }</td>
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${pdlist.pd_location }</td>
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${pdlist.adult_num }</td>
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${pdlist.teenager_num }</td>
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${pdlist.pet_num }</td>
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${pdlist.adult_price }</td>
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${pdlist.teenager_price }</td>
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${pdlist.pet_price }</td>
								<!-- 리스트에서 안보여줄 값들 -->
                                <td style="display: none;" data-toggle="modal" data-target=".bd-example-modal-lg" onclick="">${pdlist.pd_image }</td>
                                <td  style="display: none;" data-toggle="modal" data-target=".bd-example-modal-lg" onclick="">${pdlist.pd_content1 }</td>
                                <td  style="display: none;" data-toggle="modal" data-target=".bd-example-modal-lg" onclick="">${pdlist.pd_content2 }</td>
                                <td  style="display: none;" data-toggle="modal" data-target=".bd-example-modal-lg" onclick="">${pdlist.pd_content3 }</td>
                                <td  style="display: none;" data-toggle="modal" data-target=".bd-example-modal-lg" onclick="">${pdlist.pd_content4 }</td>
                                <td  style="display: none;" data-toggle="modal" data-target=".bd-example-modal-lg" onclick="">${pdlist.pd_content5 }</td>
                                <td  style="display: none;" data-toggle="modal" data-target=".bd-example-modal-lg" onclick="">${pdlist.pd_contentImage1 }</td>
                                <td  style="display: none;" data-toggle="modal" data-target=".bd-example-modal-lg" onclick="">${pdlist.pd_contentImage2 }</td>
                                <td  style="display: none;" data-toggle="modal" data-target=".bd-example-modal-lg" onclick="">${pdlist.pd_contentImage3 }</td>
                                <td  style="display: none;" data-toggle="modal" data-target=".bd-example-modal-lg" onclick="">${pdlist.pd_contentImage4 }</td>
                                <td  style="display: none;" data-toggle="modal" data-target=".bd-example-modal-lg" onclick="">${pdlist.pd_contentImage5 }</td>
                                <td>
                                    <a class="btn btn-secondary btn001" href="<%=request.getContextPath() %>/adminProduct/modify.do?pd_seq=${pdlist.pd_seq}" role="button"
                                        style="padding: 5px;">수정</a>
                                    <a class="btn btn-secondary btn001" href="#" role="button"
                                        style="padding: 5px;" onclick="del_btn('${pdlist.pd_seq}','${pdlist.pd_name}')">삭제</a>
                                </td>
                            </tr>
                            </c:forEach> 
                            <!-- forEach 문 끝--------------------------------------------------------------------------------------------------------------------------------------->
                        </tbody>
                    </table>
                     <div style="float: right; margin-right: 10px;" class = "search_wrap">
                            <div class="input-group mb-3 search_area" style="width: 300px; float: left; margin-right: 10px;" >
	                            <select name="type" class = "form-control" style="width:10px;">
	                            
					                <option value="" <c:out value="${pageMaker.cri.type == null?'selected':'' }"/>>Search</option>
					                <option value="T" <c:out value="${pageMaker.cri.type eq 'T'?'selected':'' }"/>>상품명</option>
					                <option value="C" <c:out value="${pageMaker.cri.type eq 'C'?'selected':'' }"/>>키워드</option>
					                <option value="W" <c:out value="${pageMaker.cri.type eq 'W'?'selected':'' }"/>>내용</option>
					                <option value="TC" <c:out value="${pageMaker.cri.type eq 'TC'?'selected':'' }"/>>상품명 + 키워드</option>
					                <option value="TW" <c:out value="${pageMaker.cri.type eq 'TW'?'selected':'' }"/>>상품명 + 내용</option>
					                <option value="TCW" <c:out value="${pageMaker.cri.type eq 'TCW'?'selected':'' }"/>>상품명 + 키워드 + 내용</option>
					            </select>   
					            
                                <input type="text" class="form-control keyword" placeholder="검색할 단어를 입력하세요"
                                    aria-label="Recipient's username" aria-describedby="button-addon2"
                                    style="border:1px solid #ededed;" name = "keyword" value = "${pageMaker.cri.keyword }">
                                <button class="btn btn-outline-secondary" type="button" id="button-addon2"
                                    style="border:1px solid #ededed">검색</button>
                               
                            </div>
                            
                        </div>
                    <form id = "moveForm" method = "get">
				        <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
				        <input type="hidden" name="amount" value="${pageMaker.cri.amount }">  
				         <input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
				         <input type="hidden" name="type" value="${pageMaker.cri.type }">
                    </form>
                    <div style="width: 100%;">
                        <!--페이징 tag----------------------------------------------------------------------------------------------------------------------------------------->
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
                        <!--페이징 tag----------------------------------------------------------------------------------------------------------------------------------------->

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Modal----------------------------------------------------------------------------------------------------------------->
    <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">상품 상세 보기</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <table id="adminMemtable1" style="width: 100%; border-top: 2px solid #343a40;">
                   <!--  <tr>
                        <th>순번</th>
                        <td id="list_seq"></td>
                    </tr> -->
                    <tr>
                        <th>상품번호</th>
                        <td id="pd_seq"></td>
                    </tr>
                    <tr>
                        <th>상품명</th>
                        <td id="pd_name"></td>
                    </tr>
                    <tr>
                        <th>상품가격</th>
                        <td id="pd_price"></td>
                    </tr>
                    <tr>
                        <th>키워드</th>
                        <td id="pd_keyword"></td>
                    </tr>
                    <tr>
                        <th>출발일</th>
                        <td id="pd_startDate"></td>
                    </tr>
                    <tr>
                        <th>도착일</th>
                        <td id="pd_endDate"></td>
                    </tr>
                    <tr>
                        <th>조회수</th>
                        <td id="pd_cnt"></td>
                    </tr>
                    <tr>
                        <th>테마</th>
                        <td id="pd_theme"></td>
                    </tr>
                    <tr>
                        <th>기준인원</th>
                        <td id="pd_people"></td>
                    </tr>
                    <tr>
                        <th>지역</th>
                        <td id="pd_location"></td>
                    </tr>
                    <tr>
                        <th>성인 인원</th>
                        <td id="adult_num"></td>
                    </tr>
                    <tr>
                        <th>미성년자 인원</th>
                        <td id="teenager_num"></td>
                    </tr>
                    <tr>
                        <th>반려동물 수</th>
                        <td id="pet_num"></td>
                    </tr>
                    <tr>
                        <th>성인 추가요금</th>
                        <td id="adult_price"></td>
                    </tr>
                    <tr>
                        <th>미성년자 추가요금</th>
                        <td id="teenager_price"></td>
                    </tr>
                    <tr>
                        <th>반려동물 추가요금</th>
                        <td id="pet_price"></td>
                    </tr>
                    <tr>
                        <th>대표이미지</th>
                        <td style="padding-left: 0;"><img id="pd_image" src="" alt="PD_IMAGE"></td>
                    </tr>
                    <tr>
                        <th>대표이미지 URL</th>
                        <td id="pd_image" value=""></td>
                    </tr>
                    <tr>
                        <th>컨텐츠 1</th>
                        <td style="padding: 0;" id="exampleFormControlTextarea1"></td>
                    </tr>
                    <tr>
                        <th>상품이미지1</th>
                        <td id="pd_contentImage1"><img id="pd_contentImage1" src="" alt="" style="width:90%;" height="100px" /></td>
                    </tr>
<!--                     <tr>
                        <th>이미지 URL 1</th>
                        <td value=""></td>
                    </tr> -->
                    <tr>
                        <th>컨텐츠2</th>
                        <td style="padding: 0;" id="exampleFormControlTextarea2"></td>
                    </tr>
                    <tr>
                        <th>상품이미지2</th>
                        <td id="pd_contentImage2"><img id="pd_contentImage2" src="" alt="" style="width:90%;" height="100px" /></td>
                    </tr>
<!--                     <tr>
                        <th>이미지 URL 2</th>
                        <td value=""></td>
                    </tr> -->
                    <tr>
                        <th>컨텐츠3</th>
                        <td style="padding: 0;" id="exampleFormControlTextarea3"></td>
                    </tr>
                    <tr>
                        <th>상품이미지3</th>
                        <td id="pd_contentImage3"><img id="pd_contentImage3" src="" alt="" style="width:90%;" height="100px" /></td>
                    </tr>
<!--                     <tr>
                        <th>이미지 URL 3</th>
                        <td value=""></td>
                    </tr> -->
                    <tr>
                        <th>컨텐츠4</th>
                        <td style="padding: 0;" id="exampleFormControlTextarea4"></td>
                    </tr>
                    <tr>
                        <th>상품이미지4</th>
                        <td id="pd_contentImage4"><img id="pd_contentImage4" src="" alt="" style="width:90%;" height="100px" /></td>
                    </tr>
<!--                     <tr>
                        <th>이미지 URL 4</th>
                        <td value=""></td>
                    </tr> -->
                    <tr>
                        <th>컨텐츠5</th>
                        <td style="padding: 0;" id="exampleFormControlTextarea5"></td>
                    </tr>
                    <tr>
                        <th>상품이미지5</th>
                        <td id="pd_contentImage5"><img id="pd_contentImage5" src="" alt="" style="width:90%;" height="100px" /></td>
                    </tr>
<!--                     <tr>
                        <th>이미지 URL 5</th>
                        <td value=""></td>
                    </tr> -->
                </table>
                <div style="text-align: right;">
                    <a class="btn btn-secondary" href="#" role="button"
                        style="margin-top:10px; margin-bottom: 10px;" onclick="modi_modal()">수정</a>
                    <a class="btn btn-secondary" href="#" role="button"
                        style="margin-top:10px; margin-bottom: 10px; margin-right: 10px;" onclick="del_modal()">삭제</a>
                </div>
            </div>
        </div>
    </div>
    <!--Modal 끝----------------------------------------------------------------------------------------------------------------->
</body>
<script>

// 삭제
function del_btn(pd_seq, pd_name){
	var deleteConfirm = confirm("상품번호 [" + pd_seq + "]번의 [" + pd_name + "] 상품을 삭제하시겠습니까?");
	if(!deleteConfirm){
		return false;
	}else{
	    $.ajax({
	        url:"delete.do",
	        type:'POST',
	        data: {"pd_seq":pd_seq},
	        success:function(data){
	            alert("정상적으로 삭제되었습니다.");
	            location.href = "http://localhost:8088/trip/adminProduct/list.do";				            	            
	        }
	    });	//ajax 종료
	} // else 종료
} // function 종료

// 모달창 내 삭제
function del_modal(){
	var pd_seq = $("#pd_seq").text();
	var pd_name = $("#pd_name").text();
	
	var deleteConfirm = confirm("상품번호 [" + pd_seq + "]번의 [" + pd_name + "] 상품을 삭제하시겠습니까?");
	if(!deleteConfirm){
		return false;
	}else{
	    $.ajax({
	        url:"delete.do",
	        type:'POST',
	        data: {"pd_seq":pd_seq},
	        success:function(data){
	            alert("정상적으로 삭제되었습니다.");
	            location.href = "http://localhost:8088/trip/adminProduct/list.do";				            	            
	        }
	    });	//ajax 종료
	} // else 종료
}// function 종료

// 모달창 내 수정
function modi_modal(){
	var pd_seq = $("#pd_seq").text();
	location.href = "http://localhost:8088/trip/adminProduct/modify.do?pd_seq="+pd_seq;		
}

$(document).ready(function(){       
    $(".detail").on("click", function(){
    	 var pd_seq = $(this).children("td:nth-child(1)").text(); 
    	 var pd_name = $(this).children("td:nth-child(2)").text(); 
    	 var pd_price = $(this).children("td:nth-child(3)").text();
    	 var pd_keyword = $(this).children("td:nth-child(4)").text();
    	 var pd_startDate = $(this).children("td:nth-child(5)").text();  
    	 var pd_endDate = $(this).children("td:nth-child(6)").text(); 
    	 var pd_cnt = $(this).children("td:nth-child(7)").text();  
    	 var pd_theme = $(this).children("td:nth-child(8)").text(); 
    	 var pd_people = $(this).children("td:nth-child(9)").text(); 
    	 var pd_location = $(this).children("td:nth-child(10)").text(); 
    	 var adult_num = $(this).children("td:nth-child(11)").text(); 
    	 var teenager_num = $(this).children("td:nth-child(12)").text(); 
    	 var pet_num = $(this).children("td:nth-child(13)").text(); 
    	 var adult_price = $(this).children("td:nth-child(14)").text(); 
    	 var teenager_price = $(this).children("td:nth-child(15)").text(); 
    	 var pet_price = $(this).children("td:nth-child(16)").text(); 
    	 var pd_image = $(this).children("td:nth-child(17)").text();  
    	 var pd_content1 = $(this).children("td:nth-child(18)").text(); 
    	 var pd_content2 = $(this).children("td:nth-child(19)").text(); 
    	 var pd_content3 = $(this).children("td:nth-child(20)").text(); 
    	 var pd_content4 = $(this).children("td:nth-child(21)").text(); 
    	 var pd_content5 = $(this).children("td:nth-child(22)").text(); 
    	 var pd_contentImage1 = $(this).children("td:nth-child(23)").text(); 
    	 var pd_contentImage2 = $(this).children("td:nth-child(24)").text(); 
    	 var pd_contentImage3 = $(this).children("td:nth-child(25)").text();   
    	 var pd_contentImage4 = $(this).children("td:nth-child(26)").text();   
    	 var pd_contentImage5 = $(this).children("td:nth-child(27)").text();  
    	 
    	 $('#pd_seq').text(pd_seq);
    	 $('#pd_name').text(pd_name);
    	 $('#pd_price').text(pd_price);
    	 $('#pd_keyword').text(pd_keyword);
    	 $('#pd_startDate').text(pd_startDate);
    	 $('#pd_endDate').text(pd_endDate);
    	 $('#pd_cnt').text(pd_cnt);
    	 $('#pd_theme').text(pd_theme);
    	 $('#pd_people').text(pd_people);
    	 $('#pd_location').text(pd_location);
    	 $('#adult_num').text(adult_num);
    	 $('#teenager_num').text(teenager_num);
    	 $('#pet_num').text(pet_num);
    	 $('#adult_price').text(adult_price);
    	 $('#teenager_price').text(teenager_price);
    	 $('#pet_price').text(pet_price);
    	 $('#pd_image').prop("src",pd_image); 
    	 $('#pd_contentImage1').prop("src",pd_contentImage1); 
    	 $('#pd_contentImage2').prop("src",pd_contentImage2); 
    	 $('#pd_contentImage3').prop("src",pd_contentImage3); 
    	 $('#pd_contentImage4').prop("src",pd_contentImage4); 
    	 $('#pd_contentImage5').prop("src",pd_contentImage5); 
    	 $('#exampleFormControlTextarea1').text(pd_content1);
    	 $('#exampleFormControlTextarea2').text(pd_content2);
    	 $('#exampleFormControlTextarea3').text(pd_content3);
    	 $('#exampleFormControlTextarea4').text(pd_content4);
    	 $('#exampleFormControlTextarea5').text(pd_content5);
    });

}); //document ready 종료
let moveForm = $('#moveForm');
$(".pageInfo a").on("click", function(e){
	e.preventDefault();
    moveForm.find("input[name='pageNum']").val($(this).attr("href"));
    moveForm.attr("action", "/trip/adminProduct/list.do");
    moveForm.submit(); 
});

  $(".search_area button").on("click", function(e){
        e.preventDefault();
        
        let type = $(".search_area select").val();
        let keyword = $(".search_area input[name='keyword']").val();
        
        if(!type){
            alert("검색 종류를 선택하세요.");
            return false;
        }
        
        if(!keyword){
            alert("키워드를 입력하세요.");
            return false;
        }
        moveForm.find("input[name='type']").val(type);
        moveForm.find("input[name='keyword']").val(keyword);
        moveForm.find("input[name='pageNum']").val(1);
        moveForm.submit();
    });
  

</script>
</html>