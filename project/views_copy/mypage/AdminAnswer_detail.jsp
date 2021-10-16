<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<h1>답변완료</h1>

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
<h2>${cl_dto.cl_seq  }번 관리자 답변</h2>


<table style="undefined;table-layout: fixed; width: 853px" border="1px">
<colgroup>
<col style="width: 344px">
<col style="width: 509px">
</colgroup>

<tbody>
  <tr>
    <td>관리자 아이디</td>
    <td>${ans_dto.ad_id } </td>
  </tr>
  <tr  >
    <td  style=" height:200px" >답변 내용</td>
    <td>${ans_dto.ans_content  }</td>
  </tr>
    <tr>
    <td>답변 작성 날짜</td>
    <td>${ans_dto.ans_Date }</td>
  </tr>
  
</tbody>
</table>


<button onclick="location.href='modify.do?cl_seq=${cl_dto.cl_seq}' ">답변 수정하기</button>
<button onclick="ad_btn_delete(${ans_dto.ans_seq })">답변 삭제하기</button>
<button onclick="location.href='list.do'">목록으로</button>
</body>




<script type="text/javascript">


//========================================================================@한보영 삭제하기 구현 10/14 
function ad_btn_delete(ans_seq){  
    	var ad_delete = confirm('답변을 삭제하시겠습니까?');						    	
    	if(!ad_delete){
    		return false;
    	}else{
	    	var seqdata ={"ans_seq":ans_seq};
	    	console.log(seqdata)
		    $.ajax({
		        url:"delete.do",
		        type:'POST',
		        data: seqdata,
		        success:function(data){
		            alert("삭제되었습니다.");
		            location.href = "./list.do";							            	            
		        },
		        error:function(){
		            alert("에러");
		        }
		    });	//ajax 끝
    	}//if끌						    	
    };//ad_btn_delete  끝=============================================@삭제하기 	


</script>

</html>