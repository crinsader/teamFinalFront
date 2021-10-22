<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
.introMenu{height:50px; width: 150px; border-bottom:1px solid #ededed; line-height: 50px; text-align: center; margin-left:10px;}
.introMenu:hover{background-color: #ededed; cursor: pointer;}
 #introQue2{display:none;}
#introinfoTab1 th{width:40%; height:70px; background-color: #ededed;}
#introinfoTab1 td{width:60%; border-bottom:1px solid #ededed; font-size: 120%;}
#introinfoTab2 input{ margin-bottom:10px;border: 0; width: 50%; height: 60px; background-color: #ededed; color: black; font-size: 110%; border-radius: 10px; box-shadow: 0 0 10px #ededed;}
#introinfoTab2 input:hover{background-color:white; cursor: pointer;}
.introMenu2 table th:nth-child(1){ width: 100px; height: 50px; border-top:2px solid black; background-color: #ededed;}
.introMenu2 table th:nth-child(2){ width: 800px; border-top:2px solid black; background-color: #ededed;}
.introMenu2 table td:nth-child(2){ text-align: center; border-bottom: 1px solid #ededed;}
.introMenu2 table td:nth-child(2):hover{cursor: pointer; background-color: #ededed;}
.introInfotd3{ height: 50px; border-bottom: 1px solid #ededed; text-align: center;}
.introInfotd1 ul li{list-style: none; text-indent: -15px; margin-bottom: 10px;}
.introInfotd1 ol li{list-style: none; text-indent: 15px;margin-bottom: 10px;}
.introInfotd1 ol, .introInfotd1 ul{ margin:30px;} 
.introInfotd1{display: none; border-left: 5px solid black; text-align: left; border-bottom: 1px solid #ededed;}
</style>
</head>

<body>
<jsp:include page="../include/header2.jsp"></jsp:include>
<div style="margin:auto; width:1100px; min-height: 800px;">
      <div style="float:left;width:180px;">
          <h2 style="margin-left:10px; margin-top:30px; margin-bottom:10px;">고객센터</h2>
          <div class="introMenu" id="introInfodiv1" style="border-top:2px solid black;" 
          	onclick="location.href='<%=request.getContextPath()%>/user/cs.do'">공지사항</div>
          <div class="introMenu" id="introQuediv1" >자주하는질문</div>
          <div class="introMenu" id="introWishdiv1" onclick="location.href='<%=request.getContextPath()%>/myPage/list.do'">1대1문의</div>
      </div>
      
      
      <div style="float:right; width:915px; height: auto;">         
          

  <!-- ===============================================================================@@ 자주하는 질문 10/11 한보영 -->       
          
          <div class="introMenu2" id="introQue1">
              <h3 style="margin-left:10px; margin-top:50px; margin-bottom:10px;">자주하는질문</h3>
              
              <!-- @@ 검색 -->
              <select  class="serach">
				<option value="title">제목</option>
				<option value="content">내용</option>
			 </select>
			 <input class="keyword" type="text" /> 
              
              
              <!-- @@ list --> 
              <table class="A">
                <tr>
                    <th>No</th>
                    <th>제목</th>
                </tr>
                
             <c:forEach var="often" items="${oftenList }">    
              <tbody>      
                <tr class="tr01">
                    <td class="introInfotd3" >${often.of_seq }</td>
                    <td class="introInfotd2" >${often.of_title }</td>
                </tr>
                <tr class="tr02">
                    <td class="introInfotd1" colspan="2"> ${often.of_content } </td>
                </tr>
              </c:forEach> 
              </tbody>       
          </table>
          </div>
          
    <!-- ========================================================================================================== -->     

      </div>
  </div>
  
 <script>
	$(document).ready(function(){
        //공지사항 --------------------------------------------------------------------
        $(".introInfotd2").on("click", function(){
            if($(this).parent().next().children().css("display") == "none"){
                $(".introInfotd1").css("display", "none")
                $(".introInfotd3").css("border-left", "")
                $(this).parent().next().children().slideToggle("fast")
                $(this).prev().css("border-left", "5px solid black")
            }else{
                $(this).prev().css("border-left", "")
                $(this).parent().next().children().css("display", "none")
            }
        })
        //공지사항 --------------------------------------------------------------------



       

	})
	
	
	       
    	 //공지사항 & 자주묻는질문 검색 ---------------------------------------------------
    	
    	$(document).ready(function(){
    		$(".keyword").keyup(function(){
    			$(".tr01").hide();
    			if($(".serach").val() == "title"){
    				//console.log('제목')
    				 $(".A>tbody>tr>td:nth-child(2):contains(" + $(this).val() + ")").parent().show();
    				$(".A>tbody>tr>td:nth-child(2):contains(" + $(this).val() + ")").parent().prev().show();
    				$(".tr02"). css("display", "table-row") 
    			}else {
    				//console.log('내용')
     				$(".A>tbody>tr:nth-child(2)>td:contains(" + $(this).val() + ")").parent().show();
    				$(".A>tbody>tr:nth-child(2)>td:contains(" + $(this).val() + ")").parent().prev().show();
    				$(".tr02"). css("display", "table-row") 
    			}
    		});
    	});
          
           
   		//공지사항 & 자주묻는질문 검색 ---------------------------------------------------
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
 </script>	
	
	
</body>
<jsp:include page="../include/footer.jsp"></jsp:include>
</html>