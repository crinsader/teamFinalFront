<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>찜 입력 페이지</title>
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
                    <p>찜 입력</p>
                </div>
                <button id="popUp_pd">상품선택</button>
                <button id="popUp_user">회원선택</button>
                <form action="input.do" method="POST" id="form">
                <table id="adminMemtable1" style="width: 100%; border-top: 2px solid #343a40;">
                   <!--  <tr>
                        <th>찜번호</th>
                        <td><input type="text" class="form-control" id="w_seq" placeholder="찜번호"></td>
                    </tr> -->
                    <tr>
                        <th>상품번호</th>
                        <td><input type="text" class="form-control" id="pd_seq" placeholder="상품을 선택해주세요." readonly="readonly"></td>
                    </tr>
                    <tr>
                        <th>상품명</th>
                        <td><input type="text" class="form-control" id="pd_name" readonly="readonly"></td>
                    </tr>
                    <tr>
                        <th>출발일</th>
                        <td><input type="text" class="form-control" id="pd_startDate" readonly="readonly"></td>
                    </tr>
                    <tr>
                        <th>도착일</th>
                        <td><input type="text" class="form-control" id="pd_endDate" readonly="readonly"></td>
                    </tr>
                    <tr>
                        <th>상품가격</th>
                        <td><input type="text" class="form-control" id="pd_price" readonly="readonly"></td>
                    </tr>
                    <tr>
                        <th>이미지URL</th>
                        <td><input type="text" class="form-control" id="pd_image" readonly="readonly"></td>
                    </tr>
                    <tr>
                        <th>회원ID</th>
                        <td><input type="text" class="form-control" id="u_id" placeholder="회원을 선택해주세요." readonly="readonly"></td>
                    </tr>
                </table>
                <div style="text-align: right;">
                    <a class="btn btn-secondary" href="http://localhost:8088/trip/adminWishlist/list.do" role="button"
                        style="margin-top:10px; margin-bottom: 10px;">취소</a>
                    <input class="btn btn-secondary" type="button" value="저장" style="margin-right: 10px;" id="input">
                </div>
                </form>
            </div>
        </div>
    </div>
</body>

<script>

 $(document).ready(function(){
	// 팝업창 열기
	 $('#popUp_pd').on("click",function(){
	 	var popUrl = "http://localhost:8088/trip/adminWishlist/popUpPd.do";
	 	var popOption = "width = 650px, height=550px, top=300px, left=300px, scrollbars=yes";
	 	
	 	window.open(popUrl,"상품 검색",popOption);	
	 });
	
	 $('#popUp_user').on("click",function(){
		 	var popUrl = "http://localhost:8088/trip/adminWishlist/popUpUser.do";
		 	var popOption = "width = 650px, height=550px, top=300px, left=300px, scrollbars=yes";
		 	
		 	window.open(popUrl,"상품 검색",popOption);	
		 });
	 
		$("#input").on("click", function(){
		 	var pd_seq = $("#pd_seq").val();
			var pd_name = $("#pd_name").val();
			var pd_startDate = $("#pd_startDate").val();
			var pd_endDate = $("#pd_endDate").val();
			var pd_price = $("#pd_price").val();
			var pd_image = $("#pd_image").val(); 
			var u_id = $("#u_id").val();
			console.log("u_id",u_id)
			 
			 	if (confirm("등록하시겠습니까?")) {
				$.ajax({
					url : "input.do",
					type : "POST",
	 				data : {
						"pd_seq":pd_seq, "pd_name":pd_name, 
						"pd_startDate":pd_startDate, "pd_endDate":pd_endDate, "pd_price":pd_price, 
						"pd_image":pd_image, "u_id":u_id
					}, 
					success : function(data, status){
						alert('등록이 완료되었습니다.');
						location.href= "http://localhost:8088/trip/adminWishlist/list.do";
					}
				}) // ajax 종료
			}// if else 종료 
		}); // onclick 종료
	}); // document 종료
	
	
/* 	
	$("#input").on("click", function(){
	 	var pd_seq = $("#pd_seq").val();
		var pd_name = $("#pd_name").val();
		var pd_startDate = $("#pd_startDate").val();
		var pd_endDate = $("#pd_endDate").val();
		var pd_price = $("#pd_price").val();
		var pd_image = $("#pd_image").val(); 
		var u_id = $("#u_id").val();
		 
		 	if (confirm("등록하시겠습니까?")) {
		 		console.log("등록 if문 들어와써");
			$.ajax({
				url : "input.do",
				type : "POST",
 				data : {
					"pd_seq":pd_seq, "pd_name":pd_name, 
					"pd_startDate":pd_startDate, "pd_endDate":pd_endDate, "pd_price":pd_price, 
					"pd_image":pd_image, "u_id":u_id
				}, 
				success : function(data, status){
					if(status === 'success') {
						if(data === 'possible') {
		 		console.log("possible 이자나ㅠㅠㅠㅠㅠ");
							alert('정상적으로 등록되었습니다.');
							location.href= "http://localhost:8088/trip/adminWishlist/list.do";
						}else if(data === "impossible"){
		 		console.log("impossible 이자나ㅠㅠㅠㅠㅠ");
							alert("이미 찜에 등록된 상품입니다.");
						}
					}
				}
			}) // ajax 종료
		}// if else 종료 
	}); // onclick 종료 */
 
</script>
</html>