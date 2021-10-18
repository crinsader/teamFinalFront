<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>비회원 예약 리스트 페이지</h1>
	<div>
      <c:forEach var="board" items="${noUserResList }">
	           <p>res_seq : ${board.res_seq }, res_pwd : ${board.res_pwd }, pd_seq : ${board.pd_seq }, pd_name : ${board.pd_name }, pd_startDate : ${board.pd_startDate }</p>
	           <p>pd_endDate : ${board.pd_endDate }, adult_num : ${board.adult_num }, teenager_num : ${board.teenager_num }, pet_num : ${board.pet_num }, adult_price : ${board.adult_price }</p>
	           <p>teenager_price : ${board.teenager_price }, pet_price : ${board.pet_price }, res_price : ${board.res_price }, res_people : ${board.res_people }</p>
	           <p>res_name : ${board.res_name }, res_birth : ${board.res_birth }, res_email : ${board.res_email }, res_comment : ${board.res_comment }</p>
	           <hr />
      </c:forEach> 
      
                  <a href="<%=request.getContextPath() %>/noUserRes/login.do">비회원으로 예약조회하기</a>
      
   </div>
</body>
</html>