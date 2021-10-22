<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품 수정 페이지</title>
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
            text-align: center;
        }

        .form-control {
            border: 0;
        }
        #adminMemtable1 img {
            height: 300px;
        }
        .ck_warn {
         	display: none;
            padding: 10px;
            color: highlight;
            font-weight: 700;
            font-size: 90%;
        }
        #pd_startDate,#pd_endDate{
             width:200px
         }       
    </style>
</head>
<body>
    <div style="width: 1800px; height: auto;">
		<jsp:include page="../include/adminInclude.jsp"></jsp:include>
    <div style="float:right; width: 1500px;height: 100%;" margin-bottom:40px;">
            <div
                style="margin-top: 40px; width: 1500px; height: 90%; border-radius: 20px; box-shadow: 0 0 20px #ededed;">
                <div class="adminMainDiv1">
                    <p>상품 수정</p>
                </div>
                <form action="modify.do" method="POST" id="form">
                <table id="adminMemtable1" style="width: 100%; border-top: 2px solid #343a40;">
                    <tr>
                        <th>상품번호</th>
                        <td><input type="text" class="form-control" placeholder="PD_SEQ" id="pd_seq" value="${list.pd_seq }" readonly="readonly"></td>
                    </tr>
                    <tr>
                        <th>상품명</th>
                        <td><input type="text" class="form-control" placeholder="PD_NAME" id="pd_name" value="${list.pd_name }"></td>
                    	<td><span class="ck_warn pd_name_warn">상품명을 입력해주세요.</span></td>
                    </tr>
                    <tr>
                        <th>상품가격</th>
                        <td><input type="text" class="form-control" placeholder="PD_PRICE" id="pd_price" value="${list.pd_price }"></td>
						<td><span class="ck_warn pd_price_warn">상품 가격을 입력해주세요.</span></td>
                    </tr>
                    <tr>
                        <th>키워드</th>
                        <td><input type="text" class="form-control" placeholder="PD_KEYWORD" id="pd_keyword" value="${list.pd_keyword }"></td>
                    	<td><span class="ck_warn pd_keyword_warn">키워드를 입력해주세요.</span></td>
                    </tr>
                    <tr>
                        <th>출발일</th>
                        <td><input type="date" class="form-control" placeholder="PD_STARTDATE" id="pd_startDate" value="${list.pd_startDate }"></td>
                    	<td><span class="ck_warn pd_keyword_warn">출발일을 선택해주세요.</span></td>
                    </tr>
                    <tr>
                        <th>도착일</th>
                        <td><input type="date" class="form-control" placeholder="PD_ENDDATE" id="pd_endDate" value="${list.pd_endDate }"></td>
                    	<td><span class="ck_warn pd_endDate_warn">도착일을 선택해주세요.</span></td>
                    </tr>
                    <tr>
                        <th>조회수</th>
                        <td><input type="text" class="form-control" placeholder="PD_CTN" id="pd_cnt" value="${list.pd_cnt }"></td>
                    </tr>
                    <tr>
                        <th>테마</th>
                        <td><input type="text" class="form-control" placeholder="PD_THEME" id="pd_theme" value="${list.pd_theme }"></td>
                    	<td><span class="ck_warn pd_theme_warn">테마를 입력해주세요.</span></td>
                    </tr>
                    <tr>
                        <th>인원</th>
                        <td><input type="text" class="form-control" placeholder="PD_PEOPLE" id="pd_people" value="${list.pd_people }"></td>
                    	<td><span class="ck_warn pd_people_warn">인원을 입력해주세요.</span></td>
                    </tr>
                    <tr>
                        <th>지역</th>
                        <td><input type="text" class="form-control" placeholder="PD_LOCATION"  id="pd_location" value="${list.pd_location }"></td>
                    	<td><span class="ck_warn pd_location_warn">지역을 입력해주세요.</span></td>
                    </tr>
                    <tr>
                        <th>성인 인원</th>
                        <td><input type="text" class="form-control" placeholder="ADULT_NUM" id="adult_num" value="${list.adult_num }"></td>
                    	<td><span class="ck_warn adult_num_warn">성인 인원을 입력해주세요.</span></td>
                    </tr>
                    <tr>
                        <th>미성년자 인원</th>
                        <td><input type="text" class="form-control" placeholder="TEENAGER_NUM" id="teenager_num" value="${list.teenager_num }"></td>
                    	<td><span class="ck_warn teenager_num_warn">미성년자 인원을 입력해주세요.</span></td>
                    </tr>
                    <tr>
                        <th>반려동물 수</th>
                        <td><input type="text" class="form-control" placeholder="PET_NUM" id="pet_num" value="${list.pet_num }"></td>
                    	<td><span class="ck_warn pet_num_warn">반려동물 수를 입력해주세요.</span></td>
                    </tr>
                    <tr>
                        <th>성인 추가요금</th>
                        <td><input type="text" class="form-control" placeholder="ADULT_PRICE" id="adult_price" value="${list.adult_price }"></td>
                    	<td><span class="ck_warn adult_price_warn">성인 추가요금을 입력해주세요.</span></td>
                    </tr>
                    <tr>
                        <th>미성년자 추가요금</th>
                        <td><input type="text" class="form-control" placeholder="TEENAGER_PRICE" id="teenager_price" value="${list.teenager_price }"></td>
                    	<td><span class="ck_warn adult_price_warn">성인 추가요금을 입력해주세요.</span></td>
                    </tr>
                    <tr>
                        <th>반려동물 추가요금</th>
                        <td><input type="text" class="form-control" placeholder="PET_PRICE" id="pet_price" value="${list.pet_price }"></td>
                    	<td><span class="ck_warn pet_price_warn">반려동물 추가요금을 입력해주세요.</span></td>
                    </tr>
                    <tr>
                        <th>대표이미지 선택</th>
                        <td><input type="file" class="form-control" id="pd_image" value="${list.pd_image }"></td>
                        <td><span class="ck_warn pd_image_warn">대표이미지를 입력해주세요.</span></td>
                    </tr>
                    <tr>
                        <th>대표이미지 URL</th>
                        <td id="pd_image" value="${list.pd_image }">${list.pd_image }</td>
                    </tr>
                    <tr>
                        <th>대표 이미지 확인</th>
                        <td><img id="pd_image" src="${list.pd_image }" alt="PD_IMAGE"></td>
                    </tr>
                    <tr>
                        <th>컨텐츠 1</th>
                        <td colspan="2" style="padding: 0;"><textarea class="form-control" id="exampleFormControlTextarea1" rows="4"
                                placeholder="${list.pd_content1 }"
                                style="border:0; resize: none; background-color: white;">${list.pd_content1 }</textarea></td>
                    </tr>
                    <tr>
                         <th>상품이미지1</th>
                        <td>
                            <input type="file" class="form-control" id="pd_contentImage1" value="${list.pd_contentImage1 }">
                        </td>
                    </tr>
                    <tr>
                        <th>이미지 URL 1</th>
                        <td value="${list.pd_contentImage1 }"></td>
                    </tr>
                    <tr>
                        <th>이미지1 확인</th>
                        <td><img src="${list.pd_contentImage1 }" alt="PD_CONTENTIMAGE1"></td>
                    </tr>
                    <tr>
                        <th>컨텐츠2</th>
                        <td colspan="2" style="padding: 0;"><textarea class="form-control" id="exampleFormControlTextarea2" rows="4"
                                placeholder="${list.pd_content2 }"
                                style="border:0; resize: none; background-color: white;">${list.pd_content2 }</textarea></td>
                    </tr>
                    <tr>
                        <th>상품이미지2</th>
                        <td>
                            <input type="file" class="form-control" id="pd_contentImage2" value="${list.pd_contentImage2 }">
                        </td>
                    </tr>
                    <tr>
                        <th>이미지 URL 2</th>
                        <td value="${list.pd_contentImage2 }"></td>
                    </tr>
                    <tr>
                        <th>이미지2 확인</th>
                        <td><img src="${list.pd_contentImage2 }" alt="PD_CONTENTIMAGE2"></td>
                    </tr>
                    <tr>
                        <th>컨텐츠3</th>
                        <td colspan="2" style="padding: 0;"><textarea class="form-control" id="exampleFormControlTextarea3" rows="4"
                                placeholder="${list.pd_content3 }"
                                style="border:0; resize: none; background-color: white;">${list.pd_content3 }</textarea></td>
                    </tr>
                    <tr>
                        <th>상품이미지3</th>
                        <td>
                            <input type="file" class="form-control" id="pd_contentImage3" value="${list.pd_contentImage3 }">
                        </td>
                    </tr>
                    <tr>
                        <th>이미지 URL 3</th>
                        <td value="${list.pd_contentImage3 }"></td>
                    </tr>
                    <tr>
                        <th>이미지3 확인</th>
                        <td><img src="${list.pd_contentImage3 }" alt="PD_CONTENTIMAGE3"></td>
                    </tr>
                    <tr>
                        <th>컨텐츠4</th>
                        <td colspan="2" style="padding: 0;"><textarea class="form-control" id="exampleFormControlTextarea4" rows="4"
                                placeholder="${list.pd_content4 }"
                                style="border:0; resize: none; background-color: white;">${list.pd_content4 }</textarea></td>
                    </tr>
                    <tr>
                        <th>상품이미지4</th>
                        <td>
                            <input type="file" class="form-control" id="pd_contentImage4" value="${list.pd_contentImage4 }">
                        </td>
                    </tr>
                    <tr>
                        <th>이미지 URL 4</th>
                        <td value="${list.pd_contentImage4 }"></td>
                    </tr>
                    <tr>
                        <th>이미지4 확인</th>
                        <td><img src="${list.pd_contentImage4 }" alt="PD_CONTENTIMAGE4"></td>
                    </tr>
                    <tr>
                        <th>컨텐츠5</th>
                        <td colspan="2" style="padding: 0;"><textarea class="form-control" id="exampleFormControlTextarea5" rows="4"
                                placeholder="${list.pd_content5 }"
                                style="border:0; resize: none; background-color: white;">${list.pd_content5 }</textarea></td>
                    </tr>
                    <tr>
                        <th>상품이미지5</th>
                        <td>
                            <input type="file" class="form-control" id="pd_contentImage5" value="${list.pd_contentImage5 }">
                        </td>
                    </tr>
                    <tr>
                        <th>이미지 URL 5</th>
                        <td value="${list.pd_contentImage5 }"></td>
                    </tr>
                    <tr>
                        <th>이미지5 확인</th>
                        <td><img src="${list.pd_contentImage5 }" alt="PD_CONTENTIMAGE5"></td>
                    </tr>
                </table>
                <div style="text-align: right;">
                    <a class="btn btn-secondary" href="#" role="button"
                        style="margin-top:10px; margin-bottom: 10px;">상단으로 이동</a>
                    <a class="btn btn-secondary" href="http://localhost:8088/trip/adminProduct/list.do" role="button"
                        style="margin-top:10px; margin-bottom: 10px;">취소</a>
                    <input class="btn btn-secondary" type="button" value="수정" style="margin-right: 10px;" id="modify">
                </div>
				</form>
            </div>
        </div>
    </div>
</body>

<script>
 $(document).ready(function(){
	$("#modify").on("click", function(){
        // 빈칸 체크   		
        var nameCk = false;
        var priceCk = false;
        var keywordCk = false;
        var startDateCk = false;
        var endDateCk = false;
        var themeCk = false;
        var peopleCk = false;
        var locationCk = false;
        var adultNumCk = false;
        var teenNumCk = false;
        var petNumCk = false;
        var adultPriceCk = false;
        var teenPriceCk = false;
        var petPriceCk = false;
        var imageCk = false;
        
		var pd_seq = $("#pd_seq").val();
        var pd_name = $("#pd_name").val();
        var pd_price = $("#pd_price").val();
        var pd_keyword = $("#pd_keyword").val();
        var pd_startDate = $("#pd_startDate").val();
        var pd_endDate = $("#pd_endDate").val();
        var pd_theme = $("#pd_theme").val();
        var pd_people = $("#pd_people").val();
        var pd_location = $("#pd_location").val();
        var adult_num = $("#adult_num").val();
        var teenager_num = $("#teenager_num").val();
        var pet_num = $("#pet_num").val();
        var adult_price = $("#adult_price").val();
        var teenager_price = $("#teenager_price").val();
        var pet_price = $("#pet_price").val();
        var pd_image = $("#pd_image").val();
        var pd_contentImage1 = $("#pd_contentImage1").val();
        var pd_contentImage2 = $("#pd_contentImage2").val();
        var pd_contentImage3 = $("#pd_contentImage3").val();
        var pd_contentImage4 = $("#pd_contentImage4").val();
        var pd_contentImage5 = $("#pd_contentImage5").val();
        var pd_content1 = $("#exampleFormControlTextarea1").val();
        var pd_content2 = $("#exampleFormControlTextarea2").val();
        var pd_content3 = $("#exampleFormControlTextarea3").val();
        var pd_content4 = $("#exampleFormControlTextarea4").val();
        var pd_content5 = $("#exampleFormControlTextarea5").val();

        if (pd_name) {
            $(".pd_name_warn").css('display', 'none');
            nameCk = true;
        } else {
            $(".pd_name_warn").css('display', 'block');
            nameCk = false;
        }
        if (pd_price) {
            $(".pd_price_warn").css('display', 'none');
            priceCk = true;
        } else {
            $(".pd_price_warn").css('display', 'block');
            priceCk = false;
        }
        if (pd_keyword) {
            $(".pd_keyword_warn").css('display', 'none');
            keywordCk = true;
        } else {
            $(".pd_keyword_warn").css('display', 'block');
            keywordCk = false;
        }
        if (pd_startDate) {
            $(".pd_startDate_warn").css('display', 'none');
            startDateCk = true;
        } else {
            $(".pd_startDate_warn").css('display', 'block');
            startDateCk = false;
        }
        if (pd_endDate) {
            $(".pd_endDate_warn").css('display', 'none');
            endDateCk = true;
        } else {
            $(".pd_endDate_warn").css('display', 'block');
            endDateCk = false;
        }
        if (pd_theme) {
            $(".pd_theme_warn").css('display', 'none');
            themeCk = true;
        } else {
            $(".pd_theme_warn").css('display', 'block');
            themeCk = false;
        }
        if (pd_people) {
            $(".pd_people_warn").css('display', 'none');
            peopleCk = true;
        } else {
            $(".pd_people_warn").css('display', 'block');
            peopleCk = false;
        }
        if (pd_location) {
            $(".pd_location_warn").css('display', 'none');
            locationCk = true;
        } else {
            $(".pd_location_warn").css('display', 'block');
            locationCk = false;
        }
        if (adult_num) {
            $(".adult_num_warn").css('display', 'none');
            adultNumCk = true;
        } else {
            $(".adult_num_warn").css('display', 'block');
            adultNumCk = false;
        }
        if (teenager_num) {
            $(".teenager_num_warn").css('display', 'none');
            teenNumCk = true;
        } else {
            $(".teenager_num_warn").css('display', 'block');
            teenNumCk = false;
        }
        if (pet_num) {
            $(".pet_num_warn").css('display', 'none');
            petNumCk = true;
        } else {
            $(".pet_num_warn").css('display', 'block');
            petNumCk = false;
        }
        if (adult_price) {
            $(".adult_price_warn").css('display', 'none');
            adultPriceCk = true;
        } else {
            $(".adult_price_warn").css('display', 'block');
            adultPriceCk = false;
        }
        if (teenager_price) {
            $(".teenager_price_warn").css('display', 'none');
            teenPriceCk = true;
        } else {
            $(".teenager_price_warn").css('display', 'block');
            teenPriceCk = false;
        }
        if (pet_price) {
            $(".pet_price_warn").css('display', 'none');
            petPriceCk = true;
        } else {
            $(".pet_price_warn").css('display', 'block');
            petPriceCk = false;
        }
        if (pd_image) {
            $(".pd_image_warn").css('display', 'none');
            imageCk = true;
        } else {
            $(".pd_image_warn").css('display', 'block');
            imageCk = false;
        }
        
        var allData = {
        		"pd_seq":pd_seq, "pd_name":pd_name, "pd_name":pd_name, "pd_keyword":pd_keyword, "pd_startDate":pd_startDate, "pd_endDate":pd_endDate, "pd_theme":pd_theme,
        		"pd_people":pd_people, "pd_location":pd_location, "adult_num":adult_num, "teenager_num":teenager_num, "pet_num":pet_num,
        		"adult_price":adult_price, "teenager_price":teenager_price, "pet_price":pet_price, "pd_image":pd_image,
        		"pd_contentImage1":pd_contentImage1, "pd_contentImage2":pd_contentImage2, "pd_contentImage3":pd_contentImage3, "pd_contentImage4":pd_contentImage4,
        		"pd_contentImage5":pd_contentImage5, "pd_content1":pd_content1, "pd_content2":pd_content2, "pd_content3":pd_content3, "pd_content4":pd_content4, "pd_content5":pd_content5
        }
        
        if (nameCk && priceCk && keywordCk && startDateCk && endDateCk && themeCk && peopleCk && locationCk
                && adultNumCk && teenNumCk && petNumCk && adultPriceCk && teenPriceCk && petPriceCk && imageCk) {
     		if (confirm("수정하시겠습니까?")) {
    			$.ajax({
    				url : "modify.do",
    				type : "POST",
     				data : allData, 
    				success : function(data, status){
    					alert('수정이 완료되었습니다.');
    					location.href= "http://localhost:8088/trip/adminProduct/list.do";
    				}
    			}) // ajax 종료
    		}// confirm if 종료
        }else{
    			alert("빈칸을 확인하세요.");
    			$('html').scrollTop(0); // 빈 칸이 있을 때 상단으로 이동
    		} // else 종료
	}); // onclick 종료
}); // document 종료
</script>

</html>