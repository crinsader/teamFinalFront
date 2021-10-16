<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
*{margin:0px;padding:0px;text-decoration:none;}
#div001_in01_in01>a{color: white;}
#div001_in01_in01>a:hover{color: red;cursor: pointer;} 
#div001{background-color: black; box-shadow: 0px 0px 10px; z-index:2; position: relative;}
#div001_in01{margin:auto;width: 1082px; height: 60px; line-height: 60px;}
#div001_in01_in01{float: left;}
#div001_in01_in02{float: right;}


#div001_in01_in02_in01{text-align: right; width:230px; height:40px; background-color: black; border-bottom: 2px solid white;}
#div001_in01_in02_in01>img{width: 20px; height: auto;}
#div001_in01_in02_in01:hover{cursor: pointer; border-bottom-color: red;}

</style>
<body>

<div id="div001">
    <div id="div001_in01">
        <div id="div001_in01_in01">
            <a href="<%=request.getContextPath() %>/">&nbsp; 홈 &nbsp;</a>
            
				<%
		            String u_id = (String) session.getAttribute("u_id");
		            // 미로그인 시,
		            if(u_id == null){%>
		            <a href="<%=request.getContextPath() %>/user/login.do">로그인 &nbsp;</a>
		            <a href="<%=request.getContextPath() %>/user/myPageInfo.do?u_id=${member.u_id}">회원정보 &nbsp;</a>
					<a href="<%=request.getContextPath()%>/user/cs.do">고객센터&nbsp;</a> 
					<a href="<%=request.getContextPath()%>/wishlist/list.do?u_id=${member.u_id }">찜&nbsp;</a> 
					<a href="<%=request.getContextPath()%>/userRes/list.do?u_id=${member.u_id}">예약조회&nbsp;</a> 
					<a href="<%=request.getContextPath()%>/board/search.do">리스트 &nbsp;</a>
		            <%}
		            // 로그인 성공 시,
		            else{%> 
		              <a id="btnLogout">&nbsp;로그아웃 &nbsp;</a>
		            <a href="<%=request.getContextPath() %>/user/myPageInfo.do?u_id=${member.u_id}">회원정보 &nbsp;</a>
					<a href="<%=request.getContextPath()%>/user/cs.do">고객센터&nbsp;</a> 
					<a href="<%=request.getContextPath()%>/wishlist/list.do?u_id=${member.u_id }">찜&nbsp;</a> 
					<a href="<%=request.getContextPath()%>/userRes/list.do?u_id=${member.u_id}">예약조회&nbsp;</a> 
					<a href="<%=request.getContextPath()%>/board/search.do">리스트 &nbsp;</a>
           		    <a style="color: green;"> " ${member.u_id} 님 환영합니다. "</a>
         	   <%}%>
       
        </div>
            <div id="div001_in01_in02">
            	<div id="div001_in01_in02_in01"><img src="http://jjcom0214.cafe24.com/web/OneTrillion/search3.png" alt=""></div>
			</div>
		</div>
	</div>
	<script>
	
	$(document).ready(function(){
		$("#div001_in01_in02").on("click", function(){
			location.href="<%=request.getContextPath() %>/board/search.do";
		})
	})
	
			$("#btnLogout").on("click", function(){
		if(confirm("정말 로그아웃 하시겠습니까?")){
		location.href = "<%=request.getContextPath() %>/user/logout.do";
		alert("로그아웃되었습니다");
		}
	});

	</script>

</body>
</html>