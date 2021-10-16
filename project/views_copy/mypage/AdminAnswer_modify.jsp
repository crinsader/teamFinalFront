<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
         <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>관리자 1:1문의 입력 페이지 입니다</h1>

<h2>문의 내용</h2>
<table style="undefined;table-layout: fixed; width: 853px" border="1px">
<colgroup>
<col style="width: 344px">
<col style="width: 509px">
</colgroup>
<tbody>
  <tr>
    <td>문의 번호</td>
    <td>${cl_dto.cl_seq  }</td>
  </tr>
  <tr>
    <td>회원 정보</td>
    <td> ${cl_dto.u_id  } (  ${cl_dto.u_nickName  })</td>
  </tr>
   <tr>
    <td>문의 유형</td>
    <td>${cl_dto.cl_type  }</td>
  </tr>
  <tr>
    <td>문의 내용</td>
    <td>제목 : ${cl_dto.cl_title  }<br>
    	내용 :${cl_dto.cl_content  }</td>
  </tr>
  <tr>
    <td>문의 작성일</td>
    <td>${cl_dto.cl_Date  }</td>
  </tr>
</tbody>
</table>


<br><br><br>
<h2>답변 수정하기</h2>

<form action="modify.do" method="post" id="form" >  
<table style="undefined;table-layout: fixed; width: 853px" border="1px">
<colgroup>
<col style="width: 344px">
<col style="width: 509px">
</colgroup>

<tbody>
  <tr>
    <td>관리자 아이디</td>
    <td>
     <input type="hidden"  style="border: 0; width: 500px" name="ad_id" value="${ans_dto.ad_id  }">
     <input type="hidden" value="${cl_dto.cl_seq  }" name="cl_seq" id="cl_seq">
     <input type="hidden" value="${ans_dto.ans_seq  }" name="ans_seq">
     <input type="hidden" name="ans_Date">
     ${ans_dto.ad_id  }
    </td>
  </tr>
  <tr>
    <td>답변 내용</td>
    <td>
    <textarea rows="10"  style="border: 0; width: 500px" name="ans_content"  id="ans_content" > ${ans_dto.ans_content  }</textarea>    
    </td>
  </tr>
</tbody>
</table>
 <input type="button" id="modi_submitbtn" value="답변 등록" >
 </form> 
</body>


<script type="text/javascript">

var cl_seq =$('#cl_seq').val();

	document.getElementById('modi_submitbtn').onclick = function() {                        	
	
		   	 if($('#ans_content').val() == ''){   
		  		 alert('문의 내용을 입력해주세요')
		  	 }else{
		  		 document.getElementById('form').submit(); //수정완료   			  		 
		  	 }
		};//modi_submitbtn 눌렀을 때 form을 submit!


</script>

</html>