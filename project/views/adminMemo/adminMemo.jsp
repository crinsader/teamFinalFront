<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메모 리스트 페이지</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <style>


        .adminMainDiv1 p {
            margin-bottom: 0;
            line-height: 45px;
            text-align: center;
            font-weight: bold;
            background-color: #ededed;
            border-radius: 20px 20px 0 0;
        }

        #adminMemtable1 th {
            height: 40px;
            background-color: #ededed;
            border-bottom: 1px solid white;
            text-align: center;
        }

        #adminMemtable1 td {
            border-bottom: 1px solid #ededed;
            padding-left: 20px;
        }
        table {
            table-layout: fixed;
            word-break: break-all;
            

        }

        .table td {
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
        }
        .table th, .table td{
        text-align:center;
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
                    <p>관리자 메모 리스트</p>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th scope="col" style="width:10%;">NO</th>
                                <th scope="col" style="width:20%;">작성자</th>
                                <th scope="col" style="width:50%;">받는 사람</th>
                                <th scope="col" style="width:50%;">분야</th>
                                <th scope="col" style="width:50%;">메모 내용</th>
                                <th scope="col" style="width:50%;">작성 날짜</th>
                                <th scope="col" style="width:20%;">수정/삭제</th>
                            </tr>
                        </thead>
                        <tbody>
                <!-- forEach 문 시작--------------------------------------------------------------------------------------------------------------------------------------->
                <c:forEach var="memo" items="${memoList }">   
                            <tr style="cursor: pointer;"  onclick="findvalue(${memo.memo_seq  })" class="tr_info">                               
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${memo.memo_seq }</td>
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${memo.ad_id }</td>
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${memo.ad_to }</td>
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${memo.memo_type }</td>
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${memo.memo_content }</td>
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${memo.memo_date }</td>
                                <td>
                          <!--        <button type="button" class="btn btn-secondary btn001" data-bs-toggle="modal" data-bs-target="#modiModal" >수정</button>
                                 -->
                                   <a class="btn btn-secondary btn001" role="button" onclick="location.href='<%=request.getContextPath() %>/adminMemo/modify.do?memo_seq=${memo.memo_seq }' "
                                        style="padding: 5px;">수정</a>
                                    <a class="btn btn-secondary btn001" href="#" role="button" onclick="btn_delete2(${memo.memo_seq}, '${memo.memo_type }')"
                                        style="padding: 5px;">삭제</a>
                                </td>
                            </tr>
               </c:forEach> 
               <!-- forEach 문 끝--------------------------------------------------------------------------------------------------------------------------------------->
                        </tbody>
                    </table>
                    <div style="width: 100%;">
                        <!--페이징 tag 시작----------------------------------------------------------------------------------------------------------------------------------------->
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
                        <!--페이징 tag 끝----------------------------------------------------------------------------------------------------------------------------------------->
                        <div style="float: right; margin-right: 10px;">
                            <div class="input-group mb-3" style="width: 300px; float: left; margin-right: 10px;">
                                <input type="text" class="form-control" placeholder="검색할 단어를 입력하세요"
                                    aria-label="Recipient's username" aria-describedby="button-addon2"
                                    style="border:1px solid #ededed;">
                                <button class="btn btn-outline-secondary" type="button" id="button-addon2"
                                    style="border:1px solid #ededed">검색</button>
                            </div>
             		 <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#inputModal" >등록</button>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Modal---------------------------------------------------------------------------------------------------------------[   상세보기    ]-->
    <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">관리자 메모 상세 보기</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <table id="adminMemtable1" style="width: 100%; border-top: 2px solid #343a40;">
                    <tr>
                        <th style="width:25%;">NO</th>
                        <td id="memo_seq"></td>
                    </tr>
                    <tr>
                        <th>작성자</th>
                        <td id="ad_id"></td>
                    </tr>
                    <tr >
                        <th>받는 사람</th>
                        <td id="ad_to"></td>
                    </tr>
                     <tr >
                        <th>분야</th>
                        <td id="memo_type"></td>
                    </tr>
                     <tr style="height: 300px;">
                        <th>내용</th>
                        <td id="memo_content"></td>
                    </tr>
                     <tr ">
                        <th>직성날짜</th>
                        <td id="memo_date"></td>
                    </tr>
                </table>
                <div style="text-align: right;">
                    <a class="btn btn-secondary" href="#" role="button" onclick="btn_modi()"
                        style="margin-top:10px; margin-bottom: 10px;">수정</a>
                    <a class="btn btn-secondary" href="#" role="button" onclick="btn_delete()"
                        style="margin-top:10px; margin-bottom: 10px; margin-right: 10px;">삭제</a>
                </div>
            </div>
        </div>
    </div>
    <!--Modal 끝----------------------------------------------------------------------------------------------------------------->
    <!--Modal---------------------------------------------------------------------------------------------------------------[   등록하기    ]-->
	   <div class="modal fade" id="inputModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">메모 등록하기</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
	<form action="input.do" method="post"  id="form">   
		      <div class="modal-body">   
		          <div class="mb-3">
		            <label for="recipient-name" class="col-form-label">등록자</label><br>
		            <label for="recipient-name" class="col-form-label">${AD_ID}</label>
		             <input type="hidden" name="ad_id" value="${AD_ID }">
		          </div>
		          <div class="mb-3">
		            <label for="recipient-name" class="col-form-label">받는 사람</label>
		            <input type="hidden" name="ad_to" id="ad_to_in">
		            <select class="form-select form-select-sm" aria-label=".form-select-sm example" id="exampleFormControlSelect1" >
					  <option selected>받는사람을 선택해주세요</option>
					  <option value="모두에게">모두에게</option>
					  <c:forEach var="adminid" items="${adminList }"> 					  
					  <option value="${adminid.AD_ID}">${adminid.AD_ID}</option>						  
					  </c:forEach>	 	
					  <option value="없음">없음</option>
					</select>
		          </div>
		          <div class="mb-3">
		            <label for="recipient-name" class="col-form-label">분야</label>
		             <input type="hidden" name="memo_type" id="memo_type_in">
		            <select class="form-select form-select-sm" aria-label=".form-select-sm example" id="exampleFormControlSelect2">
					  <option selected>분야를 선택해주세요</option>
					  <option value="회원예약">회원예약</option>
					  <option value="비회원예약">비회원예약</option>
					  <option value="회원정보관리">회원정보관리</option>
					  <option value="여행리뷰">여행리뷰</option>
					  <option value="1대1문의">1대1문의</option>
					  <option value="회원찜내역">회원찜내역</option>
					  <option value="상품정보">상품정보</option>
					  <option value="관리자정보">관리자정보</option>
					  <option value="공지사항">공지사항</option>
					  <option value="자주하는질문">자주하는질문</option>
					  <option value="로그기록">로그기록</option>
					  <option value="메모장">메모장</option>
					  <option value="기타">기타</option>					  
					</select>
		          </div>		          
		          <div class="mb-3">
		            <label for="message-text" class="col-form-label" >내용</label>
		            <textarea class="form-control" id="message-text" rows="10" name="memo_content" ></textarea>
		          </div>
		        
		      </div>
		      <div class="modal-footer">
		       <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
		      	<a class="btn btn-primary"  role="button" id="submitbtn_input"
                        style="margin-top:10px; margin-bottom: 10px;">메모 등록</a>
		       
		      </div>
		      </form>
		    </div>
		  </div>
		</div>
    <!--Modal 끝-----------------------------------------------------------------------------------------------------------------> 
<script >
	document.getElementById('submitbtn_input').onclick = function() {   
   		
 	   	 if($('#message-text').val() == ''){ //내용없으면
     		 alert('내용을 입력해주세요')
     	 }else{
     		document.getElementById('form').submit(); //입력완료   
     	 }
 	 }//submitbtn_input 끝
  
	 $('#exampleFormControlSelect1').change(function() { //select box 받는사람
		 $('#ad_to_in').val($('#exampleFormControlSelect1').val());                        		 
	 })
	 $('#exampleFormControlSelect2').change(function() { //select box 메모유형
		 $('#memo_type_in').val($('#exampleFormControlSelect2').val());                        		 
	 })
    
</script>
    
</body>
<script type="text/javascript">

var memo_seq =0;//전역변수에 담기
function findvalue(seq){//매개변수로 받아온 seq를 전역변수로 만들어주기
	memo_seq=seq;
}	


function btn_delete(){  //====================@Modal창 안에서 삭제하기 
	var memo_seq= $('#memo_seq').text();
	console.log(memo_seq)
 	var deleteQ = confirm(memo_seq+'번 메모를 삭제하시겠습니까?');						    	
	if(!deleteQ){
		return false;
	}else{
	var seqdata ={"memo_seq":memo_seq};
	console.log('삭제2 > '+memo_seq)		
	
    $.ajax({
        url:"delete.do",
        type:'POST',
        data: seqdata,
        success:function(data){
            alert("삭제되었습니다.");
            location.href = "./list.do";							            	            
        },
        error:function(){
            alert("에러");
        }
    });	//ajax 끝
	}//if끌		 
	
};//btn_delete  끝=============================================@삭제1	

function btn_delete2(memo_seq, memo_type){  //====================@ lsit삭제
	console.log(memo_seq)
	 var deleteQ = confirm(memo_seq+'번 메모를 삭제하시겠습니까?');						    	
	if(!deleteQ){
		return false;
	}
	else{
	var seqdata ={"memo_seq":memo_seq, "memo_type" : memo_type};		
	
    $.ajax({
        url:"delete.do",
        type:'POST',
        data: seqdata,
        success:function(data){
            alert("삭제되었습니다.");
            location.href = "./list.do";							            	            
        },
        error:function(){
            alert("에러");
        }
    });	//ajax 끝
	}//if끌				 		    	
};//btn_delete  끝=============================================@삭제2 	

$(document).ready(function(){       
    $(".tr_info").on("click", function(){//---------------------------------------- [tr클릭시 표 -> Modal창으로 값 넘기기]
    	 var memo_seq = $(this).children("td:nth-child(1)").text();  //표에있는 것 뽑아서
    	 var ad_id = $(this).children("td:nth-child(2)").text();
    	 var ad_to = $(this).children("td:nth-child(3)").text();
    	 var memo_type = $(this).children("td:nth-child(4)").text();
    	 var memo_content = $(this).children("td:nth-child(5)").text();
    	 var memo_date = $(this).children("td:nth-child(6)").text();
    	
    	 
    	 $('#memo_seq').text(memo_seq); //Modal에 넣어줌
    	 $('#ad_id').text(ad_id);
    	 $('#ad_to').text(ad_to);
    	 $('#memo_type').text(memo_type);
    	 $('#memo_content').text(memo_content);
    	 $('#memo_date').text(memo_date);

    })//tr_onclick끝
            
})//document_ready 끝
function cl_btn_modi(){  //====================@수정
	var memo_seq= $('#memo_seq').text();	    	
	location.href = "./modify2.do?memo_seq="+memo_seq;	
};//cl_btn_delete  끝=============================================@수정하기 	    


</script>
</html>