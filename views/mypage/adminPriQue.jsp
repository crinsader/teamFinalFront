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
            <!-- ============================================================================@@ 1:1 관리자 답변 10/14 한보영 -->             
        
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
       		<jsp:include page="../include/adminInclude.jsp"></jsp:include>

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
                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${client.cl_seq  }  </td>
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
										   <a style="color: #3232FF; font-weight: bold;">답변 완료</a><br/> 	
										</c:when>	 
									 </c:choose>  	
						  		</c:forEach>    
                                </td>
                                <td>
                                    <a class="btn btn-secondary btn001" role="button" onclick="location.href='<%=request.getContextPath() %>/admin/modify2.do?cl_seq=${client.cl_seq}' "
                                        style="padding: 5px;">수정</a>
                                    <a class="btn btn-secondary btn001" role="button" onclick="cl_btn_delete2(${client.cl_seq  }, '${client.cl_content  }')"
                                        style="padding: 5px;">삭제</a>
                                </td>
                                <td style="display: none">${client.ans_content  }</td>    
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
                    <a class="btn btn-secondary"  role="button"  onclick="cl_btn_modi()"
                        style="margin-top:10px; margin-bottom: 10px;">수정</a>
                    <a class="btn btn-secondary" role="button" onclick="cl_btn_delete()"
                        style="margin-top:10px; margin-bottom: 10px;">삭제</a>
                    <a class="btn btn-primary" href="#" role="button" onclick="godetail()"
                        style="margin-top:10px; margin-bottom: 10px; margin-right: 10px;">상세보기</a>
                </div>
          <!-- 관리자 답변 -->
          <div id="adminMemtable2">
                <div class="modal-header" >
                    <h5 class="modal-title" id="exampleModalLabel">답변 완료</h5>
                </div>
                <table id="adminMemtable1"  style="width: 100%; border-top: 2px solid #343a40;">
                    <tr style="height: 100px;">
                        <th>답변 내용</th>
                        <td id="ans_content"></td>
                    </tr>
                </table>
           </div>     
            </div>
        </div>
    </div>
    <!--Modal 끝----------------------------------------------------------------------------------------------------------------->
    
  
    
</body>

<script type="text/javascript">

	var cl_seq =0;//전역변수에 담기
	function findvalue(seq){//매개변수로 받아온 seq를 전역변수로 만들어주기
		cl_seq=seq
	}	
	function godetail(){			
		location.href='detail.do?cl_seq='+cl_seq; //그럼여기에서도 쓸 수 있지!
	}//
	
	
	function cl_btn_delete(){  //====================@Modal창 안에서 [문의글] 삭제하기 10/15 		
		var cl_seq= $('#CL_SEQ').text();
		var per_title = $('#CL_CONTENT').text()
		var cl_delete = confirm(cl_seq+'번 문의글을 삭제하시겠습니까?');						    	
    	if(!cl_delete){
    		return false;
    	}else{
    	var seqdata ={"cl_seq":cl_seq, "per_title" : per_title};
    	console.log('삭제2 > '+cl_seq)		
    	
	    $.ajax({
	        url:"delete2.do",
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
    };//cl_btn_delete  끝=============================================@삭제1	
    
    function cl_btn_delete2(cl_seq, per_title){  //====================@ lsit에서 [문의글] 삭제하기 10/15 		

		var cl_delete = confirm(cl_seq+'번 문의글을 삭제하시겠습니까?');						    	
    	if(!cl_delete){
    		return false;
    	}else{
    	var seqdata ={"cl_seq":cl_seq, "per_title":per_title};
    	console.log('삭제2 > '+cl_seq)		
    	
	    $.ajax({
	        url:"delete2.do",
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
    };//cl_btn_delete  끝=============================================@삭제2 	
    
	
    function cl_btn_modi(){  //====================@한보영 Modal창 안에서 [문의글] 수정하기 10/15 
    	var cl_seq= $('#CL_SEQ').text();	    	
		location.href = "./modify2.do?cl_seq="+cl_seq;	
	};//cl_btn_delete  끝=============================================@수정하기 	    
    


	$(document).ready(function(){       
        $(".tr_info").on("click", function(){//---------------------------------------- [tr클릭시 표 -> Modal창으로 값 넘기기]
        	 var CL_SEQ = $(this).children("td:nth-child(1)").text();  //표에있는 것 뽑아서
        	 var U_ID = $(this).children("td:nth-child(2)").text();
        	 var U_NICKNAME = $(this).children("td:nth-child(3)").text();
        	 var CL_TITLE = $(this).children("td:nth-child(4)").text();
        	 var CL_DATE = $(this).children("td:nth-child(5)").text();
        	 var CL_TYPE = $(this).children("td:nth-child(6)").text();
        	 var CL_CONTENT = $(this).children("td:nth-child(7)").text();     
        	 var ans_content = $(this).children("td:nth-child(10)").text();        	 
        	 
        	 $('#CL_SEQ').text(CL_SEQ); //Modal에 넣어줌
        	 $('#U_ID').text(U_ID);
        	 $('#U_NICKNAME').text(U_NICKNAME);
        	 $('#CL_TITLE').text(CL_TITLE);        	 
        	 $('#CL_DATE').text(CL_TYPE); 
        	 $('#CL_TYPE').text(CL_CONTENT); 
        	 $('#CL_CONTENT').text(CL_DATE);
        	 $('#ans_content').text(ans_content); 
     	
        	 
        	 
       	   	//console.log($('#ans_content').text())
       		if($('#ans_content').text() ==''){	 // [답변] 내용이있으면 보이고 아님 안보이게	
       			$('#adminMemtable2').hide()
       		}else{
       			$('#adminMemtable2').show()
       		}
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