<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>1대1문의 수정 페이지</title>
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
     <!-- ============================================================================@@ 1:1 관리자 [답변] 수정하기 10/15 한보영 -->       
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
        }

        .form-control {
            border: 0;
        }
    </style>
</head>

<body>
    <div style="width: 1800px; height: 100vh;">
       		<jsp:include page="../include/adminInclude.jsp"></jsp:include>

        <div style="float:right; width: 1500px;height: auto;">
            <div
                style="margin-top: 40px; margin-bottom: 40px; width: 1000px; height: auto; border-radius: 20px; box-shadow: 0 0 20px #ededed;">
                <div class="adminMainDiv1">
                    <p>1대1문의 수정</p>
                </div>
                
<!--@@ modify _ form @@ 한보영 10/15 09:01   ------------------------------------------------------------------------------------>                     
           <form action="modify2.do" method="post"  id="form">      
                <table id="adminMemtable1" style="width: 100%; border-top: 2px solid #343a40;">
                    <tr>
                        <th>번호</th>
                        <td>
	                        <input type="hidden" value="${dto.cl_seq }" name="cl_seq">
	                        ${dto.cl_seq }
                        </td>
                    </tr>
                    <tr>
                        <th>회원 아이디</th>
                        <td> 	                        
	                        <input type="hidden" value="${dto.u_id }" name="u_id">
	                         ${dto.u_id }
	                    </td>
                    </tr>
                    <tr>
                        <th>닉네임</th>
                        <td>
                        	<input type="hidden" value="${dto.u_nickName  }" name="u_nickName">
                        	<input type="hidden" value="${dto.ans_content  }" name="ans_content">
                        	 ${dto.u_nickName }
                        </td>
                    </tr>
                    <tr>
                        <th>문의 제목</th>
                        <td><input type="text" class="form-control"  value="${dto.cl_title  }" name="cl_title" id="cl_title"></td>
                    </tr>
                    <tr>
                        <th>문의 유형</th>
                        <td>
                            <input type="hidden"  name="cl_type" id="cl_type" value='${dto.cl_type }'>                        
                            <select class="form-select" id="inputGroupSelect01" style="border:0;">
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
                        <th>문의 내용</th>
                        <td><textarea class="form-control" id="exampleFormControlTextarea1" rows="4"
                                name="cl_content"
                                style="border:0; resize: none; background-color: white;">${dto.cl_content  }</textarea>
                        </td>
                    </tr>
                </table>
                <div style="text-align: right;">
                    <a class="btn btn-secondary"  href="list.do" role="button"
                        style="margin-top:10px; margin-bottom: 10px;">취소</a>
                    <input class="btn btn-secondary" type="button" value="수정 완료" 
                    	style="margin-right: 10px;" id="modi_submitbtn">
                </div>
      		</form>
 <!--@@ modify form  끝 @@------------------------------------------------------------------------------------>    
                
                
            </div>
        </div>
    </div>
</body>

<script>
                      $(document).ready(function () {                        	
                     //========================================================================@한보영 수정하기 구현 12/12 08:16
                      	document.getElementById('modi_submitbtn').onclick = function() {                        	

                     	   	 if($('#inputGroupSelect01').val() == '미선택'){ //문의 유형을 선택하지 않았을 경우
                         		 alert('문의 유형을 선택해주세요')
                         	 }else if($('#cl_title').val() == ''){ //제목
                         		 alert('제목을 입력해주세요')
                         	 }else if($('#exampleFormControlTextarea1').val() == ''){
                         		 alert('문의 내용을 입력해주세요')
                         	 }else{
                         		 document.getElementById('form').submit(); //수정완료   
                         	 }
                     	};//modi_submitbtn 눌렀을 때 form을 submit!
                      	
                      	 $('#inputGroupSelect01').change(function() { //select box에 있는 문의 유형을 hidden inputbox에 넣고 submit 할 때 가져갈거얌
                      		 $('#cl_type').val($('#inputGroupSelect01').val());                        		 
                      	 })                        	                         	 
                      	 $("#inputGroupSelect01").val($('#cl_type').val());     
                      	 
                      })//document 끝            
</script>
</html>