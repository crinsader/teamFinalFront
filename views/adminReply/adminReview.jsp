<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>후기관리 리스트 페이지</title>
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
	<script type="text/javascript">
		function deleteReply(reply_seq, per_title){
      		var res_confirm = confirm('댓글을 삭제하시겠습니까?');
      		if(!res_confirm){
      			return false;
      		}else{
      			var replyData = {"reply_seq" : reply_seq,
      							"per_title" : per_title}
      			//console.log(uresData)
      			$.ajax({
			        url:"http://localhost:8088/trip/adminReply/delete.do",
			        type:'POST',
			        data: replyData,
			        success:function(data){
			            alert("삭제되었습니다!");
			            location.href = "http://localhost:8088/trip/adminReply/list.do";						            	            
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

        <div style="float:right; width: 1500px;height: 100%;">
            <div
                style="margin-top: 40px; width: 1500px; height: 90%; border-radius: 20px; box-shadow: 0 0 20px #ededed;">
                <div class="adminMainDiv1">
                    <p>후기관리 리스트</p>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th scope="col">REPLY_SEQ</th>
                                <th scope="col">U_ID</th>
                                <th scope="col">PD_SEQ</th>
                                <th scope="col">REPLY_TITLE</th>
                                <th scope="col">REPLY_DATE</th>
                                <th scope="col">REPLY_CONTENT</th>
                                <th scope="col">REPLY_RATE</th>
                                <th scope="col">REPLY_LIKE</th>
                                <th scope="col">수정/삭제</th>
                            </tr>
                        </thead>
                        <tbody>
                        	<c:forEach var="board" items="${replyList }">
	                            <!-- forEach 문 시작--------------------------------------------------------------------------------------------------------------------------------------->
	                            <tr style="cursor: pointer;" onclick = "" class = "replyDetail">
	                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${board.reply_seq }</td>
	                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${board.u_id }</td>
	                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${board.pd_seq }</td>
	                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${board.reply_title}</td>
	                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${board.reply_date }</td>
	                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${board.reply_content }</td>
	                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${board.reply_rate }</td>
	                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${board.reply_like }</td>

									<td><a class="btn btn-secondary btn001" onclick="location.href='http://localhost:8088/trip/adminReply/modify.do?reply_seq=${board.reply_seq }'"
										role="button" style="padding: 5px;">수정</a> 
										<a class="btn btn-secondary btn001" onclick="deleteReply(${board.reply_seq }, '${board.reply_title}' )" role="button" style="padding: 5px;">삭제</a></td>
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
                            <a class="btn btn-secondary" href="insert.do" role="button">등록</a>
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
                    <h5 class="modal-title" id="exampleModalLabel">후기관리 상세 보기</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <table id="adminMemtable1" style="width: 100%; border-top: 2px solid #343a40;">
                    <tr>
                        <th>순번</th>
                        <td>1 [db에서 가져오는것이 아닌 뷰페이지에서 자동으로 순번 설정되게]</td>
                    </tr>
                    <tr>
                        <th>REPLY_SEQ</th>
                        <td id = "reply_seq"></td>
                    </tr>
                    <tr>
                        <th>U_ID</th>
                        <td id = "u_id"></td>
                    </tr>
                    <tr>
                        <th>PD_SEQ</th>
                        <td id = "pd_seq"></td>
                    </tr>
                    <tr>
                        <th>REPLY_TITLE</th>
                        <td id = "reply_title"></td>
                    </tr>
                    <tr>
                        <th>REPLY_DATE</th>
                        <td id = "reply_date"></td>
                    </tr>
                    <tr style="height: 300px;">
                        <th>REPLY_CONTENT</th>
                        <td id = "reply_content"></td>
                    </tr>
                    <tr>
                        <th>REPLY_RATE </th>
                        <td id = "reply_rate"></td>
                    </tr>
                    <tr>
                        <th>REPLY_LIKE </th>
                        <td id = "reply_like"></td>
                    </tr>
                </table>
                <div style="text-align: right;">
                    <a class="btn btn-secondary" href="#" role="button" onclick = "replyModalDelete()"
                        style="margin-top:10px; margin-bottom: 10px;">삭제</a>
                    <a class="btn btn-secondary" href="#" role="button" onclick = "replyModalModfiy()"
                        style="margin-top:10px; margin-bottom: 10px; margin-right: 10px;">수정</a>
                </div>
            </div>
        </div>
    </div>
    <!--Modal 끝----------------------------------------------------------------------------------------------------------------->
    	<script type="text/javascript">

function replyModalDelete(){ 
	var reply_seq= $('#reply_seq').text();
 	var deleteconfirm = confirm(reply_seq+'번 질문을 삭제하시겠습니까?');						    	
	if(!deleteconfirm){
		return false;
	}else{
	var seqData ={"reply_seq":reply_seq};
	
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

function replyModalModfiy(){  
 	var reply_seq= $('#reply_seq').text();	    	
	location.href = "./modify.do?reply_seq="+reply_seq;	 
};


$(document).ready(function(){       
	
    $(".replyDetail").on("click", function(){
    	 var reply_seq = $(this).children("td:nth-child(1)").text();  
    	 var u_id = $(this).children("td:nth-child(2)").text();
    	 var pd_seq = $(this).children("td:nth-child(3)").text();
    	 var reply_title = $(this).children("td:nth-child(4)").text();
    	 var reply_date = $(this).children("td:nth-child(5)").text();
    	 var reply_content = $(this).children("td:nth-child(6)").text();
    	 var reply_rate = $(this).children("td:nth-child(7)").text(); 
    	 var reply_like = $(this).children("td:nth-child(8)").text(); 

    	   	 
     	 $('#reply_seq').text(reply_seq);
     	 $('#u_id').text(u_id);
     	 $('#pd_seq').text(pd_seq);
     	 $('#reply_title').text(reply_title);
     	 $('#reply_date').text(reply_date);
     	 $('#reply_content').text(reply_content);
     	 $('#reply_rate').text(reply_rate);
     	 $('#reply_like').text(reply_like);


    })
            
})

</script>
</body>

</html>