<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>1대1문의 리스트</title>
            <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
            <!-- ============================================================================@@ 1:1 고객 [문의] 리스트 10/12 한보영 -->  
                
            <style>
                .priQueTr2 li {
                    list-style: none;
                    text-indent: 15px;
                    margin-bottom: 10px;
                    margin-top: 10px;
                    padding-left:20px;
                }

                .priQueTr1:hover {
                    background-color: #f8f9fa;
                }

                .priQueTr2 {
                    display: none;
                }
            </style>
        </head>

        <body>
            
            <c:if test="${sessionScope.u_id != null }">
                <jsp:include page="../include/header2.jsp"></jsp:include>
            </c:if>
            <% // 로그인 처리 -> 로그인 x (로그인페이지 이동)
                String u_id = (String) session.getAttribute("u_id");
                if( u_id != null){
                }else{%>
                <script> alert('로그인이 필요합니다.'); window.location.href = "http://localhost:8088/trip/user/login.do";</script>
                <%}%>

                    <div style="margin:auto; width:1100px; height:800px;">
                        <div class="list-group" id="leftSlide01"
                        style="float:left;width:180px; height:600px; margin-top: 15px; position: relative;">
                        <a href="#" class="list-group-item list-group-item-action"
                            style="background-color: #ededed; color: #343a40; font-weight: bold;">마이페이지</a>
                        <a href="#" class="list-group-item list-group-item-action">개인정보</a>
                        <a href="#" class="list-group-item list-group-item-action">1대1문의</a>
                        <a href="#" class="list-group-item list-group-item-action">찜 내역</a>
                        <a href="#" class="list-group-item list-group-item-action">예약내역</a>
                    </div>
                        <div style="float:right;width:915px;">
                                <nav style="margin-top:15px; height: 45px; line-height: 45px; background-color: #ededed; ">
                                    <a class="navbar-brand"
                                        style="font-size: 100%; margin-left: 20px; color: #343a40; font-weight: bold;"
                                        href="#">1대1문의</a>
                                </nav>
                            <div class="myPageMenu2" id="myPageinfo1" style="margin-top: 40px;">
                                <table
                                    style="width: 100%; border-top: 2px solid #343a40;table-layout: fixed;">
                                    <tr style="text-align: center; height: 45px; background-color: #ededed;">
                                        <th style="width: 5%;">No</th>
                                        <th style="width: 50%;">제목</th>
                                        <th style="width: 15%">문의 유형</th>
                                        <th style="width: 15%">문의 상태</th>
                                        <th style="width: 15%">등록일</th>
                                    </tr>
<!------------여기에 forEach 시작 설정------------------------------------------------------------------------------------------------------------------>
                                     <c:forEach var="client" items="${clientQueList }"> 
                                    <tr class="priQueTr1 tr01"
                                        style="text-align: center; height: 45px; border-top:1px solid #ededed; cursor: pointer;">
                                        <td id="cl_seq">${client.cl_seq  }</td>
                                        <td>${client.cl_title  }</td>
                                        <td>${client.cl_type   }</td>
                                        <td>
	                                        <c:set var="ans" value="${client.ans_content  }" />
											<c:choose>		
											 	<c:when test="${ans ne null}">	
												   <a style="color: #3232FF; font-weight: bold;">답변 완료</a>
												</c:when>	
												<c:otherwise>
	     											<a style="color: gray">답변 대기</a>
	   										    </c:otherwise>
											 </c:choose>  	
                                        </td>
                                        <td>${client.cl_Date  }</td>
                                    </tr>
                                    <tr class="priQueTr2 tr02"
                                        style="height: 45px; border-top: 1px solid #ededed; border-left: 5px solid #343a40;">
                                        <td colspan="4" style="height: auto; word-break: break-all;">
                                            <ul>
                                                <li id="cl_content">
                                                   ${client.cl_content  }
                                                </li>
                                            </ul>
                                        </td>
                                        <td style="text-align: center;">
                                            <a class="btn btn-secondary" href="#" role="button" onclick="cl_btn_delete(${client.cl_seq})">삭제</a>     
                                            <a class="btn btn-secondary" role="button" href="modify.do?cl_seq=${client.cl_seq}">수정</a>
                                        </td>
                                    </tr>
							<!-- 답변 창 -->
                                    <c:set var="ans" value="${client.ans_content  }" />
											<c:choose>		
											 	<c:when test="${ans ne null}">	<!-- 만약 답변 내용이 있으면 tr이 보이게 하고 -->
													<tr class="priQueTr2" style="height: 45px; border-left: 5px solid #343a40;">
				                                        <td style="text-align: right;">&raquo;</td>
				                                        <td colspan="4"
				                                            style="border-top: 1px solid #ededed;height: auto; word-break: break-all;">
				                                            <ul>
				                                                <li><span class="ans_content">${client.ans_content  }</span></li>
				                                            </ul>
				                                        </td>
				                                    </tr>	
												</c:when>	
												<c:otherwise><!-- 없으면 tr이 안보이게 하고 -->
													<tr style="display: none;"></tr>		     											
	   										    </c:otherwise>
									</c:choose>  	
                            <!-- 답변 창 -->
                                    </c:forEach>   
<!------------여기에 forEach 끝 설정------------------------------------------------------------------------------------------------------------------>
                                    <tr style="height: 10px; background-color: #ededed;">
                                        <td colspan="5"></td>
                                    </tr>
                                </table>
                            <!-- 하단 페이징/검색----------------------------------------------------------------------------------------------------------------------->
                                <div style="width: 100%; margin-top: 10px;">
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
                                        <!--검색2 ------------------------------------>
                                        <div class="input-group mb-3" style="width: 300px; float: left;margin-right: 10px;">
                                            <input type="text" class="form-control keyword" placeholder="검색할 단어를 입력하세요"
                                                aria-label="Recipient's username" aria-describedby="button-addon2"
                                                style="border:1px solid #ededed;">
                                            <select class="search"
                                                style="width:80px;border:1px solid #ededed; color: gray; padding-left: 10px; cursor: pointer;">
                                                <option value="title">제목</option>
                                                <option value="content" selected>내용</option>
                                            </select>
                                        </div>
                                        <!----------검색2 끝------------------------------->
                                        <input class="btn btn-secondary" type="button" value="문의등록"
                                        onclick="location.href='<%=request.getContextPath() %>/myPage/input.do' ">
                                    </div>
                                </div>
                                <!-- 하단 페이징/검색 끝----------------------------------------------------------------------------------------------------------------------->
                            </div>
                        </div>
                    </div>
                    <script>
                        $(document).ready(function () {
                            $(".priQueTr1").on("click", function () {
                                if ($(this).next().css("display") == "none") {
                                    $(this).next().css("display", "none")
                                    $(this).next().next().css("display", "none")
                                    $(this).css("border-left", "5px solid #343a40")
                                    $(this).next().css("display", "table-row")
                                    $(this).next().next().css("display", "table-row")
                                } else {
                                    $(this).css("border-left", "")
                                    $(this).next().css("display", "none")
                                    $(this).next().next().css("display", "none")
                                }
                            })

                            // 왼쪽 메뉴 스크롤----------------------------------------------------------------------
                            $(window).scroll(function () {
                                var newpt = $(window).scrollTop() - 60 + "px";
                                if (($("#leftSlide01").offset().top) <= ($(window).scrollTop())) {
                                    $("#leftSlide01").css("top", newpt);
                                } else if (($("#leftSlide01").offset().top > $(window).scrollTop())) {
                                    $("#leftSlide01").css("top", newpt);
                                    if ($(window).scrollTop() <= 60) {
                                        $("#leftSlide01").css("top", "0px");
                                    }
                                }
                            })
                            // 왼쪽 메뉴 스크롤 끝----------------------------------------------------------------------

                            //검색2 ---------------------------------------------------
                            $(".keyword").keyup(function () {
                                $(".tr01").css("border-left", "")
                                $(".tr02").css("border-left", "")
                                $(".tr02").css("display", "none")
                                if ($(".search").val() == "content") {
                                    $(".tr02").hide();
                                    $(".tr02>td:contains(" + $(this).val() + ")").parent().show();
                                    if ($(this).val() == "") {
                                        $(".tr02").hide();
                                    }
                                } else if ($(".search").val() == "title") {
                                    $(".tr01").hide();
                                    $(".tr01>td:contains(" + $(this).val() + ")").parent().show();
                                }

                            });
                            // 검색2 끝---------------------------------------------------
                        });	 //document 끝
                        
                    	//========================================================================@ 삭제하기 
                        function cl_btn_delete(cl_seq){  
						    	var cl_delete = confirm('문의글을 삭제하시겠습니까?');						    	
						    	if(!cl_delete){
						    		return false;
						    	}else{
						    	var seqdata ={"cl_seq":cl_seq};
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
						    };//cl_btn_delete  끝=============================================@삭제하기 	
                            
                    </script>

                    <jsp:include page="../include/footer.jsp"></jsp:include>
        </body>

        </html>