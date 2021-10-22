<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>상품 등록 페이지</title>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
	integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
	crossorigin="anonymous"></script>
<!-- 텍스트 편집기  -->
<script
	src="https://cdn.ckeditor.com/ckeditor5/30.0.0/classic/ckeditor.js"></script>
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

#adminMemtable1 td:nth-child(3) {
	width: 20%;
}

#adminMemtable1 input {
	border: 0;
}

.form-control {
	border: 0;
}

.ck_warn {
	display: none;
	padding: 10px;
	color: highlight;
	font-weight: 700;
	font-size: 90%;
}

#pd_startDate, #pd_endDate {
	width: 200px
}
/* ckeditor 높이 */
.ck-content {
	height: 170px;
}
#uploadResult img {
	width: 200px;
	height: 200px;
	float: left;
}
</style>
</head>
<body>
	<div style="width: 1800px; height: auto;">
		<jsp:include page="../include/adminInclude.jsp"></jsp:include>
		<div
			style="float: right; width: 1500px; height: 100%; margin-bottom: 40px;">
			<div
				style="margin-top: 40px; width: 1500px; height: 90%; border-radius: 20px; box-shadow: 0 0 20px #ededed;">
				<div class="adminMainDiv1">
					<p>상품 등록</p>
				</div>
				<form action="input.do" method="POST" id="insertForm">
					<table id="adminMemtable1"
						style="width: 100%; border-top: 2px solid #343a40;">
						<!--             <tr>
                        <th>상품번호</th>
                        <td><input type="text" class="form-control" placeholder="PD_SEQ" id="pd_seq"  name="pd_seq">
                        <span class="ck_warn pd_seq_warn">상품 번호를 입력해주세요.</span></td>
                    </tr> -->
						<tr>
							<th>상품명</th>
							<td><input type="text" class="form-control" placeholder=""
								id="pd_name" name="pd_name"></td>
							<td><span class="ck_warn pd_name_warn">상품명을 입력해주세요.</span></td>
						</tr>
						<tr>
							<th>상품가격</th>
							<td><input type="text" class="form-control"
								placeholder="숫자로만 입력해주세요 (ex. 200000)" id="pd_price"
								name="pd_price"></td>
							<td><span class="ck_warn pd_price_warn">상품 가격을
									입력해주세요.</span></td>

						</tr>
						<tr>
							<th>키워드</th>
							<td><input type="text" class="form-control"
								placeholder="한글로 입력해주세요 (ex. 한옥마을)" id="pd_keyword"
								name="pd_keyword"></td>
							<td><span class="ck_warn pd_keyword_warn">키워드를
									입력해주세요.</span></td>
						</tr>
						<tr>
							<th>출발일</th>
							<td><input type="date" class="form-control"
								placeholder="출발일을 선택해주세요" id="pd_startDate" name="pd_startDate">

							</td>
							<td><span class="ck_warn pd_keyword_warn">출발일을
									선택해주세요.</span></td>
						</tr>
						<tr>
							<th>도착일</th>
							<td><input type="date" class="form-control"
								placeholder="도착일을 선택해주세요" id="pd_endDate" name="pd_endDate">
							</td>
							<td><span class="ck_warn pd_endDate_warn">도착일을
									선택해주세요.</span></td>
						</tr>
						<tr>
							<th>조회수</th>
							<td><input type="text" class="form-control"
								placeholder="숫자로만 입력해주세요" id="pd_cnt" name="pd_cnt"></td>
							<td><span class="ck_warn pd_cnt_warn">조회수를 입력해주세요.</span></td>
						</tr>
						<tr>
							<th>테마</th>
							<td><input type="text" class="form-control"
								placeholder="영어 소문자로 입력해주세요 (ex. pet)" id="pd_theme"
								name="pd_theme"></td>
							<td><span class="ck_warn pd_theme_warn">테마를 입력해주세요.</span></td>
						</tr>
						<tr>
							<th>인원</th>
							<td><input type="text" class="form-control"
								placeholder="숫자로만 입력해주세요" id="pd_people" name="pd_people">
							</td>
							<td><span class="ck_warn pd_people_warn">인원을 입력해주세요.</span></td>
						</tr>
						<tr>
							<th>지역</th>
							<td><input type="text" class="form-control"
								placeholder="영어 소문자로 입력해주세요 (ex. seoul) " id="pd_location"
								name="pd_location"></td>
							<td><span class="ck_warn pd_location_warn">지역을
									입력해주세요.</span></td>
						</tr>
						<tr>
							<th>성인 인원</th>
							<td><input type="text" class="form-control"
								placeholder="숫자로만 입력해주세요" id="adult_num" name="adult_num">
							</td>
							<td><span class="ck_warn adult_num_warn">성인 인원을
									입력해주세요.</span></td>
						</tr>
						<tr>
							<th>미성년자 인원</th>
							<td><input type="text" class="form-control"
								placeholder="숫자로만 입력해주세요" id="teenager_num" name="teenager_num">
							</td>
							<td><span class="ck_warn teenager_num_warn">미성년자 인원을
									입력해주세요.</span></td>
						</tr>
						<tr>
							<th>반려동물 수</th>
							<td><input type="text" class="form-control"
								placeholder="숫자로만 입력해주세요" id="pet_num" name="pet_num"></td>
							<td><span class="ck_warn pet_num_warn">반려동물 수를
									입력해주세요.</span></td>
						</tr>
						<tr>
							<th>성인 추가요금</th>
							<td><input type="text" class="form-control"
								placeholder="숫자로만 입력해주세요 (ex. 200000)" id="adult_price"
								name="adult_price"></td>
							<td><span class="ck_warn adult_price_warn">성인 추가요금을
									입력해주세요.</span></td>
						</tr>
						<tr>
							<th>미성년자 추가요금</th>
							<td><input type="text" class="form-control"
								placeholder="숫자로만 입력해주세요 (ex. 200000)" id="teenager_price"
								name="teenager_price"></td>
							<td><span class="ck_warn teenager_price_warn">미성년자
									추가요금을 입력해주세요.</span></td>
						</tr>
						<tr>
							<th>반려동물 추가요금</th>
							<td><input type="text" class="form-control"
								placeholder="숫자로만 입력해주세요 (ex. 200000)" id="pet_price"
								name="pet_price"></td>
							<td><span class="ck_warn pet_price_warn">반려동물 추가요금을
									입력해주세요.</span></td>
						</tr>
						<tr>
							<th>컨텐츠 1</th>
							<td colspan="2" style="padding: 0;"><textarea
									class="form-control" id="exampleFormControlTextarea1" rows="4"
									placeholder="컨텐츠을 입력해주세요"
									style="border: 0; resize: none; background-color: white;"
									name="pd_content1"></textarea></td>
						</tr>
						<tr>
							<th>컨텐츠2</th>
							<td colspan="2" style="padding: 0;"><textarea
									class="form-control" id="exampleFormControlTextarea2" rows="4"
									placeholder="컨텐츠를 입력해주세요"
									style="border: 0; resize: none; background-color: white;"
									name="pd_content2"></textarea></td>
						</tr>
						<tr>
							<th>컨텐츠3</th>
							<td colspan="2" style="padding: 0;"><textarea
									class="form-control" id="exampleFormControlTextarea3" rows="4"
									placeholder="컨텐츠을 입력해주세요"
									style="border: 0; resize: none; background-color: white;"
									name="pd_content3"></textarea></td>

						</tr>
						<tr>
							<th>컨텐츠4</th>
							<td colspan="2" style="padding: 0;"><textarea
									class="form-control" id="exampleFormControlTextarea4" rows="4"
									placeholder="컨텐츠를 입력해주세요"
									style="border: 0; resize: none; background-color: white;"
									name="pd_content4"></textarea></td>
						</tr>
						<tr>
							<th>컨텐츠5</th>
							<td colspan="2" style="padding: 0;"><textarea
									class="form-control" id="exampleFormControlTextarea5" rows="4"
									placeholder="컨텐츠를 입력해주세요"
									style="border: 0; resize: none; background-color: white;"
									name="pd_content5"></textarea></td>
						</tr>
						<tr>
							<th>대표이미지 선택</th>
							<td><input type="file" class="form-control" id="pd_image"
								name="pd_contentImage" style="height: 30px;"></td>
							<td><span class="ck_warn pd_image_warn">대표이미지를
									선택해주세요.</span></td>
						</tr>
						<tr>
							<th>상품이미지 1</th>
							<td colspan="2"><input type="file" class="form-control"
								id="pd_contentImage1" name="pd_contentImage"></td>
						</tr>
						<tr>
							<th>상품이미지2</th>
							<td colspan="2"><input type="file" class="form-control"
								id="pd_contentImage2" name="pd_contentImage"></td>
						</tr>
						<tr>
							<th>상품이미지3</th>
							<td colspan="2"><input type="file" class="form-control"
								id="pd_contentImage3" name="pd_contentImage"></td>
						</tr>
						<tr>
							<th>상품이미지4</th>
							<td colspan="2"><input type="file" class="form-control"
								id="pd_contentImage4" name="pd_contentImage"></td>
						</tr>
						<tr>
							<th>상품이미지5</th>
							<td colspan="2"><input type="file" class="form-control"
								id="pd_contentImage5" name="pd_contentImage"></td>
						</tr>
					</table>
					</div><div id="uploadResult"></div>
					<img id="imgSrc" src=""/>
					<div style="text-align: right;">
						<a class="btn btn-secondary" href="#" role="button"
							style="margin-top: 10px; margin-bottom: 10px;"
							onclick="moveTop()">상단으로 이동</a> <a class="btn btn-secondary"
							href="http://localhost:8088/trip/adminProduct/list.do"
							role="button" style="margin-top: 10px; margin-bottom: 10px;">취소</a>
						<input class="btn btn-secondary" type="button" value="저장"
							style="margin-right: 10px;" id="input" name="input">
					</div>
				</form>
			</div>
		</div>
	</div>
</body>

<script>
        
        // 에디터 적용 코드 ====================================================
    	// 컨텐츠 1 
    	ClassicEditor
    		.create(document.querySelector('#exampleFormControlTextarea1'))
    		.catch(error=>{
    			console.error(error);
    		});
    	// 컨텐츠 2 
    	ClassicEditor
    		.create(document.querySelector('#exampleFormControlTextarea2'))
    		.catch(error=>{
    			console.error(error);
    		});
    	// 컨텐츠 3 
    	ClassicEditor
    		.create(document.querySelector('#exampleFormControlTextarea3'))
    		.catch(error=>{
    			console.error(error);
    		});
    	// 컨텐츠 4 
    	ClassicEditor
    		.create(document.querySelector('#exampleFormControlTextarea4'))
    		.catch(error=>{
    			console.error(error);
    		});
    	// 컨텐츠 5 
    	ClassicEditor
    		.create(document.querySelector('#exampleFormControlTextarea5'))
    		.catch(error=>{
    			console.error(error);
    		});

    	
    	<%-- 
    	//===================================================================================대표이미지 선택
    	// 이미지 업로드 
    	$('input[name="pd_image"]').on("change", function(e){
/*     		console.log("fileObj : " + fileObj);
    		console.log("fileList : " + fileList);
    		console.log("fileName : " + fileObj.name);
    		console.log("fileSize : " + fileObj.size);
    		console.log("fileType(MimeType) : " + fileObj.type); */
    		
    		var formData = new FormData();
    		var fileInput = $('input[name="pd_image"]');
    		var fileList = fileInput[0].files;
    		var fileObj = fileList[0];
    		
    		// fileCheck()메소드 호출
    		if(!fileCheck(fileObj.name, fileObj.size)){ 
    			return false;
    		}
    		
    		// pd_image라는 이름으로 key 설정
    		formData.append("pd_image", fileObj);

    		$.ajax({
    			url: 'http://localhost:8088/trip/adminProduct/uploadAjax.do',
    	    	processData : false, // 서버로 전송할 데이터를 queryStirng 형태로 변환할지 여부
    	    	contentType : false, // 서버로 전송되는 데이터의 content-type
    	    	data : formData,
    	    	type : 'POST',
    	    	dataType : 'json',
    	    	success : function(result){
    	    		showUploadImage(result);
    	    	},
    	    	error : function(result){
    	    		alert("이미지 파일이 아닙니다.");
    	    	}
    		});	 // ajax 종료
    	}); // onChange 메소드 종료
    	

    	// 파일 업로드 형식, 사이즈 설정
    	var regex = new RegExp("(.*?)\.(jpg|png)$");
    	var maxSize = 1048576; //1MB = 1048576
    	function fileCheck(fileName, fileSize){
    		if(fileSize >= maxSize){
    			alert("파일 사이즈 초과");
    			return false;
    		}
    		if(!regex.test(fileName)){
    			alert("jpg, png 형식의 이미지만 업로드 가능합니다.");
    			return false;
    		}
    		return true;		
    	}

    	var cnt = 1;
    	// 이미지 출력 함수
    	function showUploadImage(uploadResultArr){
    		
    		// 전달받은 데이터 검증 
    		if(!uploadResultArr || uploadResultArr.length == 0){return}
    		var uploadResult = $("#uploadResult001");
    		var obj = uploadResultArr[0];
    		var str = "";
    		
    		var fileCallPath = encodeURIComponent(obj.uuid + "_" + obj.fileName);
    		str += "<div id='result_card'>";
    		str += "<img src='<%=request.getContextPath() %>/adminProduct/image?fileName=" + fileCallPath +"'>";
    		str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'>x</div>";
    		str += "<input type='hidden' name='imageList[0].fileName' value='"+ obj.fileName +"'>";
    		str += "<input type='hidden' name='imageList[0].uuid' value='"+ obj.uuid +"'>";
    		str += "<input type='hidden' name='imageList[0].uploadPath' value='"+ obj.uploadPath +"'>";		
    		str += "</div>";	
       		//uploadResult.append(str);     
       		uploadResult.append("<img src='<%=request.getContextPath() %>/adminProduct/image?fileName=" + fileCallPath +"'>");     

       		var fileInput = document.getElementById('pd_image');
       	 	fileInput.addEventListener('change', function(event) {
       	    var input = event.target;

       	    for (var i = 0; i < input.files.length; i++) {
       	  // 전달받은 데이터 검증 
        		if(!uploadResultArr || uploadResultArr.length == 0){return}
        		var uploadResult = $("#uploadResult");
        		var obj = uploadResultArr[i];
        		var str = "";
        		
        		var fileCallPath = encodeURIComponent("/" + obj.fileName);
        		str += "<div id='result_card'>";
        		str += "<img src='<%=request.getContextPath() %>/adminProduct/image?fileName=" + fileCallPath +"'>";
        		str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'>x</div>";
        		str += "<input type='hidden' name='imageList[i].fileName' value='"+ obj.fileName +"'>";
        		str += "<input type='hidden' name='imageList[i].uuid' value='"+ obj.uuid +"'>";
        		str += "<input type='hidden' name='imageList[i].uploadPath' value='"+ obj.uploadPath +"'>";		
        		str += "</div>";	
           		uploadResult.append(str);     
       	    }
       	  });
    	 }	 
    	//===================================================================================대표이미지 선택 --%>
        
    	
    	//===================================================================================상품이미지1~5 선택
    	var preViewArr = [];
    	var cnt = 0;
    	$('input[name="pd_contentImage"]').on("change", function(e){

    		    		var formData = new FormData();
    		    		var fileInput = $(this);
    		    		var fileList = fileInput[0].files;
    		    		var fileObj = fileList[0];
    		    		
/*     		    		console.dir(this.value);
    		    		console.log("fileList : " + fileList);
    		    		console.log("fileName : " + fileObj.name);
    		    		console.log("fileSize : " + fileObj.size);
    		    		console.log("fileType(MimeType) : " + fileObj.type);  */
    		    		
    		    		preViewArr=[];
    		    		$('div#uploadResult').html("");
    		    		$('input[name="pd_contentImage"]').each((i, item)=>{
    		    			if(item.files[0]){
    		    				var imgSrcValue = URL.createObjectURL(item.files[0]);
        		    			console.log("imgSrcValue => ", imgSrcValue)
        	    	    		preViewArr.push(imgSrcValue);
        		    			$('div#uploadResult').append('<img src="'+imgSrcValue+'">')
    		    			}
    		    		});
    		    		
    		    		//console.log(fileObj.name, fileObj.size);
    		    		// fileCheck()메소드 호출
    		    		//if(fileCheck(fileObj.name, fileObj.size)){ 
    		    		//if(fileObj) {
    		    			//console.log('미리보기 시작 ....', cnt)
    	    	    		//showUploadImage(preViewArr);
    	    	    		//$('#imgSrc').attr('src', imgSrcValue);
    		    			//return false;
    		    		//}
    		    		
    		    		var formData = new FormData();
    		    		// pd_contentImage라는 이름으로 key 설정
    		    		formData.append("pd_contentImage", fileObj);

    		    		
	    		    	
	    	// 파일 업로드 형식, 사이즈 설정
	    	
	    	var maxSize = 1048576; //1MB = 1048576
	    	function fileCheck(fileName, fileSize){
	    		
	    		if(fileSize >= maxSize){
	    			alert("파일 사이즈 초과");
	    			return false;
	    		}
	    		//var regex = new RegExp("$(.*?)\.(jpg|png)$", "i");
	    		var regex1 = new RegExp('\.jpg$', 'i'); 
	    		var regex2 = new RegExp('\.png$', 'i');
	    		//console.log("regex ===> ", regex)
	    		//console.log(fileName)
	    		if(!regex1.test(fileName) && !regex2.test(fileName)){
	    			alert("jpg, png 형식의 이미지만 업로드 가능합니다.");
	    			return false;
	    		}
	    		console.log("fileCheck ...");
	    		return true;		
	    	}
	    	
	    	function showUploadImage(uploadResultArr){
	    		for(var i=0; i<uploadResultArr.length; i++){
		    		// 전달받은 데이터 검증 
		    		if(!uploadResultArr || uploadResultArr.length == 0){return}
		    		var uploadResult = $("#uploadResult");
		    		var obj = uploadResultArr[i];
		    		var str = "";
		    		
		    		var fileCallPath = encodeURIComponent(obj.fileName);
<%-- 		    		str += "<div id='result_card'>";
		    		str += "<img src='<%=request.getContextPath() %>/adminProduct/image?fileName=" + fileCallPath +"'>";
		    		str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'>x</div>";
		    		str += "<input type='hidden' name='imageList[0].fileName' value='"+ obj.fileName +"'>";
		    		str += "<input type='hidden' name='imageList[0].uuid' value='"+ obj.uuid +"'>";
		    		str += "<input type='hidden' name='imageList[0].uploadPath' value='"+ obj.uploadPath +"'>";		
		    		str += "</div>";	 --%>
	    		}
	       		//uploadResult.append(str);     
	       		uploadResult.append("<img src='<%=request.getContextPath() %>/adminProduct/image?fileName=" + fileCallPath +"'>");     
	    	 }	 
    	
    	}); // onChange 메소드 종료
    	
    	
    	
        
        
    	</script>
		<script>
            $(document).ready(function () {
                document.getElementById('input').onclick = function () {
                    // 빈칸 체크   		
                    var nameCk = false;
                    var priceCk = false;
                    var keywordCk = false;
                    var startDateCk = false;
                    var endDateCk = false;
                    var cntCk = false;
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

                    var pd_name = $("input[name='pd_name']").val();
                    var pd_price = $("input[name='pd_price']").val();
                    var pd_keyword = $("input[name='pd_keyword']").val();
                    var pd_startDate = $("input[name='pd_startDate']").val();
                    var pd_endDate = $("input[name='pd_endDate']").val();
                    var pd_cnt = $("input[name='pd_cnt']").val();
                    var pd_theme = $("input[name='pd_theme']").val();
                    var pd_people = $("input[name='pd_people']").val();
                    var pd_location = $("input[name='pd_location']").val();
                    var adult_num = $("input[name='adult_num']").val();
                    var teenager_num = $("input[name='teenager_num']").val();
                    var pet_num = $("input[name='pet_num']").val();
                    var adult_price = $("input[name='adult_price']").val();
                    var teenager_price = $("input[name='teenager_price']").val();
                    var pet_price = $("input[name='pet_price']").val();
                    var pd_image = $("input[id='pd_image']").val();
                    
                    var pd_contentImage1 = $("input[id='pd_contentImage1']").val();
                    var pd_contentImage2 = $("input[id='pd_contentImage2']").val();
                    var pd_contentImage3 = $("input[id='pd_contentImage3']").val();
                    var pd_contentImage4 = $("input[id='pd_contentImage4']").val();
                    var pd_contentImage5 = $("input[id='pd_contentImage5']").val();
                    
                    console.log("pd_contentImage1 :",pd_contentImage1);
                    console.log("pd_contentImage2 :",pd_contentImage2);
                    console.log("pd_contentImage3 :",pd_contentImage3);
                    console.log("pd_contentImage4 :",pd_contentImage4);
                    console.log("pd_contentImage5 :",pd_contentImage5); 
                    
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
                    if (pd_cnt) {
                        $(".pd_cnt_warn").css('display', 'none');
                        cntCk = true;
                    } else {
                        $(".pd_cnt_warn").css('display', 'block');
                        cntCk = false;
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
/*                     if (pd_image) {
                        $(".pd_image_warn").css('display', 'none');
                        imageCk = true;
                    } else {
                        $(".pd_image_warn").css('display', 'block');
                        imageCk = false;
                    } */
                    
                    
                    
                    var allData = { "pd_name":pd_name, "pd_price":pd_price, "pd_keyword":pd_keyword, 
                    		"pd_startDate":pd_startDate, "pd_endDate":pd_endDate, "pd_cnt":pd_cnt, "pd_theme":pd_theme,
                    		"pd_people":pd_people, "pd_location":pd_location, "adult_num":adult_num, "teenager_num":teenager_num,
                    		"pet_num":pet_num, "adult_price":adult_price, "teenager_price":teenager_price, "pet_price":pet_price,
                    		"pd_image":pd_image, "pd_content1":pd_content1, "pd_content2":pd_content2, "pd_content3":pd_content3,
                    		"pd_content4":pd_content4, "pd_content5":pd_content5, "pd_contentImage1":pd_contentImage1, "pd_contentImage2":pd_contentImage2,
                    		"pd_contentImage3":pd_contentImage3, "pd_contentImage4":pd_contentImage4, "pd_contentImage5":pd_contentImage5
                    };
                    
                    
                    
                    
                    
                    
                    
                    if (nameCk && priceCk && keywordCk && startDateCk && endDateCk && themeCk && peopleCk && locationCk
                        && adultNumCk && teenNumCk && petNumCk && adultPriceCk && teenPriceCk && petPriceCk ) {
                    	$.ajax({
    		    			url: 'http://localhost:8088/trip/adminProduct/uploadAjax.do',
    		    	    	processData : false, // 서버로 전송할 데이터를 queryStirng 형태로 변환할지 여부
    		    	    	contentType : false, // 서버로 전송되는 데이터의 content-type
    		    	    	data : allData,
    		    	    	type : 'POST',
    		    	    	dataType : 'json',
    		    	    	success : function(result){
    		    	    		console.log("success ...")
    		    	    		// 업로드 성공
		                    	$("#insertForm").submit();
    		    	    	},
    		    	    	error : function(result){
    		    	    		alert("이미지 파일이 아닙니다.");
    		    	    	}
    		    		});	 // ajax 종료
                    } else {
                        alert('입력란을 다시 확인해주세요.');
                        $('html').scrollTop(0); // 빈 칸이 있을 때 상단으로 이동
                    } 
                    return false;
                } // onclick 종료
            }); // document 종료
            
            function moveTop() {
            	$('html').scrollTop(0); // 상단으로 이동
			};
        </script>
</html>