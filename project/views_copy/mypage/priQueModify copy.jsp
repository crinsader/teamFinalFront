<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>1대1문의 수정 페이지</title>
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
            <!-- ============================================================================@@ 1:1 고객 [문의] 수정 10/12 한보영 -->  
                
            <style>
                #priQueTab1 tr {
                    height: 45px;
                }

                #priQueTab1 th {
                    background-color: #ededed;
                    border-bottom: 1px solid white;
                }

                #priQueTab1 td {
                    border-bottom: 1px solid #ededed;
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
                        <!--  왼쪽 메뉴 ---------------------------------------------------------------------------------------------->
                        <div class="list-group" id="leftSlide01"
                            style="float:left;width:180px; height:600px; margin-top: 15px; position: relative;">
                            <a href="#" class="list-group-item list-group-item-action"
                                style="background-color: #ededed; color: #343a40; font-weight: bold;">마이페이지</a>
                            <a href="#" class="list-group-item list-group-item-action">개인정보</a>
                            <a href="#" class="list-group-item list-group-item-action">1대1문의</a>
                            <a href="#" class="list-group-item list-group-item-action">찜 내역</a>
                            <a href="#" class="list-group-item list-group-item-action">예약내역</a>
                        </div>
                        <!--  왼쪽 메뉴 끝---------------------------------------------------------------------------------------------->
                        <div style="float:right;width:915px;">
                                <!--  div상단 바---------------------------------------------------------------------------------------------->
                                <nav style="margin-top:15px; height: 45px; line-height: 45px; background-color: #ededed; ">
                                    <a class="navbar-brand"
                                        style="font-size: 100%; margin-left: 20px; color: #343a40; font-weight: bold;"
                                        href="#">1대1문의</a>/<a class="navbar-brand"
                                        style="font-size: 100%; margin-left: 20px; color: #343a40; font-weight: bold;"
                                        href="#">문의수정</a>
                                </nav>
                                <!--  div상단 바 끝---------------------------------------------------------------------------------------------->  
          <!--@@ modify _ form @@ 한보영 10/12 09:01   ------------------------------------------------------------------------------------>                     
                         <form action="modify.do" method="post"  id="form">   
                            <table id="priQueTab1"
                                style="margin-top:40px;width: 100%; border-top: 2px solid #343a40; text-align: center;">
                                <tr>
                                    <th style="width: 30%;">아이디</th>
                                    <td style="width: 70%;">${dto.u_id }<input type="hidden" value="${dto.u_id }" name="u_id">
                                    <input type="hidden" value="${dto.cl_seq }" name="cl_seq"></td>
                                </tr>
                                <tr>
                                    <th>닉네임</th>
                                    <td>${dto.u_nickName  }<input type="hidden" value="${dto.u_nickName  }" name="u_nickName"></td>
                                </tr>
                                <tr>
                                    <th>문의유형</th>
                                    <td>
                                   	    <input type="hidden"  name="cl_type" id="cl_type" value='${dto.cl_type }'>
                                        <select class="form-control" id="exampleFormControlSelect1"
                                            style="border: 0; height: 40px;">
                                            <option value="미선택">문의유형을 선택하세요</option>
                                            <option value="국내여행">국내여행</option>
                                            <option value="테마여행">테마여행</option>
                                            <option value="자유여행">자유여행</option>
                                            <option value="예약조회">예약조회</option>
                                            <option value="기타">기타</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th>제목</th>
                                    <td>
                                        <input type="text" class="form-control" value="${dto.cl_title  }" name="cl_title" id="cl_title"
                                            style="border: 0; height: 40px;">
                                    </td>
                                </tr>
                                <tr>
                                    <th>내용</th>
                                    <td>
                                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="10" name="cl_content"
                                            style="border: 0;">${dto.cl_content  }</textarea>
                                    </td>
                                </tr>
                            </table>
                            <div style="text-align: right;">
                                <a class="btn btn-secondary"  href="list.do" role="button"
                                    style="margin-top:10px; ">취소</a>
                                <a class="btn btn-secondary" href="#" role="button" onclick="cl_btn_delete(${dto.cl_seq})"
                                    style="margin-top:10px; ">삭제</a>
                                <input class="btn btn-secondary" type="button" value="수정완료"
                                    style="margin-top:10px; " id="modi_submitbtn">
                            </div>
                        </form>
          <!--@@ modify form  끝 @@------------------------------------------------------------------------------------>      
                        </div>   
                    </div>
                    
                    <script>
                        $(document).ready(function () {                        	
                       //========================================================================@한보영 수정하기 구현 10/12 08:16
                        	document.getElementById('modi_submitbtn').onclick = function() {                        	

                       	   	 if($('#exampleFormControlSelect1').val() == '미선택'){ //문의 유형을 선택하지 않았을 경우
                           		 alert('문의 유형을 선택해주세요')
                           	 }else if($('#cl_title').val() == ''){ //제목
                           		 alert('제목을 입력해주세요')
                           	 }else if($('#exampleFormControlTextarea1').val() == ''){
                           		 alert('문의 내용을 입력해주세요')
                           	 }else{
                           		 document.getElementById('form').submit(); //수정완료   
                           	 }
                       	};//modi_submitbtn 눌렀을 때 form을 submit!
                        	
                        	 $('#exampleFormControlSelect1').change(function() { //select box에 있는 문의 유형을 hidden inputbox에 넣고 submit 할 때 가져갈거얌
                        		 $('#cl_type').val($('#exampleFormControlSelect1').val());                        		 
                        	 })                        	                         	 
                        	 $("#exampleFormControlSelect1").val($('#cl_type').val());     
                        	 
                        })//document 끝
                        
                    	//========================================================================@한보영 삭제하기 구현 10/13 08:01
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