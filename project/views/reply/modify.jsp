<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>reply modify page</h1>
	
		 <form action="modify.do" method="post"  id="form">   
         <table>
	  		
             <tr>
                 <td>
                	 <input type="hidden" name = "reply_seq" value = "${replyDetail.reply_seq }"/>
                 </td>
             </tr>
             <tr>
             <tr>
                 <th>아이디</th>
                 <td>
                	  <input type="text" name = "u_id" value = "${replyDetail.u_id }"/>
                	  
                	  <input type="hidden" name = "reply_seq" value = "${replyDetail.reply_seq }"/>
                 </td>
             </tr>
             <tr>
                 <th>상품번호</th>
                 <td>
                	  <input type="text" name = "pd_seq" value = "${replyDetail.pd_seq }"/>
                 </td>
             </tr>
             <tr>
                 <th>댓글 제목</th>
                 <td>
                     <input type="text" name = "reply_title" value = "${replyDetail.reply_title }">
                 </td>
             </tr>
             <tr>
                 <th>댓글 내용</th>
                 <td>
                     <input type="text" name = "reply_content" value = "${replyDetail.reply_content }">
                 </td>
             </tr>
             <tr>
                 <th>평점</th>
                 <td>
                     <input type="text" name = "reply_rate" value = ${replyDetail.reply_rate }>
                 </td>
             </tr>
         </table>
             <input type="submit" value="댓글 수정">
  
     </form>
</body>
</html>