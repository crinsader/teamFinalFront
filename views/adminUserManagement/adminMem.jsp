<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원정보 관리 리스트 페이지</title>
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
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        .list-group-item:hover {
            cursor: pointer;
            background-color: #f8f9fa;
        }

        .adminMainDiv1 p {
            margin-bottom: 0;
            line-height: 45px;
            text-align: center;
            font-weight: bold;
            background-color: #ededed;
            border-radius: 20px 20px 0 0;
        }

        #adminMemtable1 th {
            width: 25%;
            height: 40px;
            background-color: #ededed;
            border-bottom: 1px solid white;
            text-align: center;
        }

        #adminMemtable1 td {
            border-bottom: 1px solid #ededed;
            padding-left: 20px;
        }

        .table-hover td {
            width: 18%;
        }

        table {
            table-layout: fixed;
            word-break: break-all;

        }

        td {
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
        }
    </style>
</head>

<body>
    <div style="width: 1800px; height: 100vh;">
       		<jsp:include page="../include/adminInclude.jsp"></jsp:include>

        <div style="float:right; width: 1500px;height: 100%;">
            <div
                style="margin-top: 40px; width: 1500px; height: 90%; border-radius: 20px; box-shadow: 0 0 20px #ededed;">
                <div class="adminMainDiv1">
                    <p>회원정보 관리 리스트</p>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th scope="col">U_ID</th>
                                <th scope="col">U_NICKNAME</th>
                                <th scope="col">U_EMAIL</th>
                                <th scope="col">수정/강제탈퇴</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- forEach 문 시작--------------------------------------------------------------------------------------------------------------------------------------->
                            <c:forEach var="user" items="${userList }">
                            <tr>
                                <td>${user.u_id }</td>
                                <td>${user.u_nickName }</td>
                                <td>${user.u_email }</td>
                                <td>
                                    <a class="btn btn-secondary btn001" href="userModify?u_id=${user.u_id}" role="button"
                                        style="padding: 5px;">수정</a>
                                    <a class="btn btn-secondary btn001" onclick="btn_delete('${user.u_id }')" role="button"
                                        style="padding: 5px;">강제탈퇴</a>
                                </td>
                            </tr>
                            </c:forEach>
                            <!-- forEach 문 끝--------------------------------------------------------------------------------------------------------------------------------------->
                        </tbody>
                    </table>
                    <div style="width: 100%;">
                        <!--페이징 tag 시작----------------------------------------------------------------------------------------------------------------------------------------->
                        <div style="float: left; margin-left: 10px;">
                            <ul class="pagination">
                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="Previous"
                                        style="color: gray; border:1px solid #ededed">
                                        <span aria-hidden="true">&laquo;</span>
                                        <!-- <span class="sr-only">Previous</span> -->
                                    </a>
                                </li>
                                <li class="page-item"><a class="page-link" href="#"
                                        style="color: gray;border:1px solid #ededed">1</a></li>
                                <li class="page-item"><a class="page-link" href="#"
                                        style="color: gray;border:1px solid #ededed">2</a></li>
                                <li class="page-item"><a class="page-link" href="#"
                                        style="color: gray;border:1px solid #ededed">3</a></li>
                                <li class="page-item"><a class="page-link" href="#"
                                        style="color: gray;border:1px solid #ededed">4</a></li>
                                <li class="page-item"><a class="page-link" href="#"
                                        style="color: gray;border:1px solid #ededed">5</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="Next"
                                        style="color: gray;border:1px solid #ededed">
                                        <span aria-hidden="true">&raquo;</span>
                                        <!-- <span class="sr-only">Next</span> -->
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <!--페이징 tag 끝----------------------------------------------------------------------------------------------------------------------------------------->
                        <div style="float: right; margin-right: 10px;">
                            <div class="input-group mb-3" style="width: 300px; float: left; margin-right: 10px;">
                                <input type="text" class="form-control" placeholder="검색할 단어를 입력하세요"
                                    aria-label="Recipient's username" aria-describedby="button-addon2"
                                    style="border:1px solid #ededed;">
                                <button class="btn btn-outline-secondary" type="button" id="button-addon2"
                                    style="border:1px solid #ededed">검색</button>
                            </div>
                            <a class="btn btn-secondary" href="userInput" role="button">등록</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


	<script type="text/javascript">
	function btn_delete(u_id){  //====================@ lsit에서 삭제하기 
		console.log(u_id);
		    var deleteQ = confirm(u_id+'번 문의글을 삭제하시겠습니까?');                         
		   if(!deleteQ){
		      return false;
		   }
		   else{
		   var seqdata ={"u_id":u_id};
  
		   
		    $.ajax({
		        url:"userDelete",
		        type:'POST',
		        data: seqdata,
		        success:function(data){
		            alert("삭제되었습니다.");
		            location.href = "./userList";                                                
		        },
		        error:function(){
		            alert("에러");
		        }
		    });   //ajax 끝
		   }//if끌                           
		};//btn_delete  끝=============================================@삭제2 
	</script>
</body>

</html>