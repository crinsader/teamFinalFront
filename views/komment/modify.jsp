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
		 <input type="hidden" name = "reply_seq" value = "${kommentDetail.reply_seq }" />   
         <table>
	  		
             <tr>
                 <th>댓글 번호</th>
                 <td>
                	  <input type="text" name = "kom_seq" value = "${kommentDetail.kom_seq }"/>
                	 
                 </td>
             </tr>
             <tr>
                 <th>아이디</th>
                 <td>
                	  <input type="text" name = "u_id" value = "${kommentDetail.u_id }"/>
                 </td>
             </tr>
             
             <tr>
                 <th>닉네임</th>
                 <td>
                     <input type="text" name = "u_nickName" value = "${kommentDetail.u_nickName }">
                 </td>
             </tr>
             <tr>
                 <th>내용</th>
                 <td>
                     <input type="text" name = "kom_content" value = "${kommentDetail.kom_content }">
                 </td>
             </tr>

         </table>
             <input type="submit" value="댓글 수정">
  
     </form>
</body>
</html>