<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.13.1/underscore-min.js"></script>
</head>

<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://unpkg.com/babel-standalone@6.15.0/babel.min.js"></script>

<style>
* {
	margin: 0px;
	padding: 0px;
	text-decoration: none;
}

#div001 {
	position: fixed;
	z-index: 5;
	width: 100%;
}

#div001_in01_in01>a {
	color: white;
}

#div001_in01_in01>a:hover {
	color: red; cursor: pointer;
}

#div001 {
	background-color: black;
	box-shadow: 0px 0px 10px;
}

#div001_in01 {
	margin: auto;
	width: 1082px;
	height: 60px;
	line-height: 60px;
}

#div001_in01_in01 {
	float: left;
}

#div001_in01_in02 {
	float: right;
}

#div001_in01_in02_in01 {
	text-align: right;
	width: 230px;
	height: 40px;
	background-color: black;
	border-bottom: 2px solid white;
}

#div001_in01_in02_in01>img {
	width: 20px;
}

#div001_in01_in02_in01:hover {
	cursor: pointer;
	border-bottom-color: red;
}

#div001_in01_in02_in02 {
	width: 230px;
	background-color: white;
	box-shadow: 0px 0px 5px;
	display: none;
	position: absolute;
	z-index: 2;
}

#div001_in01_in02_in02>div {
	height: 40px;
	line-height: 40px;
}

.div001_in01_in02_in02_in01 {
	border-bottom: 3px solid gray;
	width: 210px;
	font-weight: bold;
	margin: 10px;
}

#div001_in01_in02_in02>div>input {
	border: none;
	height: 35px;
	width: 160px;
	background-color: #f2f2f2;
	text-align: center;
}

#div001_in01_in02_in02>div>select {
	border: none;
	height: 35px;
	width: 210px;
	background-color: #f2f2f2;
	text-align-last: center;
}

#hearderInput001 {
	margin: 10px;
	border: none;
	color: white;
}

#hearderInput001:hover {
	cursor: pointer;
	color: red;
}
</style>

<body>
	<script>
	function logout() {
		if(confirm("정말 로그아웃 하시겠습니까?")){
			location.href = "<%=request.getContextPath() %>/user/logout.do";
			alert("로그아웃되었습니다");
	}
	}
	

	var searchTemp = `

		{{ for(var i=0; i<searchList.length; i++){  var search=searchList[i]; }}
         <figure>
            <div onclick="searchImgModalClick()" onmouseover="searchImgModalOver()" onmouseout="searchImgModalOut()" class="searchImgModal">찜</div>
            <img onmouseover="searchImg01Over()" onmouseout="searchImg01Out()" class="searchImg01" src="{{=search['pd_image'] }} " onclick="location.href='http://localhost:8088/trip/board/detail.do?pd_seq={{=search['pd_seq'] }} ' ">
            <div onmouseover="searchImgModal2Over()" onmouseout="searchImgModal2Out()" class="searchImgModal2">예약하기</div>
             <figcaption>
				<p>{{=search['pd_name'] }}</p>
	            <p>{{=search['pd_startDate'] }} ~ {{=search['pd_endDate'] }}</p>
	            <p># {{=search['pd_theme'] }} # {{=search['pd_theme'] }} # {{=search['pd_theme'] }}</p>
             </figcaption>
         </figure>     
		 {{ } }}
	
	`

		$(document).ready(function() {
			$("#div001_in01_in02_in01").click(function() {
				$("#div001_in01_in02_in02").slideToggle("fast");
			})
		});

		function search() {
			var location = $('.location').val();
			var startDate = $('.startDate').val();
			var endDate = $('.endDate').val();

			$.ajax({
				type : 'POST',
				/* data : JSON.stringify(param), */
				data : {
					location : $('.location').val(),
					//keyword : $('.land').val(),
					startDate : $('.startDate').val(),
					endDate : $('.endDate').val(),
				},
				
				url : "http://localhost:8088/trip/board/search.do",
				
				success : function(data) {
					//alert("송신완료");
					
					var searchList = JSON.parse(data).searchList;

					if(searchList===""){
						alert('출발 날짜와 도착날짜를 확인해주세요!')
						
					}else if(searchList==="contentMiss"){
						alert('검색할 정보가 없습니다!')

					}else{
					var compiled = _.template(searchTemp,null, {
					   interpolate :  /\{\{\=(.+?)\}\}/g,
					   evaluate: /\{\{(.+?)\}\}/g
					});
					//console.log(searchList);
					var html = compiled({"searchList": searchList});
					//html.trigger("create")
					$('#searchDiv001').html(html);
				}
				}
				
				
				

			});
		}
		
		//user logout
<%-- 		$("#btnLogout").on("click", function(){
			if(confirm("정말 로그아웃 하시겠습니까?")){
			location.href = "<%=request.getContextPath() %>/user/logout.do";
			alert("로그아웃되었습니다");
			}
		}); --%>

		
	</script>



	<div id="div001">
		<div id="div001_in01">
			<div id="div001_in01_in01">
				<a href="<%=request.getContextPath()%>/">&nbsp;
					홈 &nbsp;</a> 
					<%
		            String u_id = (String) session.getAttribute("u_id");
		            // 미로그인 시,
		            if(u_id == null) { %>
		            <a href="<%=request.getContextPath()%>/user/login.do">로그인 &nbsp;</a>
		            <a href="<%=request.getContextPath()%>/user/myPageInfo.do?u_id=${member.u_id}">회원정보 &nbsp;</a>
					<a href="<%=request.getContextPath()%>/user/cs.do">고객센터&nbsp;</a> 
					<a href="<%=request.getContextPath()%>/wishlist/list.do?u_id=${member.u_id }">찜&nbsp;</a> 
					<a href="<%=request.getContextPath()%>/userRes/list.do?u_id=${member.u_id}">예약조회&nbsp;</a> 
					<a href="<%=request.getContextPath()%>/board/search.do">리스트 &nbsp;</a>
		            <%}
		            // 로그인 성공 시,
		            else{%> 
		              <a onclick="logout()">&nbsp;로그아웃 &nbsp;</a>
		            <a href="<%=request.getContextPath() %>/user/myPageInfo.do?u_id=${member.u_id}">회원정보 &nbsp;</a>
					<a href="<%=request.getContextPath()%>/user/cs.do">고객센터&nbsp;</a> 
					<a href="<%=request.getContextPath()%>/wishlist/list.do?u_id=${member.u_id }">찜&nbsp;</a> 
					<a href="<%=request.getContextPath()%>/userRes/list.do?u_id=${member.u_id}">예약조회&nbsp;</a> 
					<a href="<%=request.getContextPath()%>/board/search.do">리스트 &nbsp;</a>
           		    <a style="color: green;"> " ${member.u_id} 님 환영합니다. "</a>
         	   <%}%>
					
					
			</div>
			<div id="div001_in01_in02">
				<div id="div001_in01_in02_in01">
					<img src="http://jjcom0214.cafe24.com/web/OneTrillion/search3.png"
						alt="">
				</div>
				<div id="div001_in01_in02_in02">
					<div style="height: 10px;"></div>
					<div class="div001_in01_in02_in02_in01">&nbsp;여행지</div>
					<div>
						<select name="" class="nation"
							style="margin: 10px; margin-top: 0;">
							<option value="korea">국내</option>
							<option value="abroad">해외</option>
						</select>
					</div>
					<div>
						<select name="" class="location" style="margin: 10px; margin-top: 0;">
							
							<option value="seoul">서울</option>
							<option value="kyeongki">경기</option>
							<option value="incheon">인천</option>
							<option value="kangwon">강원</option>
							<option value="chungnam">충남</option>
							<option value="chungbuk">충북</option>
							<option value="jeonbuk">전북</option>
							<option value="jeonnam">전남</option>
							<option value="kyungbuk">경북</option>
							<option value="kyungnam">경남</option>
							<option value="jeju">제주</option>

						</select>
					</div>
<!-- 					<div>
						<select name="" class="land" style="margin: 10px; margin-top: 0;">
							<option value="hanok">전주한옥마을</option>
							<option value="karosu">가로수길</option>
							<option value="sungsan">성산일출봉</option>
						</select>
					</div> -->
					<div style="height: 10px;"></div>
					<div class="div001_in01_in02_in02_in01">&nbsp;여행 예정일</div>
					<div style="margin: 10px; height: 30px;">
						출발 : <input class="startDate" type="date">
					</div>
					<div style="margin: 10px; height: 30px;">
						도착 : <input class="endDate" type="date">
					</div>
<!-- 					<div style="height: 10px;"></div>
					<div class="div001_in01_in02_in02_in01">&nbsp;인원</div>
					<div style="margin: 10px; height: 30px;">
						성&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;인 : <select
							style="width: 127px; float: right;" name="" id="">
							<option value="">1</option>
							<option value="">2</option>
							<option value="">3</option>
							<option value="">4</option>
						</select>
					</div>
					<div style="margin: 10px; height: 30px;">
						18세이하 : <select style="width: 127px; float: right;" name="" id="">
							<option value="">0</option>
							<option value="">1</option>
							<option value="">2</option>
							<option value="">3</option>
							<option value="">4</option>
						</select>
					</div>
					<div style="margin: 10px; height: 30px;">
						반려동물 : <select style="width: 127px; float: right;" name="" id="">
							<option value="">0</option>
							<option value="">1</option>
							<option value="">2</option>
							<option value="">3</option>
							<option value="">4</option>
						</select>
					</div> -->
					<div style="height: 10px;"></div>
					<div class="div001_in01_in02_in02_in01">&nbsp;가격</div>
					<div style="margin: 10px; height: 30px;">
						최소 : <input type="text" value="10000">
					</div>
					<div style="margin: 10px; height: 30px;">
						최대 : <input type="text" value="1000000">
					</div>
					<div style="height: 10px;"></div>
					<div style="height: 60px;">
						<input id="hearderInput001" type="button" value="검색"
							onclick="search()"
							style="width: 210px; margin: 10px; border: none; background-color: black;">
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>