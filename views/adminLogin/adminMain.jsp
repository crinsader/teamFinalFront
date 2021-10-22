<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 메인 페이지</title>
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

        .adminMainDiv1 {
            width: 450px;
            height: 300px;
            border-radius: 20px;
            box-shadow: 0 0 20px #ededed;
            margin-top: 40px;
            display: inline-block;
        }

        .adminMainDiv1 p {
            margin-bottom: 0;
            line-height: 45px;
            text-align: center;
            font-weight: bold;
            background-color: #ededed;
            border-radius: 20px 20px 0 0;
            cursor: pointer;
        }
    </style>
</head>

<body>
        <div style="width: 1800px; height: 100vh;">

		<jsp:include page="../include/adminInclude.jsp"></jsp:include>

        <div style="float:right; width: 1500px;height: 100%;">
            <div style="width: 1500px; column-count: 3;">
                <div class="adminMainDiv1">
                    <p>회원예약</p>
                    <!--요기에 클릭시 해당페이지 넘어가게 설정-->
                    <iframe src="http://localhost:8088/trip/adminUserRes/listMini.do" frameborder="0"
                        style="width: 100%; height: 255px; border-radius: 0 0 20px 20px;" scrolling="no"></iframe>

                </div>
                <div class="adminMainDiv1">
                    <p>비회원예약</p>
                    <!--요기에 클릭시 해당페이지 넘어가게 설정-->
                    <iframe src="http://localhost:8088/trip/adminNoUserRes/listMini.do" frameborder="0"
                        style="width: 100%; height: 255px; border-radius: 0 0 20px 20px;" scrolling="no"></iframe>

                </div>
                <div class="adminMainDiv1">
                    <p>관리자정보</p>
                    <!--요기에 클릭시 해당페이지 넘어가게 설정-->
                    <iframe src="adminListMini.html" frameborder="0"
                        style="width: 100%; height: 255px; border-radius: 0 0 20px 20px;" scrolling="no"></iframe>

                </div>
                <div class="adminMainDiv1" onclick="link_8()">
                    <p>상품정보</p>
                    <!--요기에 클릭시 해당페이지 넘어가게 설정-->
                    <iframe src="http://localhost:8088/trip/adminProduct/mini.do" frameborder="0"
                        style="width: 100%; height: 255px; border-radius: 0 0 20px 20px;" scrolling="no"></iframe>

                </div>
                <div class="adminMainDiv1">
                    <p>회원정보</p>
                    <!--요기에 클릭시 해당페이지 넘어가게 설정-->
                    <iframe src="http://localhost:8088/trip/adminUserManagement/userMiniList" frameborder="0"
                        style="width: 100%; height: 255px; border-radius: 0 0 20px 20px;" scrolling="no"></iframe>

                </div>
                <div class="adminMainDiv1">
                    <p>여행리뷰</p>
                    <!--요기에 클릭시 해당페이지 넘어가게 설정-->
                    <iframe src="http://localhost:8088/trip/adminReply/listMini.do" frameborder="0"
                        style="width: 100%; height: 255px; border-radius: 0 0 20px 20px;" scrolling="no"></iframe>

                </div>
                <div class="adminMainDiv1">
                    <p>공지사항</p>
                    <!--요기에 클릭시 해당페이지 넘어가게 설정-->
                    <iframe src="http://localhost:8088/trip/adminNotice/listMini.do" frameborder="0"
                        style="width: 100%; height: 255px; border-radius: 0 0 20px 20px;" scrolling="no"></iframe>

                </div>
                <div class="adminMainDiv1">
                    <p>자주하는질문</p>
                    <!--요기에 클릭시 해당페이지 넘어가게 설정-->
                    <iframe src="http://localhost:8088/trip/adminOften/listMini.do" frameborder="0"
                        style="width: 100%; height: 255px; border-radius: 0 0 20px 20px;" scrolling="no"></iframe>

                </div>
                <div class="adminMainDiv1" onclick="link_6()">
                    <p>1대1문의</p>
                    <!--요기에 클릭시 해당페이지 넘어가게 설정-->
                    <iframe src="http://localhost:8088/trip/admin/listMini.do" frameborder="0" 
                        style="width: 100%; height: 255px; border-radius: 0 0 20px 20px;" scrolling="no"></iframe>

                </div>
                <div class="adminMainDiv1" onclick="link_7()">
                    <p>회원찜내역</p>
                    <!--요기에 클릭시 해당페이지 넘어가게 설정-->
                    <iframe src="http://localhost:8088/trip/adminWishlist/mini.do" frameborder="0"
                        style="width: 100%; height: 255px; border-radius: 0 0 20px 20px;" scrolling="no"></iframe>
                </div>

                <div class="adminMainDiv1" style="height: 640px; margin-bottom: 40px;">
                    <p>메모장</p>
                    <!--요기에 클릭시 해당페이지 넘어가게 설정-->
                    <!-- 메모장 form*********************************************************************************************** -->
               	<form action="input.do" method="post"  id="form">   
                     <input type="hidden" name="ad_id" value="${AD_ID }">
                    
				 <div class="mb-3">
		            <input type="hidden" name="ad_to" id="ad_to_in">
		            <select class="form-select form-select-sm" aria-label=".form-select-sm example" id="exampleFormControlSelect1" >
					  <option selected>받는사람을 선택해주세요</option>					  
					  <option value="모두에게" >모두에게</option>
					  <c:forEach var="adminid" items="${adminList }"> 					  
					  <option value="${adminid.AD_ID}">${adminid.AD_ID}</option>						  
					  </c:forEach>	 	
					  <option value="없음">없음</option>
					</select>
		          </div>
		          <div class="mb-3">
		             <input type="hidden" name="memo_type" id="memo_type_in">
		            <select class="form-select form-select-sm" aria-label=".form-select-sm example" id="exampleFormControlSelect2">
					  <option selected>분야을 선택해주세요</option>
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
		          </div>		          
		          <div class="mb-3">
		            <textarea class="form-control" id="message-text" rows="5" name="memo_content" ></textarea>
		          </div>
                    <div style="text-align: right;">
                    	<input type="button" class="btn btn-secondary" style="margin-top: 10px;" value='메모등록' id="submitbtn">
                    </div>                            
                  </form>         
                    <p style="background-color: white;">메모 List</p>
                   <iframe src="http://localhost:8088/trip/adminMemo/listMini.do" frameborder="0"
                        style="width: 100%; height: 255px; border-radius: 0 0 20px 20px;" scrolling="no"></iframe>
                </div>
                <!-- 메모장 끝*********************************************************************************************** -->
            </div>
        </div>
    </div>
</body>


<script type="text/javascript">


function link_6(){ //1:1문의
	location.href = "http://localhost:8088/trip/admin/list.do"
}
function link_7(){ // 회원찜내역
	location.href = "http://localhost:8088/trip/adminWishlist/list.do"
}
function link_8(){ // 상품정보
	location.href = "http://localhost:8088/trip/adminProduct/list.do"
}


//===============================================================메모장 등록
	document.getElementById('submitbtn').onclick = function() {      
		   	 if($('#message-text').val() == ''){   
		  		 alert('내용을 입력해주세요')
		  	 }else{
		  		 document.getElementById('form').submit(); //수정완료   			  		 
		  	 }
	};//[submitbtn]

	 $('#exampleFormControlSelect1').change(function() { //select box 받는사람
		 $('#ad_to_in').val($('#exampleFormControlSelect1').val());                        		 
	 })
	 $('#exampleFormControlSelect2').change(function() { //select box 메모유형
		 $('#memo_type_in').val($('#exampleFormControlSelect2').val());                        		 
	 })
</script>
</html>