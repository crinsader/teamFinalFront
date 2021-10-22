<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>1대1문의 리스트</title>
            <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
                integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
                crossorigin="anonymous">
            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
                crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
                integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
                crossorigin="anonymous"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
                integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
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
            <script type="text/javascript">

            </script>
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
                        <div class="list-group" style="float:left;width:180px; height:600px; margin-top: 40px;">
                            <a href="#" class="list-group-item list-group-item-action"
                                style="background-color: #343a40; color: white;">마이페이지</a>
                            <a href="http://localhost:8088/trip/user/myPageInfo.do?u_id=${member.u_id}" class="list-group-item list-group-item-action">개인정보</a>
                            <a href="http://localhost:8088/trip/myPage/list.do " class="list-group-item list-group-item-action">1대1문의</a>
                            <a href="http://localhost:8088/trip/wishlist/list.do?u_id=${member.u_id} " class="list-group-item list-group-item-action">찜 내역</a>
                            <a href="http://localhost:8088/trip/userRes/list.do?u_id=${member.u_id}" class="list-group-item list-group-item-action">예약내역</a>
                            <a href="http://localhost:8088/trip/user/contactUs.do" class="list-group-item list-group-item-action">Contact Us</a>
                        </div>
                        <div style="float:right;width:915px;">
                            <div class="myPageMenu2" id="myPageinfo1">
                                <nav class="navbar-dark bg-dark"
                                    style="margin-top:40px; height: 50px; line-height: 40px;">
                                    <a class="navbar-brand" style="font-size: 100%; margin-left: 20px;"
                                        href="#">1대1문의</a>
                                </nav>
                                <table
                                    style="margin-top:40px; width: 100%; border-top: 2px solid #343a40;table-layout: fixed;">
                                    <tr style="text-align: center; height: 70px; background-color: #ededed;">
                                        <th style="width: 5%;">No</th>
                                        <th style="width: 50%;">제목</th>
                                        <th style="width: 15%">문의 유형</th>
                                        <th style="width: 15%">문의 상태</th>
                                        <th style="width: 15%">등록일</th>
                                    </tr>
<!------------여기에 forEach 시작 설정------------------------------------------------------------------------------------------------------------------>
                                     <c:forEach var="client" items="${clientQueList }"> 
                                    <tr class="priQueTr1"
                                        style="text-align: center; height: 70px; border-top:1px solid #ededed; cursor: pointer;">
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
                                    <tr class="priQueTr2"
                                        style="height: 70px; border-top: 1px solid #ededed; border-left: 5px solid #343a40;">
                                        <td colspan="4" style="height: auto; word-break: break-all;">
                                            <ul>
                                                <li id="cl_content">
                                                   ${client.cl_content  }
                                                </li>
                                            </ul>
                                        </td>
                                        <td style="text-align: center;">
                                            <a class="btn btn-secondary" href="#" role="button" onclick="cl_btn_delete(${client.cl_seq})"
                                                style="height: 40px;">삭제</a>     
                                            <a class="btn btn-secondary" role="button" href="modify.do?cl_seq=${client.cl_seq}" 
                                                style="height: 40px;">수정</a>
                                        </td>
                                    </tr>
							<!-- 답변 창 -->
                                    <c:set var="ans" value="${client.ans_content  }" />
											<c:choose>		
											 	<c:when test="${ans ne null}">	<!-- 만약 답변 내용이 있으면 tr이 보이게 하고 -->
													<tr class="priQueTr2" style="height: 70px; border-left: 5px solid #343a40;">
				                                        <td style="text-align: right;">&raquo;</td>
				                                        <td colspan="4"
				                                            style="border-top: 1px solid #ededed;height: auto; word-break: break-all;">
				                                            <ul>
				                                                <li><span class="ans_content" style="color: blue;">${client.ans_content  }</span></li>
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
                                <div style="text-align: right;">
                                    <input class="btn btn-secondary" type="button" value="문의등록"
                                    onclick="location.href='<%=request.getContextPath() %>/myPage/input.do' "
                                        style="margin-top:10px; height: 40px;">                                        
                                </div>
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