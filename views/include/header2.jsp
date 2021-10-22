<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html lang="en">

	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>OneTrillion</title>
 		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
			integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
			crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
			integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
			crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
			integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
			crossorigin="anonymous"></script>
	</head>
	<style>
		.navbar a {
			font-size: 130%;
		}
		#top_btn{
		  position: fixed;
		  right: 0;
		  bottom: -50px;
		  display: inline-block;
		  background-color: black;
		  width: 80px;
		  height: 60px;
		  line-height: 50px;
		  font-weight: bold;
		  opacity: 0;
		  transition: 0.7s ease;
		  font-size: 17px;
		  text-align: center;
		
		}
		
		#top_btn.on{
		  opacity: 1;
		  cursor: pointer;
		  bottom: 0;
		  text-align: center;
		opacity: 0.8;
		}
	</style>

	<body>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark"
			style="height:auto; min-height: 70px; box-shadow: 0 0 20px gray;">
			<div class="container-fluid" style="width: 1300px; padding-right: 0;">
				<a class="navbar-brand" href="<%=request.getContextPath()%>/" style="font-weight: bold;font-size: 30px">OneTrillion</a>
				<% String u_id=(String) session.getAttribute("u_id"); if(u_id==null){%>
					<div class="navbar-collapse" id="navbarNav">
						<ul class="navbar-nav">
							<li class="nav-item">
								<a class="nav-link" href="<%=request.getContextPath()%>/user/login.do">Login</a>
							</li>
							<li class="nav-item">
								<a class="nav-link"
									href="<%=request.getContextPath() %>/user/myPageInfo.do?u_id=${member.u_id}">Member</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="<%=request.getContextPath()%>/user/cs.do">Customer</a>
							</li>
							<li class="nav-item">
								<a class="nav-link"
									href="<%=request.getContextPath()%>/userRes/list.do?u_id=${member.u_id}">Reservation</a>
							</li>
							<li class="nav-item">
								<a class="nav-link"
									href="<%=request.getContextPath()%>/wishlist/list.do?u_id=${member.u_id }">Wishlist</a>
							</li>
						</ul>
					</div>
					<%}else{%>
						<div class=" navbar-collapse" id="navbarNav">
							<ul class="navbar-nav">
								<li class="nav-item">
									<a class="nav-link" id="btnLogout" href="#">Logout</a>
								</li>
								<li class="nav-item">
									<a class="nav-link"
										href="<%=request.getContextPath() %>/user/myPageInfo.do?u_id=${member.u_id}">Member</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="<%=request.getContextPath()%>/user/cs.do">Customer</a>
								</li>
								<li class="nav-item">
									<a class="nav-link"
										href="<%=request.getContextPath()%>/userRes/list.do?u_id=${member.u_id}">Reservation</a>
								</li>
								<li class="nav-item">
									<a class="nav-link"
										href="<%=request.getContextPath()%>/wishlist/list.do?u_id=${member.u_id }">Wishlist</a>
								</li>
							</ul>
						</div>
						<%}%>
							<div>
								<ul class="navbar-nav">
									<% u_id=(String) session.getAttribute("u_id"); if(u_id==null){%>
										<%}else{%>
											<li class=" nav-item">
												<a class="nav-link"
													style="border:1px solid gray; border-radius: 10px;">${member.u_nickName}</a>
											</li>
											<%}%>
												<li class=" nav-item">
													<a class="nav-link"
														href="<%=request.getContextPath()%>/board/search.do" >MD Travel</a>
												</li>
								</ul>
							</div>
			</div>
		</nav>
		       <a id="top_btn" style="color: white; text-decoration: none ">TOP</a>   

	</body>
	<script>

		$(document).ready(function () {
			$("#div001_in01_in02").on("click", function () {
				location.href = "<%=request.getContextPath() %>/board/search.do";
			})
		})

		$("#btnLogout").on("click", function () {
			if (confirm("정말 로그아웃 하시겠습니까?")) {
				location.href = "<%=request.getContextPath() %>/user/logout.do";
				alert("로그아웃되었습니다");
			}
		});
		$(window).scroll(function(){
		    
		    if( $(this).scrollTop() > 100 ){
		      $("#top_btn").addClass("on");
		    }
		    else{
		      $("#top_btn").removeClass("on");
		    }
		    
		  });
		    
		$("#top_btn").click(function(){
		  window.scrollTo({top : 0, behavior: 'smooth'}); 
		});


	</script>

	</html>