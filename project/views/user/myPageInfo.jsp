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
<style>
.myPageMenu{height:50px; width: 150px; border-bottom:1px solid #ededed; line-height: 50px; text-align: center; margin-left:10px;}
    .myPageMenu:hover{background-color: #ededed; cursor: pointer;}
    #myPageQue1, #myPageWish1, #myPageRes1{display:none;}
    #myPageinfoTab1 th{width:40%; height:70px; background-color: #ededed;}
    #myPageinfoTab1 td{width:60%; border-bottom:1px solid #ededed; text-align: center; font-size: 120%;}
    #myPageinfoTab2 input{ margin-bottom:10px;border: 0; width: 50%; height: 60px; background-color: #ededed; color: black; font-size: 110%; border-radius: 10px; box-shadow: 0 0 10px #ededed;}
    #myPageinfoTab2 input:hover{background-color:white; cursor: pointer;}

</style>
</head>   
<body>
<script type="text/javascript">

</script>
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

<div style="margin:auto; width:1100px; height:800px;">
      <div style="float:left;width:180px; height:600px; ">
          <h2 style="margin-left:10px; margin-top:30px; margin-bottom:10px;">마이페이지</h2>
          <div class="myPageMenu" id="myPageInfodiv1" style="border-top:2px solid black;">개인정보</div>
          <div class="myPageMenu" id="myPageQuediv1"  onclick="location.href='<%=request.getContextPath() %>/myPage/list.do'">1대1문의</div>
          <div class="myPageMenu" id="myPageWishdiv1"><a href="<%=request.getContextPath() %>/wishlist/list.do?u_id=${member.u_id}">찜 내역</a></div>
          <div class="myPageMenu" id="myPageResdiv1">예약내역</div>
      </div>
      <div style="float:right;width:915px;">
          <div class="myPageMenu2" id="myPageinfo1">
              <h3 style="margin-left:10px; margin-top:50px; margin-bottom:10px;">개인정보</h3>
              <table id="myPageinfoTab2" style="width:900px;">
                  <tr>
                      <td style="height: 300px; width: 40%; text-align: center;">
                          <div style="margin: auto; width:100px;height:100px; background-color: #ededed; border-radius: 50px; text-align: center; line-height: 100px; box-shadow: 0 0 10px #ededed; font-size: 120%;">${member.u_nickName }</div>
                          <div>고객님 안녕하세요!</div>
                      </td>
                      <td >
                          <div style="margin: auto; width: 100%;  text-align: center;">
                              <input type="button" value="회원정보 변경" onclick="location.href='<%=request.getContextPath() %>/user/modifyInfoPass.do'">
                              <input type="button" value="회원탈퇴"  onclick="location.href='<%=request.getContextPath() %>/user/deleteInfo.do' ">
                          </div>
                      </td>
                  </tr>
              </table>
              <table id="myPageinfoTab1" style="width:900px">
                  <tr>
                      <th style="border-top:2px solid black">아이디</th>
                      <td style="border-top:2px solid black">${member.u_id }</td>
                  </tr>
                  <tr>
                      <th>성함</th>
                      <td>${member.u_nickName }</td>
                  </tr>
                  <tr>
                      <th>이메일</th>
                      <td>${member.u_email }</td>
                  </tr>
              </table>
          </div>
          <div class="myPageMenu2" id="myPageQue1">
              <h3 style="margin-left:10px; margin-top:50px; margin-bottom:10px;">1대1문의</h3>
          </div>
          <div class="myPageMenu2" id="myPageWish1">
              <h3 style="margin-left:10px; margin-top:50px; margin-bottom:10px;">찜 내역</h3>
          </div>
          <div class="myPageMenu2" id="myPageRes1">
              <h3 style="margin-left:10px; margin-top:50px; margin-bottom:10px;">예약내역</h3>
          </div>
      </div>
  </div>
 <script>



   $(document).ready(function(){
      function mypageModifyDelete(){
         
         if(confirm("탈퇴하시겠습니까?")){
            location.href="./delete.do";                        
         }
      }
      
      
      $(".myPageMenu").on("click", function(){
         $(".myPageMenu2").css("display", "none")
         var thisAttr = $(this).attr("id");
         if(thisAttr == "myPageInfodiv1"){
            $("#myPageinfo1").css("display", "block")
         }else if(thisAttr == "myPageWishdiv1"){
            $("#myPageWish1").css("display", "block")
         }else if(thisAttr == "myPageResdiv1"){
            $("#myPageRes1").css("display", "block")
         }
      })
   })
 </script>

<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>