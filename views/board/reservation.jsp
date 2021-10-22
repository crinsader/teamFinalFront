<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
</style>
</head>
<body>
<script src="https://cdn.bootpay.co.kr/js/bootpay-3.2.3.min.js" type="application/javascript"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<jsp:include page="../include/header2.jsp"></jsp:include>
<style>
.resDiv01{margin-top:30px;}
.resDiv01>h2{margin-bottom:10px; margin-left:15px;}
#resTab01 p{margin:10px;}
#resTab01 td, #resTab02 td, #resTab03 td{height: 30px;}
.resDiv01 button{height: 50px; width:332px; background-color: black; color: white; border:0;border-right: 2px solid white; border-radius: 5px; font-size: 110%;}
.resDiv01 button:hover{color: red; cursor: pointer;	}
#resTab02 td:nth-child(1), #resTab02 td:nth-child(3){width: 15%; height: 50px; background-color: #ededed}
#resTab02 td:nth-child(2), #resTab02 td:nth-child(4){width: 35%; height: 50px;}
#resTab02 tr:nth-child(3) td:nth-child(4){height: 70px;}
#resTab02 div{margin-left:15px;}
#resTab02 td{border-bottom:1px solid #ededed;}
#resTab02 tr:nth-child(1) td{border-top:2px solid black;}
#resTab03 td:nth-child(1){width:30%; background-color: #ededed; height: 50px;}
#resTab03 td:nth-child(2){width: 70%;  height: 50px;}
#resTab03 div{margin-left:15px;}
#resTab03 input[type=text]{height: 40px; width: 90%; border:0}
#resTab03 td{border-bottom:1px solid #ededed;}
#resTab03 tr:nth-child(1) td{border-top:2px solid black;}
#resTab03 td:nth-child(2):hover{background-color: #f8f8fa;}
#resTab03 input:hover{background-color:#f8f8fa;}
.essential_write{color: red;}
</style>
<div style="width: 1000px; margin:auto;">
	<div class="resDiv01">
		<h1 style="text-align: center;margin-top:30px; margin-bottom:30px;">OneTrillion Trip Reservation </h1>
		<h2>예약방법</h2> <!-- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::예약하기 -->
		<table id="resTab01" width="1000px">
			<tr>
				<td style="text-align: center; color: red; font-size: 120%; font-weight: bold; background-color: #ededed; height: 50px; border-top:2px solid black;"> 
					 여행자 정보 입력 ▶ 약관 동의 ▶ 결제 ▶ 예약 완료 
				</td>
			</tr>
			<tr>
				<td style="border-bottom:1px solid #ededed;">
					<p> * 선택하신 상품정보를 확인하신 후 정보를 입력하여 예약을 진행해 주세요.</p>
					<p>* 해당 예약은 담당자가 확인 후 확정되며, 최종 예약 확정이 완료되면 예약금 결제 부탁 드립니다.</p>
					<p>* 예약금은 일정표를 참고해주시거나, 담당자에게 안내 받으실 수 있습니다.</p>
					<p>* 최종 예약 확정 후 담당자와 약속한 시간 내에 예약금을 입금하지 않을 경우 임의 취소될 수 있습니다.</p>
				</td>
			</tr>
		</table>
	</div>
	<div class="resDiv01">
		<h2> 상품 정보</h2> <!-- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::상품 정보 -->
		<table id="resTab02" style="width:1000px;">
			<tbody>
				<tr>
					<td><div>상품명</div></td>
					<td id="pd_name"><div>${dto.pd_name }</div></td>
					<td><div>상품번호</div></td>
					<td id="pd_seq"><div>${dto.pd_seq }</div></td>
				</tr>
				<tr>
					<td><div>여행기간</div></td>
					<td colspan="3"><div>${dto.pd_startDate} ~ ${dto.pd_endDate } (${period}박 ${period2}일)</div></td>
				</tr>
				<tr>
					<td><div>기준인원</div></td>
					<td><div>${dto.pd_people }명</div></td>
					<td><div>추가인원</div></td>
					<td>
						<div>성인 ${param.sel_adault}</div>
						<div>18세 미만 ${param.sel_young}</div>
						<div>반려동물 ${param.sel_pet}</div>
					</td>
				</tr>
				<tr>
					<td><div>예약자 아이디</div></td>
					<td id="u_id"><div>${param.u_id}</div></td>
					<td><div>총 가격</div></td>
					<td><div>${total_price_won}원</div></td>
					<input type="hidden" id="total_price" value="${param.total_price}" />
				</tr>
			</tbody>		
		</table>
	</div>
	<div class="resDiv01">
		<h2> 여행자 정보 입력</h2> <!-- :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::예약자 정보 -->
		<table id="resTab03" style="width: 1000px;"> 
			<tr>
				<td><div><span class="essential_write">** </span>성 함</div></td>
				<td><div><input type="text" id = "bookerName" placeholder="여행자 명을 작성 해주세요"/></div></td>
			</tr>
			<tr>
				<td><div><span class="essential_write">** </span>생년월일</div></td>
				<td><div><input type="text" id = "bookerBirth" placeholder="생년월일을 작성 해주세요 예) 20210912"/></div></td>
			</tr>
			<tr>
				<td><div><span class="essential_write">** </span>이메일</div></td>
				<td><div><input style="width: 40%" type="text" id="bookerEmail" placeholder="이메일을 작성 해주세요">@ <input style="width: 40%" type="text" id="textEmail" placeholder="이메일을 선택하세요."> 
					<select id="select" style="height: 50px; border-radius: 25px; border-color: #ededed">
							<option value="" disabled selected>email선택</option>
							<option value="naver.com" id="naver.com">naver.com</option>
							<option value="hanmail.net" id="hanmail.net">hanmail.net</option>
							<option value="gmail.com" id="gmail.com">gmail.com</option>
							<option value="nate.com" id="nate.com">nate.com</option>
							<option value="directly" id="textEmail">직접입력하기</option>
					</select></div>
				</td>
			</tr>
			<tr>
				<td><div><span class="essential_write">** </span>휴대폰번호</div></td>
				<td><div><input style="width: 65%"type="text" id = "bookerPhone" placeholder=" '-' 포함해서 입력 해주세요"/> <input type="checkbox" name="agree_message" value="1"><span> 예약 알림 메세지 수신 동의</span></div>
			</tr>
			<tr>
				<td><div>요청사항</div></td>
				<td><div><input type="text" id = "bookerComment" placeholder="요청사항을 작성 해주세요"/></div></td>
			</tr>
		</table>
	</div>
	<div class="resDiv01">
		<h2> 필수 약관 동의</h2> <!-- ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::약관 동의 -->
		<jsp:include page="agree.jsp"></jsp:include>
	</div>
	<hr style="margin-top:30px;border:1px solid black;"/>
	<div class="resDiv01">
		<h2 style="text-align: center; margin-left:0;">총 결제 금액</h2><!-- ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 총금액 -->
		<h1 style="color: red; text-align: center;">${total_price_won}원</h1>
	</div>
	<div class="resDiv01" style="text-align: center;">
		<button id="item_pay">결제하기</button><button id="item_pay_success" onclick="payFinished()">결제완료</button><button onclick="location.href='http://localhost:8088/trip/board/detail.do?pd_seq=${param.pd_seq}' "  style="border-right:0;">취소하기</button>
		<button id = "test0101">여행자 정보 불러오기</button>
	</div>
</div>
<jsp:include page="../include/footer.jsp"></jsp:include>
<script type="text/javascript"> //===================================================================== [ script ] 결제 AIP






/* $("#item_pay_success").click(function(){
	//location.href="./success.do?pd_seq=" + pd_seq+"&u_id="+u_id;
    location.href="../userRes/list.do?pd_seq=" + pd_seq+"&u_id="+u_id; //결제 완료되면 완료페이지로 이동

}); //item_pay_success 함수(끝) */

$(function() { //이메일 입력
    $('#select').change(function() {
        if ($('#select').val() == 'directly') {
            $('#textEmail').attr("disabled", false);
            $('#textEmail').val("");
            $('#textEmail').focus();
        } else {
            $('#textEmail').val($('#select').val());
        }
    })
});

	// : : : : : :  BootPay 결제를 위한 변수 선언 : : : : : : : : :
	const total_price=$("#total_price").val(); //총 금액 가져오기
	const pd_name=$("#pd_name").text(); //상품이름
	const pd_seq=$("#pd_seq").text();
	const u_id=$("#u_id").text();

	
	//console.log(pd_name);


	
	//2021. 10. 11 15:50 현성 userReservation - 회원 예약하기 insert 구현
	function payFinished(){
		
		const bookerEmail = $("#bookerEmail").val()+"@"+$('#textEmail').val();
		const total_people = ${dto.pd_people}+${param.sel_adault}+${param.sel_young}+${param.sel_pet}
		const total_adult_price = ${param.sel_adault}*${dto.adult_price };
		const total_teenager_price = ${param.sel_young}*${dto.teenager_price };
		const total_pet_price = ${param.sel_pet}*${dto.pet_price };

		var bookerData = {
				pd_seq : "${dto.pd_seq }",
				pd_name : "${dto.pd_name }",
				pd_startDate : "${dto.pd_startDate}", 
				pd_endDate : "${dto.pd_endDate }",	
				adult_num : ${param.sel_adault},	//total_adult_num
				teenager_num : ${param.sel_young},	//total_teenager_num
				pet_num : ${param.sel_pet},			//total_pet_num
				adult_price : total_adult_price,	//total_adult_price
				teenager_price : total_teenager_price,//total_teenager_price
				pet_price : total_pet_price,		//total_pet_price
				res_price : $("#total_price").val(), //all_price
				res_people : total_people,
				res_name : $("#bookerName").val(),
				res_birth : $("#bookerBirth").val(),
				res_email : bookerEmail,
				res_comment : $("#bookerComment").val(),
				res_phone : $("#bookerPhone").val(),
				u_id : "${param.u_id}",
				
		}
		
		$.ajax({
			type : 'POST',
			data : bookerData,
			url : "http://localhost:8088/trip/userRes/finished.do",
			success : function(data){
				console.log('데이터 처리 완료')
				location.href = "http://localhost:8088/trip/userRes/list.do?u_id="+u_id;
			},
			error : function(request, status){
				alert('실패');
				console.log(status);
			}
		});
	} // 현성 insert 구현 끝
	
	
//2021. 10. 11 16:35 현성 - 회원 예약자 정보 유효성 검사 확인
$(document).ready(function(){
	$("#item_pay").click(function(){//===========================================결제하기 버튼 눌렀을 때 이벤트!			
		var birthValue = $("#bookerBirth").val();
		var birthEffect = /^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;
		var birthCheck = birthEffect.exec(birthValue);
		var emailEffect = /((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
		var emailCheck = emailEffect.exec($('#textEmail').val());
		var phoneEffect = /01[016789]-[^0][0-9]{2,3}-[0-9]{3,4}/;
		var phoneCheck = phoneEffect.exec($("#bookerPhone").val());

		if($("#agree_01").is(":checked") == false || $("#agree_02").is(":checked") == false || $("#agree_03").is(":checked") == false){ //약관 동의를 하지 않았을 경우
			alert('모든약관에 동의하셔야 결제 가능합니다.');
			$('#agree_01').focus(); //동의하는 곳으로 포커스
			return;
		}else if($("#bookerName").val()==""){
			alert('예약자명을 확인해주세요!')
			return;
		
		}else if(birthValue=="" ) {
			alert('생년월일을 다시 한번 확인해주세요!');
			return;
		}else if(birthCheck == null){
			alert('생년월일의 양식을 확인해주세요! (ex : 20210101)');
			return;
		}else if($("#bookerEmail").val() == "" || $('#textEmail').val() == ""){
			alert('이메일을 다시 한번 확인해주세요!');
			return;
		}else if(emailCheck == null){
			alert('이메일의 양식을 확인해주세요! (ex : oneTrillion@gmail.com)');
			return;
		}else if($("#bookerPhone").val() == ""){
			alert('핸드폰 번호를 확인해주세요!')
		}else if(phoneCheck == null){
			alert('핸드폰 번호의 양식을 확인해주세요!(ex : 010-0000-0000)')
		}
		else { //약관 체크가 되어있을 경우 BootPay 실행!
		
		const bookerEmail = $("#bookerEmail").val()+"@"+$('#textEmail').val();
		
		
        BootPay.request({
        	 price: total_price, // 결제할 금액
             application_id: '613ecc0f7b5ba4002352b1a7',
             name: pd_name, // 아이템 이름,
             phone: $("#bookerPhone").val(),
             order_id: pd_seq,
             pg: 'kcp',
             method: 'card',
             show_agree_window: 1, // 결제 동의창 띄우기 여부 1 - 띄움, 0 - 띄우지 않음
             items: [ // 결제하려는 모든 아이템 정보 ( 통계 데이터로 쓰이므로 입력해주시면 좋습니다. 입력하지 않아도 결제는 가능합니다.)
                 {
                     item_name: pd_name,
                     qty: 1, // 판매한 아이템의 수량
                     unique: pd_seq, 
                     price: total_price // 아이템 하나의 단가
                 }
             ],
             user_info: { // 구매한 고객정보 ( 통계 혹은 PG사에서 요구하는 고객 정보 )
                 email: bookerEmail,
                 phone: $("#bookerPhone").val(),                        
                 username: $("#bookerName").val(),
             }
         }).error(function (data) { 
             // 결제가 실패했을 때 호출되는 함수입니다.
             var msg = "결제 에러입니다. ";
             alert(msg);
             //console.log(data);
         }).cancel(function (data) {
             // 결제창에서 결제 진행을 하다가 취소버튼을 눌렀을때 호출되는 함수입니다.
             var msg = "결제를 취소하셨습니다. ";
             alert(msg);
             //console.log(data);
         }).confirm(function (data) {
             // 결제가 진행되고 나서 승인 이전에 호출되는 함수입니다.
             // 일부 결제는 이 함수가 호출되지 않을 수 있습니다. ex) 가상계좌 및 카드 수기결제는 호출되지 않습니다.        
             // 만약 이 함수를 정의하지 않으면 바로 결제 승인이 일어납니다.
             if (confirm('결제를 정말 승인할까요?')) {
                 console.log("do confirm data: " + JSON.stringify(data));
                 // 이 함수를 반드시 실행해야 결제가 완전히 끝납니다.
                 // 부트페이로 서버로 결제를 승인함을 보내는 함수입니다.
                 this.transactionConfirm(data);
             } else {
                 var msg = "결제가 승인거절되었습니다.";
                 alert(msg);
                 console.log(data);
             }
         }).done(function (data) {
             // 결제가 모두 완료되었을 때 호출되는 함수입니다.
             alert("결제가 완료되었습니다.");
             location.href="../userRes/list.do?pd_seq=" + pd_seq+"&u_id="+u_id; //결제 완료되면 완료페이지로 이동
             //console.log(data);
         }).ready(function (data) {
             // 가상계좌 번호가 체번(발급) 되었을 때 호출되는 함수입니다.
             //console.log(data);
        }); //결제 AIP 끝
         
         
         
		}//else 끝
         
         
    });//item_pay 클릭 함수 끝
});//document 끝
</script>	
</body>
</html>