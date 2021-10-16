<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>1대1문의 리스트 페이지</title>
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
    <div style="width: 1800px; height: 100vh;">
        <div style="float: left; width: 250px; height: 100%; box-shadow: 0 0 20px #ededed; position: fixed;">
            <div style="margin:auto; width: 80%;"><img style="width: 100%; margin-top: 40px; margin-bottom: 40px;"
                    src="http://jjcom0214.cafe24.com/web/OneTrillion/logo02.png" alt="logo01"></div>
            <div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item" onclick="">메인</li>
                    <li class="list-group-item" onclick="">회원예약</li>
                    <li class="list-group-item" onclick="">비회원예약</li>
                    <li class="list-group-item" onclick="">문의</li>
                    <li class="list-group-item" onclick="">리뷰</li>
                    <li class="list-group-item" onclick="">회원</li>
                    <li class="list-group-item" onclick="">상품</li>
                    <li class="list-group-item" onclick="">관리자</li>
                    <li class="list-group-item" onclick="">찜</li>
                    <li class="list-group-item" onclick="">공지사항</li>
                    <li class="list-group-item" onclick="">자주질문</li>
                    <li class="list-group-item" onclick="">로그기록</li>
                    <li class="list-group-item" onclick="">메모장</li>

                </ul>
            </div>
        </div>
        <div style="float:right; width: 1500px;height: 100%;">
            <div
                style="margin-top: 40px; width: 1500px; height: 90%; border-radius: 20px; box-shadow: 0 0 20px #ededed;">
                <div class="adminMainDiv1">
                    <p>1대1문의 리스트</p>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th scope="col">문의 번호</th>
                                <th scope="col">회원 아이디</th>
                                <th scope="col">닉네임</th>
                                <th scope="col">제목</th>
                                <th scope="col">문의 내용	</th>
                                <th scope="col">문의 날짜	</th>
                                <th scope="col">문의 유형</th>
                                <th scope="col">답변상태</th>
                                <th scope="col">수정/삭제</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- forEach 문 시작--------------------------------------------------------------------------------------------------------------------------------------->
                            <c:forEach var="client" items="${clientQueList }" varStatus="status"> 
                            <tr style="cursor: pointer;" onclick="findvalue(${client.cl_seq  })" class="tr_info">
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${client.cl_seq  }</td>
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${client.u_id  }</td>
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick=""> ${client.u_nickName  }</td>
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${client.cl_title  }</td>
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${client.cl_content  }</td>
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${client.cl_Date  }</td>
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${client.cl_type  }</td>
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">
                                <c:forEach var="adAns" items="${adminAnsList }" > <!-- for문-->    	
							   	    <c:set var="admin" value="${adAns.cl_seq  }" />
									<c:choose>		
									 	<c:when test="${admin eq client.cl_seq}">	
										   <a style="color: #3232FF">답변 완료</a><br/> 	
										</c:when>	 
									 </c:choose>  	
						  		</c:forEach>        
                                
                                </td>
                              
                                <td>
                                    <a class="btn btn-secondary btn001" href="#" role="button"
                                        style="padding: 5px;">수정</a>
                                    <a class="btn btn-secondary btn001" href="#" role="button"
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
                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="Previous"
                                        style="color: gray; border:1px solid #ededed">
                                        <span aria-hidden="true">&laquo;</span>
                                        <!-- <span class="sr-only">Previous</span> -->
                                    </a>
                                </li>
                                <li class="page-item"><a class="page-link" href="#"
                                        style="color: gray;border:1px solid #ededed">1</a></li>
                                <li class="page-item"><a class="page-link" href="#"
                                        style="color: gray;border:1px solid #ededed">2</a></li>
                                <li class="page-item"><a class="page-link" href="#"
                                        style="color: gray;border:1px solid #ededed">3</a></li>
                                <li class="page-item"><a class="page-link" href="#"
                                        style="color: gray;border:1px solid #ededed">4</a></li>
                                <li class="page-item"><a class="page-link" href="#"
                                        style="color: gray;border:1px solid #ededed">5</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="Next"
                                        style="color: gray;border:1px solid #ededed">
                                        <span aria-hidden="true">&raquo;</span>
                                        <!-- <span class="sr-only">Next</span> -->
                                    </a>
                                </li>
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
                            <a class="btn btn-secondary" href="#" role="button">등록</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Modal-----------------------------------------------------------------------------------------------------------------누르면 나오는 창 -->
    <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">1대1문의 상세 보기</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <table id="adminMemtable1" style="width: 100%; border-top: 2px solid #343a40;">
                    <tr>
                        <th>문의 번호</th>
                        <td id="CL_SEQ"></td>
                    </tr>
                    <tr>
                        <th>회원 아이디</th>
                        <td id="U_ID"></td>
                    </tr>
                    <tr>
                        <th>닉네임</th>
                        <td id="U_NICKNAME"></td>
                    </tr>
                    <tr>
                        <th>제목</th>
                        <td id="CL_TITLE"></td>
                    </tr>
                    <tr>
                        <th>문의 날짜</th>
                        <td id="CL_DATE"></td>
                    </tr>
                    <tr>
                        <th>문의 유형 </th>
                        <td id="CL_TYPE"> </td>
                    </tr>
                    <tr style="height: 100px;">
                        <th>문의 내용</th>
                        <td id="CL_CONTENT"></td>
                    </tr>
                </table>
                <div style="text-align: right;">
                    <a class="btn btn-secondary" href="#" role="button"
                        style="margin-top:10px; margin-bottom: 10px;">수정</a>
                    <a class="btn btn-secondary" href="#" role="button"
                        style="margin-top:10px; margin-bottom: 10px;">삭제</a>
                    <a class="btn btn-primary" href="#" role="button"
                        style="margin-top:10px; margin-bottom: 10px; margin-right: 10px;">답변등록</a>
                </div>
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">답변</h5>
                </div>
                <table id="adminMemtable1" style="width: 100%; border-top: 2px solid #343a40;">
                    <tr>
                        <th>답변 번호</th>
                        <td id="ans_seq"></td>
                    </tr>
                    <tr>
                        <th>관리자 아이디</th>
                        <td id="ad_id"></td>
                    </tr>
                    <tr>
                        <th>답변 날짜</th>
                        <td id="ans_Date"></td>
                    </tr>
                    <tr style="height: 100px;">
                        <th>답변 내용</th>
                        <td id="ans_content"></td>
                    </tr>
                </table>
                <div style="text-align: right;">
                    <a class="btn btn-primary" href="#" role="button"
                        style="margin-top:10px; margin-bottom: 10px;">답변수정</a>
                    <a class="btn btn-primary" href="#" role="button"
                        style="margin-top:10px; margin-bottom: 10px; margin-right: 10px;">답변삭제</a>
                </div>
            </div>
        </div>
    </div>
    <!--Modal 끝----------------------------------------------------------------------------------------------------------------->
    
    <div>
    <table>
       	<c:forEach var="adminanswer" items="${adminAnsList }" varStatus="status"> 
		    	<tr class="tr_info_admin">
		    		<td>${adminanswer.ans_seq }</td>
		    		<td>${adminanswer.ad_id }</td>
		    		<td>${adminanswer.cl_seq}</td>
		    		<td>${adminanswer.ans_Date }</td>
		    		<td>${adminanswer.ans_content }</td>
		    	</tr>
    	</c:forEach>
    </table>    
    </div>
    
</body>

<script type="text/javascript">
	function findvalue(seq){ 		    		
	}// 함수 끝 




	$(document).ready(function(){
       
        $(".tr_info").on("click", function(){
        	 var CL_SEQ = $(this).children("td:nth-child(1)").text();
        	 var U_ID = $(this).children("td:nth-child(2)").text();
        	 var U_NICKNAME = $(this).children("td:nth-child(3)").text();
        	 var CL_TITLE = $(this).children("td:nth-child(4)").text();
        	 var CL_DATE = $(this).children("td:nth-child(5)").text();
        	 var CL_TYPE = $(this).children("td:nth-child(6)").text();
        	 var CL_CONTENT = $(this).children("td:nth-child(7)").text();      	 
        	 
        	 $('#CL_SEQ').text(CL_SEQ);
        	 $('#U_ID').text(U_ID);
        	 $('#U_NICKNAME').text(U_NICKNAME);
        	 $('#CL_TITLE').text(CL_TITLE);        	 
        	 $('#CL_DATE').text(CL_TYPE); 
        	 $('#CL_TYPE').text(CL_CONTENT); 
        	 $('#CL_CONTENT').text(CL_DATE);
     	
        	 
        	 var ad_clseq= $(".tr_info_admin").children("td:nth-child(1)").text();
        	 console.log(ad_clseq)
        	 if(CL_SEQ == ad_clseq){
        		 
        	 }
        })//tr클릭
        
        
        
       // $(".tr_info_admin").on(function(){
        //	 var ans_seq = $(this).children("td:nth-child(1)").text();
   /*      	 var U_ID = $(this).children("td:nth-child(2)").text();
        	 var U_NICKNAME = $(this).children("td:nth-child(3)").text();
        	 var CL_TITLE = $(this).children("td:nth-child(4)").text();
        	 var CL_DATE = $(this).children("td:nth-child(5)").text();
        	 var CL_TYPE = $(this).children("td:nth-child(6)").text();
        	 var CL_CONTENT = $(this).children("td:nth-child(7)").text();    */   	 
        //	 console.log('ans_seq'+ans_seq);
        	// $('#CL_SEQ').text(CL_SEQ);
/*         	 $('#U_ID').text(U_ID);
        	 $('#U_NICKNAME').text(U_NICKNAME);
        	 $('#CL_TITLE').text(CL_TITLE);        	 
        	 $('#CL_DATE').text(CL_TYPE); 
        	 $('#CL_TYPE').text(CL_CONTENT); 
        	 $('#CL_CONTENT').text(CL_DATE); */
     
       // })//tr클릭
       

	})//document


</script>

</html>