<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그 기록 리스트 페이지</title>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> -->
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
       		<jsp:include page="../include/adminInclude.jsp"></jsp:include>

        <div style="float:right; width: 1500px;height: 100%;">
            <div
                style="margin-top: 40px; width: 1500px; height: 90%; border-radius: 20px; box-shadow: 0 0 20px #ededed;">
                <div class="adminMainDiv1">
                    <p>로그기록 관리</p>
                    <table class="table table-hover">
                        <thead>
                            <tr>
								<th>SEQ</th>
								<th>AD_ID</th>
								<th>PART</th>
								<th>PER_SEQ</th>
								<th>PER_TITLE</th>
								<th>CONTENT</th>
								<th>DATE</th>
                            </tr>
                        </thead>
                        <tbody>
                        	<c:forEach var="board" items="${logRecordList }">
	                            <!-- forEach 문 시작--------------------------------------------------------------------------------------------------------------------------------------->
	                            <tr style="cursor: pointer;" onclick = "" class = "log-record-list">
	                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${board.log_seq }</td>
	                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${board.ad_id }</td>
	                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${board.log_part }</td>
	                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${board.per_seq}</td>
	                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${board.per_title }</td>
	                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${board.log_content }</td>
	                                <td data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg" onclick="">${board.log_date }</td>
	                            </tr>
                            
                            </c:forEach>
                            
                            <!-- forEach 문 끝--------------------------------------------------------------------------------------------------------------------------------------->
                        </tbody>
                    </table>
                           <div style="float: right; margin-right: 10px;" class = "search_wrap">
                            <div class="input-group mb-3 search_area" style="width: 300px; float: left; margin-right: 10px;" >
	                            <select name="type" class = "form-control" style="width:10px;">
	                            
					                <option value="" <c:out value="${pageMaker.cri.type == null?'selected':'' }"/>>Search</option>
					                <option value="T" <c:out value="${pageMaker.cri.type eq 'T'?'selected':'' }"/>>Part</option>
					                <option value="C" <c:out value="${pageMaker.cri.type eq 'C'?'selected':'' }"/>>Title</option>
					                <option value="W" <c:out value="${pageMaker.cri.type eq 'W'?'selected':'' }"/>>Content</option>
					                <option value="TC" <c:out value="${pageMaker.cri.type eq 'TC'?'selected':'' }"/>>Part + Title</option>
					                <option value="TW" <c:out value="${pageMaker.cri.type eq 'TW'?'selected':'' }"/>>Part + Content</option>
					                <option value="TCW" <c:out value="${pageMaker.cri.type eq 'TCW'?'selected':'' }"/>>Part + Title + Content</option>
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
                    
                    <div style="width: 100%;" class = "pageInfo_wrap">
                        <!--페이징 tag 시작----------------------------------------------------------------------------------------------------------------------------------------->
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
                        <!--페이징 tag 끝----------------------------------------------------------------------------------------------------------------------------------------->

                    </div>
                </div>
            </div>
        </div>

    </div>
    <script type="text/javascript">
    	let moveForm = $('#moveForm');
		$(".pageInfo a").on("click", function(e){
			e.preventDefault();
	        moveForm.find("input[name='pageNum']").val($(this).attr("href"));
	        moveForm.attr("action", "/trip/logRecord/list.do");
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
</body>

</html>