<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="UTF-8">
      <title>커뮤니티</title>
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
      <style>
        * {
          margin: 0;
          padding: 0;
        }

        #resListTab1 th,
        #resListTab3 th {
          border-right: 1px solid white;
        }

        #resListTab1 td,
        #resListTab3 td {
          border-right: 1px solid #ededed;
        }

        #resListTab2 th {
          background-color: #ededed;
          border-bottom: 1px solid white;
        }

        #resListTab2 td {
          border-bottom: 1px solid #ededed;
        }

        .risListTr1:hover {
          background-color: #f8f9fa;
        }
        th{
        height: 50px; 
        background-color: #ededed; 
        text-align: center;
        width: 90%;
        }
      </style>
    </head>

    <body>
      <script type="text/javascript">

      </script>
        <jsp:include page="../include/header2.jsp"></jsp:include>
          <div style="margin:auto; width:1100px; height:100%; min-height: 800px;">            
            <div style="float:right;width:1100px;">
              <div>
                <nav class="navbar-dark bg-dark" style="margin-top:40px; height: 50px; line-height: 40px;">
                  <a class="navbar-brand" style="font-size: 100%; margin-left: 20px;" href="#">커뮤니티</a>
                </nav>
              </div>
              <table id="resListTab1" style="width: 100%; margin-top: 40px; border-top:2px solid #343a40; text-align: center;">
                <tr>                   
                   <td rowspan='2'> <img  src="https://ifh.cc/g/MgKNiI.png" style="height: 150px"> </td>
                   <td>${dto.com_title }</td>
                </tr>
                <tr>                	
	                <td style="text-align: left; "><b>작성자</b> : ${dto.u_id }　　　　<b>조회수</b> : ${dto.com_cnt }　　　　<b>작성날짜</b> : ${dto.com_date }</td>
                </tr>
               	<tr>
               		<td colspan='2' style="height: 300px; border :1px solid #ededed;  text-align: left; ">${dto.com_content }</td>   
               	</tr>      
              </table>

 	<!-- 댓글 입력 영역 ##############################################################################################################-->
		<div class="collapse" id="reply_card${tmp.no }">
		    <section class="modal-section">
		        <div class="card card-body">
		            <!-- 댓글 목록 -->
		            <div class="reply-list reply-list${tmp.no }">
		                <!-- 댓글이 목록이 들어가는 곳 -->
		            </div>
		            <!-- 댓글 작성 => 로그인한 상태여야만 댓글작성 칸이 나온다. -->
		             <c:set var="session_u_id" value="${member.u_id}" />
		            <c:if test="${not empty session_u_id }">
		                <div class="row reply_write">
		                    <div class="col-1">
		                        <a href="other_profile.do?other_nick=${tmp.writer }">		                           
		                        </a>
		                    </div>
		                    <div class="col-8" class="input_reply_div">
		                        <input class="w-100 form-control" id="input_reply${tmp.no}"
		                            type="text" placeholder="댓글입력...">
		                    </div>
		                    <div class="col-3 ">
		                        <button type="button" idx="${tmp.no }"
		                            class="btn btn-success mb-1 write_reply">댓글&nbsp;달기</button>
		                    </div>
		                </div>
		            </c:if>
		        </div>
		    </section>
		</div>


<!-- 버튼(목록 / 수정 / 삭제) ############################################################################################################## -->
			<input class="btn btn-secondary" type="button" value="목록으로" onclick="location.href='<%=request.getContextPath() %>/community/list.do' "  style="margin-top:10px; height: 40px;">  
	          <div style="float: right;">            
	            <c:set var="u_id" value="${dto.u_id}" />
	            <c:set var="session_u_id" value="${member.u_id}" />
				<c:if test="${ u_id eq session_u_id}">					
				     <input class="btn btn-secondary" type="button" value="글 삭제" onclick="cl_btn_delete(${dto.com_seq  })" style="margin-top:10px; height: 40px;">   
	         		 <input class="btn btn-secondary" type="button" value="글 수정" onclick="location.href='<%=request.getContextPath() %>/community/modify.do?com_seq=${dto.com_seq }' "
	                                     										 style="margin-top:10px; height: 40px;">
				</c:if>
		     </div>                    
            </div>            
          </div>
       <jsp:include page="../include/footer.jsp"></jsp:include>
    </body>
    
    
    
<script type="text/javascript">

	function form_replySubmit() { ///댓글 입력

		var com_seq = $("#com_seq").val();
		console.log(com_seq);
		
		var data2 ={"com_seq":com_seq 
					,"re_writer" : $("#re_writer").val()
					,"re_content" : $("#re_content").val() };
		console.log('data22 > '+data2)		
		
	    $.ajax({
	        url:"replyInput.do",
	        type:'POST',
	        data: data2,
	        success:function(data){
	            alert("댓글이 입력되었습니다.");
	            location.href = "./detail.do?com_seq="+$("#com_seq").val();						            	            
	        },
	        error:function(){
	            alert("에러");
	        }
	    });	//ajax 끝
		
		

		 	
	}



function cl_btn_delete(com_seq){  //====================@ 삭제
	var cl_delete = confirm('게시글을 삭제하시겠습니까?');						    	
	if(!cl_delete){
		return false;
	}else{
	var seqdata ={"com_seq":com_seq};
	console.log('삭제2 > '+com_seq)		
	
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
};//cl_btn_delete  끝=============================================@삭제





</script>
    </html>