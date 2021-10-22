<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
      <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</head>
<body>
	<h1>Comment List Page</h1>
	
	 <table id="resListTab1" style="width: 100%; margin-top: 40px; border-top:2px solid #343a40">
       <tr style="height: 70px; background-color: #ededed; text-align: center;">
         <th>댓글 번호</th>
         <th>아이디</th>
         <th>리뷰 번호</th>
         <th>닉네임</th>
         <th>내용</th>
         <th>날짜</th>
         <th>수정</th>
         <th>삭제</th>
       </tr>
       <!---------forEach 시작-------------------------------------------------------------------------------------------------------------------------->
       <!--아래 onclick 회원 예약 상세 보기 페이지로 설정 해주세요-->
       <c:forEach var="board" items="${kommentList }">
       <tr class="risListTr1"
         style="height:70px; border-bottom:1px solid #ededed; text-align: center; cursor: pointer;" >
         <td>${board.kom_seq }</td>
         <td>${board.u_id}</td>
         <td>${board.reply_seq}</td>
         <td>${board.u_nickName}</td>
         <td>${board.kom_content}</td>
         <td>${board.kom_date }</td>
         <td>
            <a class="btn btn-secondary" href="http://localhost:8088/trip/komment/modify.do?kom_seq=${board.kom_seq }" role="button"
                style="margin-top:10px; height: 40px; margin-bottom: 10px;">수정</a></td>
         <td>
            <a class="btn btn-secondary"  role="button" onClick = "kommentDelete(${board.kom_seq})"
                style="margin-top:10px; height: 40px; margin-bottom: 10px;">삭제</a></td>
            
       </tr>
       </c:forEach> 
       <!---------forEach 끝-------------------------------------------------------------------------------------------------------------------------->
     </table>
     <script type="text/javascript">
     
	   	function kommentDelete(kom_seq){
	
	  		var kom_confirm = confirm('댓글을 삭제하시겠습니까?');
	  		if(!kom_confirm){
	  			
	  			return false;
	  		}else{
	  			var komData = {"kom_seq" : kom_seq}
	
	  			$.ajax({
			        url:"delete.do",
			        type:'POST',
			        data: komData,
			        success:function(data){
			            alert("삭제가 완료되었습니다!");
			            location.reload();							            	            
			        },
			        error:function(){
			            alert("에러 발생");
			        }
			    });
	  		}
	  	}
     </script>
</body>
</html>