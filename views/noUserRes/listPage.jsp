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
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</head>
<body>
<h1>userResPage paging</h1>
     <table id="resListTab1" style="width: 100%; margin-top: 40px; border-top:2px solid #343a40">
       <tr style="height: 70px; background-color: #ededed; text-align: center;">
         <th>예약번호</th>
         <th>예약자명</th>
         <th>상품번호</th>
         <th>생년월일</th>
         <th>이메일</th>
         <th>핸드폰번호</th>
         <th>비밀번호</th>
       </tr>
       <!---------forEach 시작-------------------------------------------------------------------------------------------------------------------------->
       <!--아래 onclick 회원 예약 상세 보기 페이지로 설정 해주세요-->
       <c:forEach var="board" items="${noUserResList }">
       <tr class="risListTr1"
         style="height:70px; border-bottom:1px solid #ededed; text-align: center; cursor: pointer;" >
         <td>${board.res_seq }</td>
         <td>${board.res_name}</td>
         <td>${board.pd_seq}</td>
         <td>${board.res_birth}</td>
         <td>${board.res_email}</td>
         <td>${board.res_phone }</td>
         <td>${board.res_pwd }</td>
       </tr>
       </c:forEach> 
       <!---------forEach 끝-------------------------------------------------------------------------------------------------------------------------->
     </table>
<div>
 <ul>
  <c:if test="${pageMaker.prev}">
   <li><a href="listPage.do${pageMaker.makeQuery(pageMaker.startPage - 1)}">이전</a></li>
  </c:if> 
  
  <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
   <li><a href="listPage.do${pageMaker.makeQuery(idx)}">${idx}</a></li>
  </c:forEach>
    
  <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
   <li><a href="listPage.do${pageMaker.makeQuery(pageMaker.endPage + 1)}">다음</a></li>
  </c:if> 
 </ul>
</div>
</body>
</html>