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
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
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
    </style>
</head>

<body>
    <div
        style="float: left; width: 250px; height: 100%; box-shadow: 0 0 20px #ededed; position: fixed; background-color: white;">
        <div style="margin:auto; width: 80%;">
        	<img style="width: 100%; margin-top: 40px; margin-bottom: 40px;"
                src="http://jjcom0214.cafe24.com/web/OneTrillion/logo02.png" alt="logo01"/>
        </div>
        <div>
            <ul class="list-group list-group-flush">
				<li class="list-group-item" onclick="link_1()">메인</li>
				<li class="list-group-item" onclick="link_2()">회원예약</li>
				<li class="list-group-item" onclick="link_3()">비회원예약</li>
				<li class="list-group-item" onclick="link_4()">회원정보관리</li>
				<li class="list-group-item" onclick="link_5()">여행리뷰</li>
				<li class="list-group-item" onclick="link_6()">1대1문의</li>
				<li class="list-group-item" onclick="link_7()">회원찜내역</li>
				<li class="list-group-item" onclick="link_8()">상품정보</li>
				<li class="list-group-item" onclick="link_9()">관리자정보</li>
				<li class="list-group-item" onclick="link_10()">공지사항</li>
				<li class="list-group-item" onclick="link_11()">자주하는질문</li>
				<li class="list-group-item" onclick="link_12()">로그기록</li>
				<li class="list-group-item" onclick="link_13()">메모장</li>
            </ul>
        </div>
             <c:if test="${sessionScope.AD_ID != null }">
	             <div style="padding-top: 50px">
					<a id="adminLogout" style="cursor: pointer; color: purple; padding: 30px;">${AD_ID } 로그아웃</a>
				</div>	
			</c:if>
			<c:if test="${sessionScope.AD_ID == null }">
				<div style="padding-top: 50px">
				<a id="gohome" style="cursor: pointer; color: purple; padding: 30px;">홈페이지로 이동</a>
				</div>
			</c:if>
    </div>
</body>
	<script type="text/javascript">
		function link_1(){ //메인
			location.href = "http://localhost:8088/trip/adminLogin/adminMain.do"
		}	
		function link_2(){ //회원예약
			location.href = "http://localhost:8088/trip/adminUserRes/list.do"
		}		
		function link_3(){ //비회원예약
			location.href = "http://localhost:8088/trip/adminNoUserRes/list.do"
		}	
		function link_4(){ // 회원정보관리
			location.href = "http://localhost:8088/trip/adminUserManagement/userList"
		}
		function link_5(){ //리뷰
			location.href = "http://localhost:8088/trip/adminReply/list.do"
		}	
		function link_6(){ //1:1문의
			location.href = "http://localhost:8088/trip/admin/list.do"
		}
		function link_7(){ //찜
			location.href = ""
		}	
		function link_8(){ //상품정보
			location.href = ""
		}	
		function link_9(){ //관리자정보
			location.href = ""
		}	
		function link_10(){ //공지사항
			location.href = "http://localhost:8088/trip/adminNotice/list.do"
		}
		function link_11(){ //자주묻는질문
			location.href = "http://localhost:8088/trip/adminOften/list.do"
		}
		function link_12(){ //로그기록
			location.href = "http://localhost:8088/trip/logRecord/list.do"
		}	
		function link_13(){ //메모장
			location.href = "http://localhost:8088/trip/adminMemo/list.do"
		}	
		

		$("#adminLogout").on("click", function(){
		    if(confirm("관리자 로그아웃 하시겠습니까?")){
		    location.href = "<%=request.getContextPath()%>/adminLogin/logout.do";
		    alert("로그아웃되었습니다.");
		    }
		 });
		$("#gohome").on("click", function(){
		    if(confirm("메인페이지로 이동 하시겠습니까?")){
		    location.href = "<%=request.getContextPath()%>/";
		    }
		 });

	</script>




</html>