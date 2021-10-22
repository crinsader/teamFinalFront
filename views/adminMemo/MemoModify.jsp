<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항 수정 페이지</title>
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
                    <p>공지사항 수정</p>
                </div>
            <form action="modify.do" method="post" id="form" >           
                <table id="adminMemtable1" style="width: 100%; border-top: 2px solid #343a40;">
                    <tr>
                        <th>작성자</th>
                        <td><input type="hidden" value="${dto.memo_seq }" name="memo_seq" id="memo_seq">     
                        	<input type="hidden" value="${dto.ad_id }" name="ad_id" id="ad_id"> 
                        	<input type="hidden"  name="memo_date" id="memo_date">                      
                        	${dto.ad_id }</td>
                    </tr>
                    <tr>
                        <th>받는사람</th>
                        <td>
                       	    <input type="hidden"  name="ad_to" id="ad_to" value='${dto.ad_to }'>
				            <select class="form-select form-select-sm" aria-label=".form-select-sm example" id="exampleFormControlSelect1" >
							  <option selected>받는사람을 선택해주세요</option>
							  <option value="모두에게">모두에게</option>
							  <c:forEach var="adminid" items="${adminList }"> 					  
							  <option value="${adminid.AD_ID}">${adminid.AD_ID}</option>						  
							  </c:forEach>	 	
							  <option value="없음">없음</option>
							</select>
                        </td>
                    </tr>
                    <tr>
                        <th>분야</th>
                        <td>
                       	    <input type="hidden"  name="memo_type" id="memo_type" value='${dto.memo_type }'>
                           <select class="form-select form-select-sm" aria-label=".form-select-sm example" id="exampleFormControlSelect2">
							  <option selected>분야를 선택해주세요</option>
							  <option value="회원예약">회원예약</option>
							  <option value="비회원예약">비회원예약</option>
							  <option value="회원정보관리">회원정보관리</option>
							  <option value="여행리뷰">여행리뷰</option>
							  <option value="1대1문의">1대1문의</option>
							  <option value="회원찜내역">회원찜내역</option>
							  <option value="상품정보">상품정보</option>
							  <option value="관리자정보">관리자정보</option>
							  <option value="공지사항">공지사항</option>
							  <option value="자주하는질문">자주하는질문</option>
							  <option value="로그기록">로그기록</option>
							  <option value="메모장">메모장</option>
							  <option value="기타">기타</option>					  
							</select>
                        </td>
                    </tr>
                    <tr>
                        <th>내용</th>
                        <td><textarea class="form-control" id="exampleFormControlTextarea1" rows="4"
                                placeholder="NO_CONTENT"  name="memo_content"
                                style="border:0; resize: none; background-color: white;">${dto.memo_content  }</textarea></td>
                    </tr>
                </table>
                <div style="text-align: right;">
                    <a class="btn btn-secondary"role="button" href="javascript:history.back()"
                        style="margin-top:10px; margin-bottom: 10px;">취소</a>
                    <input class="btn btn-primary"" type="button" value="수정완료" id="modi_submitbtn" style="margin-right: 10px;">
                </div>
                   </form>      
            </div>
        </div>
    </div>
</body>
<script type="text/javascript">

	document.getElementById('modi_submitbtn').onclick = function() {  //수정버튼을 누르면     
		   	 if($('#exampleFormControlTextarea1').val() == ''){   
		  		 alert('수정할 내용을 입력해주세요')
		  	 }else{
		  		 document.getElementById('form').submit(); //수정완료   			  		 
		  	 }
	};//==========================================================================[modi_submitbtn]

	 $('#exampleFormControlSelect1').change(function() { //select box
		 $('#ad_to').val($('#exampleFormControlSelect1').val());                        		 
	 })                        	                         	 
	 $("#exampleFormControlSelect1").val($('#ad_to').val());     
	
	 $('#exampleFormControlSelect2').change(function() { //select box
		 $('#memo_type').val($('#exampleFormControlSelect2').val());                        		 
	 })                        	                         	 
	 $("#exampleFormControlSelect2").val($('#memo_type').val());     

</script>
</html>