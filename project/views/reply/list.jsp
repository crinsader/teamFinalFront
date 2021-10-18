<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Reply List Page</h1>
              <table id="resListTab1" style="width: 100%; margin-top: 40px; border-top:2px solid #343a40">
                <tr style="height: 70px; background-color: #ededed; text-align: center;">
                  <th>댓글 번호</th>
                  <th>아이디</th>
                  <th>상품번호</th>
                  <th>상품명</th>
                  <th>댓글 쓴 날짜</th>
                  <th>내용</th>
                  <th>별점</th>
                  <th>수정</th>
                  <th>삭제</th>
                  
                </tr>
                <!---------forEach 시작-------------------------------------------------------------------------------------------------------------------------->
                <!--아래 onclick 회원 예약 상세 보기 페이지로 설정 해주세요-->
                <c:forEach var="board" items="${replyList }">
                <tr>
                  <td>${board.reply_seq }</td>
                  <td>${board.u_id}</td>
                  <td>${board.pd_seq}</td>
                  <td>${board.reply_title}</td>
                  <td>${board.reply_date}</td>
                  <td>${board.reply_content}</td>
                  <td>${board.reply_rate}</td>
                  <td><button onClick = "location.href='<%=request.getContextPath() %>/reply/modify.do?reply_seq=${board.reply_seq}' ">수정</button></td>
                  <td><button onClick = "replyDelete(${board.reply_seq})">삭제</button></td>
                  
                </tr>
                </c:forEach> 
                <!---------forEach 끝-------------------------------------------------------------------------------------------------------------------------->
              </table>
              <script type="text/javascript">
              	function replyDelete(reply_seq){

              		var reply_confirm = confirm('댓글을 삭제하시겠습니까?');
              		
              		if(!reply_confirm){
              			
              			return false;
              		}else{
              			var replyData = {"reply_seq" : reply_seq}

              			$.ajax({
					        url:"delete.do",
					        type:'POST',
					        data: replyData,
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