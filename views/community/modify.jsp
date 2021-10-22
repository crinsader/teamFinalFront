<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>커뮤니티 글 수정</title>
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
                <script src="//code.jquery.com/jquery.min.js"></script>
			<script src="http://code.jquery.com/jquery-latest.min.js"></script>
			<script src="//cdn.ckeditor.com/4.7.1/standard/ckeditor.js"></script>
	
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
        
           
                <jsp:include page="../include/header2.jsp"></jsp:include>
         

                    <div style="margin:auto; width:1100px; height:800px;">
                       
                        <div style="float:right;width:1100px;">
                            <div>
                                <nav class="navbar-dark bg-dark"
                                    style="margin-top:40px; height: 50px; line-height: 40px;">
                                    <a class="navbar-brand" style="font-size: 100%; margin-left: 20px;"
                                        href="#">커뮤니티</a><span class="navbar-brand" style="font-size: 100%;">/</span><a
                                        class="navbar-brand" style="font-size: 100%;" href="#">게시글 수정</a>
                                </nav>
                            </div>
 
                            <table id="priQueTab1"
                                style="margin-top:40px;width: 100%; border-top: 2px solid #343a40; text-align: center;">
                                <tr>
                                    <th style="width: 30%;">작성자</th>
                                    <td style="width: 70%;">${dto.u_id}
                                    <input type="hidden" value="${dto.com_date}" name="com_date" id="com_date">
                                    <input type="hidden" value="${dto.com_cnt}" name="com_cnt" id="com_cnt">
                                     <input type="hidden" value="${dto.com_seq}" name="com_seq" id="com_seq"></td>
                                </tr>
                                <tr>
                                    <th>제 목</th>
                                    <td><input type="text" class="form-control" 
                                            style="border: 0; height: 60px;" name="com_title" id="com_title" value="${dto.com_title}"></td>
                                </tr> 
                                <tr>
                                    <th>내용</th>
                                    <td>
                                        <textarea class="form-control" id="com_content" rows="10"
                                            style="border: 0;"  name="com_content">${dto.com_content}</textarea>
                                    </td>
                                </tr>
                            </table>
                            <div style="text-align: right;">
                                <a class="btn btn-secondary" href="#" role="button" onclick="location.href='http://localhost:8088/trip/community/list.do' "
                                    style="margin-top:10px; height: 40px;">취소</a>
                                <input class="btn btn-secondary" type="button" value="수정완료"
                                    style="margin-top:10px; height: 40px;" id="submitbtn">
                            </div>  
      
                        </div>   
                    </div>
                    
                    <script>
                        $(document).ready(function () {   
                      	  CKEDITOR.replace( 'com_content' );
                          CKEDITOR.config.height = 300;

                        	//========================================================================@한보영 입력하기 
                        	document.getElementById('submitbtn').onclick = function() {   
                        		
                     		 var content = CKEDITOR.instances.com_content.getData();
                        		 $('#com_content').val(content);
                        		 console.log( content)
                        		 console.log( $('#com_content').val()) 

                        		 
                        		
                        	   	 if($('#com_title').val() == ''){ //제목
                            		 alert('제목을 입력해주세요')
                            	 }else if($('#com_content').val() == ''){
                            		 alert('문의 내용을 입력해주세요')
                            	 }else{
                            		 
                            			var seqdata ={ "com_title":$('#com_title').val() 
                            						, "com_content":content
                            						, "com_cnt": $('#com_cnt').val()
                            						, "com_date": $('#com_date').val()
                            						, "com_seq": $('#com_seq').val() };
                            			console.log(seqdata)
                            			
                            			
                            		    $.ajax({
                            		        url:"modify.do",
                            		        type:'POST',
                            		        data: seqdata,
                            		        success:function(data){
                            		          location.href = "./detail.do?com_seq="+$('#com_seq').val();							            	            
                            		        },
                            		        error:function(){
                            		            alert("에러");
                            		        }
                            		    });	//ajax 끝
                            		 
                            	 }//ifelse끝
                        	};//submitbtn눌렀을 때 form을 submit!    
                        	
                        	//===========================================================================
                        		
                    
                        	
                        	
                        	
                        	 
                        })                        
                    </script>
                    <jsp:include page="../include/footer.jsp"></jsp:include>
        </body>

        </html>