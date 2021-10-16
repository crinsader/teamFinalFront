<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
      <script src="//code.jquery.com/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
<c:if test="${sessionScope.u_id != null }">
	<jsp:include page="../include/header2.jsp"></jsp:include>
</c:if>
<%
	// 로그인 처리 -> 로그인 x (로그인페이지 이동)
	String u_id = (String) session.getAttribute("u_id");
	if( u_id != null){
	}else{%>
		<script> alert('로그인이 필요합니다.'); window.location.href="http://localhost:8088/trip/user/login.do"; </script>
<%}%>
<style>
#deleteDiv11 input{width: 500px; height: 50px; border: 0; background-color: #ededed; text-align: center; font-size: 130%;}
#deleteDiv11 input:hover{background-color: #f8f8fa;}
#u_id{ border-radius: 15px 15px 0 0;}
#deleteDiv11 button{width: 500px; height: 50px; border: 0; background-color: black; border-radius: 0 0 15px 15px; color: white; font-size: 120%;}
#deleteDiv11 button:hover{cursor: pointer; color: red;}
.deleteDiv12{height: 2px;}
</style>
<div style="margin:auto; width:1100px; height:800px; text-align: center;">
	<h1 style="margin-top :150px;">삭제를 위해서 비밀번호를 다시 입력해주세요.</h1>
	<div style="height: 150px;"></div>
	<input id="u_pwd_ori" value="${member.u_pwd }" type="hidden">
	<div id="deleteDiv11" style="width:520px; margin:auto;">
		<input id="u_id" value="${member.u_id }" type="text" readonly>
		<div class="deleteDiv12"></div>
		<form action="deleteInfo.do"  method="post" id="form">
			<input id="u_pwd"  type="password">
			<div class="deleteDiv12"></div>
			<button type="button" id="submitbtn">회원 탈퇴</button>
		</form>
	</div>
</div>
<script type="text/javascript">

var u_pwd_ori=$("#u_pwd_ori").val(); //원래 비밀면호
console.log("u_pwd_ori > "+u_pwd_ori);

var u_pwd=document.getElementById('u_pwd').value; //적은 비밀번호
console.log("u_pwd > "+u_pwd);
		
		window.onload = function() {		
	    document.getElementById('submitbtn').onclick = function() {
    		var u_pwd=document.getElementById('u_pwd').value; //적은 비밀번호
    		console.log("u_pwd > "+u_pwd);
    		
	    	if(u_pwd != u_pwd_ori){
	    		console.log("u_pwd > "+u_pwd);
		    	alert("비밀번호가 다릅니다!");
	    	}else{
	    		var delete_user = confirm('정말로 탈퇴 하실 건가요?');
	        	
	        	if(!delete_user){
	        		return false;
	        	}else{
	    		
		    	alert("탈퇴 되었습니다. 안녕히가세요ㅜㅜ");
		        document.getElementById('form').submit();
		        return false;
	        	}
	        
	    	}
	        
	   	 };
		};
	    
</script>
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>