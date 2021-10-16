<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>1대1문의 수정</title>
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
            <style>
                #priQueTab1 tr {
                    height: 70px;
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
                            <a href="#" class="list-group-item list-group-item-action">개인정보</a>
                            <a href="#" class="list-group-item list-group-item-action">1대1문의</a>
                            <a href="#" class="list-group-item list-group-item-action">찜 내역</a>
                            <a href="#" class="list-group-item list-group-item-action">예약내역</a>
                            <a href="#" class="list-group-item list-group-item-action">Contact Us</a>
                        </div>
                        <div style="float:right;width:915px;">
                            <div>
                                <nav class="navbar-dark bg-dark"
                                    style="margin-top:40px; height: 50px; line-height: 40px;">
                                    <a class="navbar-brand" style="font-size: 100%; margin-left: 20px;"
                                        href="list.do" >1대1문의</a><span class="navbar-brand" style="font-size: 100%;">/</span><a
                                        class="navbar-brand" style="font-size: 100%;" href="#">수정</a>
                                </nav>
                            </div>
          <!--@@ modify _ form @@ 한보영 12/12 09:01   ------------------------------------------------------------------------------------>                     
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
                                            style="border: 0; height: 60px;">
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
                                            style="border: 0; height: 60px;">
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
                                    style="margin-top:10px; height: 40px;">취소</a>
                                <a class="btn btn-secondary" href="#" role="button" onclick="cl_btn_delete(${dto.cl_seq})"
                                    style="margin-top:10px; height: 40px;">삭제</a>
                                <input class="btn btn-secondary" type="button" value="수정완료"
                                    style="margin-top:10px; height: 40px;" id="modi_submitbtn">
                            </div>
                        </form>
          <!--@@ modify form  끝 @@------------------------------------------------------------------------------------>      
                        </div>   
                    </div>
                    
                    <script>
                        $(document).ready(function () {                        	
                       //========================================================================@한보영 수정하기 구현 12/12 08:16
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