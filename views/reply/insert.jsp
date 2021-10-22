<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>reply insert page</h1>

	 <form action="insert.do" method="post"  id="form">   
         <table>

             <tr>
                 <th>아이디</th>
                 <td>
                	  <input name = "u_id" value = "${replyInsertDto.u_id}"/>
                 </td>
             </tr>
             <tr>
                 <th>상품번호</th>
                 <td>
                	  <input name = "pd_seq"  value = "${replyInsertDto.pd_seq}"/>
                 </td>
             </tr>
             <tr>
                 <th>댓글 제목</th>
                 <td>
                     <input type="text" name = "reply_title" value = "전주한옥마을 후기">
                 </td>
             </tr>
             <tr>
                 <th>댓글 내용</th>
                 <td>
                     <input type="text" name = "reply_content" value = "정말재밌었어용">
                 </td>
             </tr>
             <tr>
                 <th>평점</th>
                 <td>
                     <input type="text" name = "reply_rate" value = 5>
                 </td>
             </tr>
             <tr>
                 <th>좋아요</th>
                 <td>
                     <input type="text" name = "reply_like" value = 5>
                 </td>
             </tr>
         </table>
             <input type="submit" value="댓글 달기">
  
     </form>
</body>
</html>