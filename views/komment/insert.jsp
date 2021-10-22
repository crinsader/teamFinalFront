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
                 <th>댓글 번호</th>
                 <td>
                	  <input name = "kom_seq" value = 0 >
                 </td>
             </tr>
             <tr>
                 <th>아이디</th>
                 <td>
                	  <input name = "u_id"  value = "dhgustjd10"/>
                 </td>
             </tr>
             <tr>
                 <th>리뷰 번호</th>
                 <td>
                     <input type="text" name = "reply_seq" value = 52>
                 </td>
             </tr>
             <tr>
                 <th>닉네임</th>
                 <td>
                     <input type="text" name = "u_nickName" value = "닉네임">
                 </td>
             </tr>
             <tr>
                 <th>내용</th>
                 <td>
                     <input type="text" name = "kom_content" value = "굳이에여굳">
                 </td>
             </tr>
             <tr>
                 <th>날짜</th>
                 <td>
                     <input type="text" name = "kom_date" value = "">
                 </td>
             </tr>
         </table>
             <input type="submit" value="댓글 달기">
  
     </form>
</body>
</html>