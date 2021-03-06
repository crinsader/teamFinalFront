<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>자주하는질문 리스트 페이지</title>
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
                    <p>자주하는질문 리스트</p>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th scope="col" style="width:10%;">NO</th>
                                <th scope="col" style="width:20%;">제목</th>
                                <th scope="col" style="width:50%;">내용</th>
                                <th scope="col" style="width:20%;">수정/삭제</th>
                            </tr>
                        </thead>
                        <tbody>
                <!-- forEach 문 시작--------------------------------------------------------------------------------------------------------------------------------------->
                <c:forEach var="often" items="${oftenList }">   
                            <tr style="cursor: pointer;"  onclick="findvalue(${often.of_seq  })" class="tr_info">                               
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${often.of_seq }</td>
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${often.of_title }</td>
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${often.of_content } </td>
                                <td>
                                    <a class="btn btn-secondary btn001" href="#" role="button" onclick="location.href='<%=request.getContextPath() %>/adminOften/modify.do?of_seq=${often.of_seq}' "
                                        style="padding: 5px;">수정</a>
                                    <a class="btn btn-secondary btn001" href="#" role="button" onclick="btn_delete2(${often.of_seq  }, '${often.of_title }')"
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
                            <a class="btn btn-secondary"  role="button"
                            	onclick="location.href='<%=request.getContextPath() %>/adminOften/input.do' ">등록</a>
                        </div>
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
                    <h5 class="modal-title" id="exampleModalLabel">자주하는질문 상세 보기</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <table id="adminMemtable1" style="width: 100%; border-top: 2px solid #343a40;">
                    <tr>
                        <th style="width:25%;">NO</th>
                        <td id="OF_SEQ"></td>
                    </tr>
                    <tr>
                        <th>제목</th>
                        <td id="OF_TITLE"></td>
                    </tr>
                    <tr style="height: 300px;">
                        <th>내용</th>
                        <td id="OF_CONTENT"></td>
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
</body>
<script type="text/javascript">

var of_seq =0;//전역변수에 담기
function findvalue(seq){//매개변수로 받아온 seq를 전역변수로 만들어주기
	of_seq=seq
}	


function btn_delete(){  //====================@Modal창 안에서 삭제하기 
	var of_seq= $('#OF_SEQ').text();
	console.log(of_seq)
 	var deleteQ = confirm(of_seq+'번 질문을 삭제하시겠습니까?');						    	
	if(!deleteQ){
		return false;
	}else{
	var seqdata ={"of_seq":of_seq};
	console.log('삭제2 > '+of_seq)		
	
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

function btn_delete2(of_seq, per_title){  //====================@ lsit에서 삭제하기 	
	//console.log(of_seq)
	 var deleteQ = confirm(of_seq+'번 질문을 삭제하시겠습니까?');						    	
	if(!deleteQ){
		return false;
	}
	else{
	var seqdata ={"of_seq":of_seq, "per_title" : per_title};		
	
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


function btn_modi(){  //====================@한보영 Modal창 안에서 [문의글] 수정하기 10/15 
 	var of_seq= $('#OF_SEQ').text();	    	
	location.href = "./modify.do?of_seq="+of_seq;	 
};//btn_modi  끝=============================================@수정하기 	    



$(document).ready(function(){       
    $(".tr_info").on("click", function(){//---------------------------------------- [tr클릭시 표 -> Modal창으로 값 넘기기]
    	 var OF_SEQ = $(this).children("td:nth-child(1)").text();  //표에있는 것 뽑아서
    	 var OF_TITLE = $(this).children("td:nth-child(2)").text();
    	 var OF_CONTENT = $(this).children("td:nth-child(3)").text();
    	
    	 
    	 $('#OF_SEQ').text(OF_SEQ); //Modal에 넣어줌
    	 $('#OF_TITLE').text(OF_TITLE);
    	 $('#OF_CONTENT').text(OF_CONTENT);

    })//tr_onclick끝
            
})//document_ready 끝

//======================================================== nav바
function adminMain(){
	location.href = "http://localhost:8088/trip/adminLogin/adminMain.do"
}
function userResList(){
	location.href = "http://localhost:8088/trip/adminUserRes/list.do"
}






</script>
</html>