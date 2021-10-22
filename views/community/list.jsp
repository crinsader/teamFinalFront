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
              <table id="resListTab1" style="width: 100%; margin-top: 40px; border-top:2px solid #343a40">
                <tr style="height: 70px; background-color: #ededed; text-align: center;">
                  <th>글번호</th>
                  <th>제목</th>
                  <th>작성자<input type="hidden" value="${member.u_id}" name="u_id" id="u_id"></th>                  
                  <th>조회수</th>
                  <th>작성 날짜</th>
                 
                </tr>
                <!---------forEach 시작-------------------------------------------------------------------------------------------------------------------------->

                <c:forEach var="community" items="${commuList }">
                <tr class="commTr1" onclick="godetail(${community.com_seq  })" class="tr_info"
                  style="height:70px; border-bottom:1px solid #ededed; text-align: center; cursor: pointer;" >
                  
                  <td style="width: 10%">${community.com_seq }</td>
                  <td style="width: 48%">${community.com_title }</td>
                  <td style="width: 12%">${community.u_id }</td>
                  <td style="width: 10%">${community.com_cnt }</td>
                  <td style="width: 10%">${community.com_date }</td>               
                </tr>
                </c:forEach> 
                <!---------forEach 끝-------------------------------------------------------------------------------------------------------------------------->
              </table>
               <input class="btn btn-secondary" type="button" value="글 작성"
                                    onclick="If_User() "
                                        style="margin-top:10px; height: 40px;">                                      
            </div>
          </div>
        

          <jsp:include page="../include/footer.jsp"></jsp:include>
    </body>
<script>


var com_seq =0;//전역변수에 담기
function godetail(seq){	
	com_seq=seq
	console.log(com_seq)
	location.href='detail.do?com_seq='+com_seq; 
}//


function If_User() {

	var u_id = $("#u_id").val();

	if (u_id == "") {
		alert("로그인 후 게시글 작성 가능합니다.");
		location.href = "./../user/login.do";
	} else  {

		location.href = "input.do"
	}

}



</script>
    </html>