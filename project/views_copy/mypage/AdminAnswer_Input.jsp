<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
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
<h2>답변하기</h2>

<form action="input.do" method="post"  id="form">  
<table style="undefined;table-layout: fixed; width: 853px" border="1px">
<colgroup>
<col style="width: 344px">
<col style="width: 509px">
</colgroup>

<tbody>
  <tr>
    <td>관리자 아이디</td>
    <td>
     <input type="text"  style="border: 0; width: 500px" name="ad_id" value="TrillionAdmin1">
     <input type="hidden" value="${cl_dto.cl_seq  }" name="cl_seq">
     
    </td>
  </tr>
  <tr>
    <td>답변 내용</td>
    <td>
    <textarea rows="10"   style="border: 0; width: 500px" placeholder="내용을 입력하세요" name="ans_content"></textarea>
    
    </td>
  </tr>
</tbody>
</table>
 <input type="submit" value="답변 등록" id="submitbtn">
 </form>
</body>
</html>