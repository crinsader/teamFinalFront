<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>1대1문의 답변수정 페이지</title>
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
          <!-- ============================================================================@@ 1:1 관리자 [답변] 수정 10/14 한보영 -->  
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
        }

        .form-control {
            border: 0;
        }

        .adminMemtable2 td {
            padding-left: 10px;
        }
    </style>
</head>

<body>
    <div style="width: 1800px; height: 100vh;">
      		<jsp:include page="../include/adminInclude.jsp"></jsp:include>

        <div style="float:right; width: 1500px;height: auto;">
            <div
                style="margin-top: 40px; margin-bottom: 40px; width: 1000px; height: auto; border-radius: 20px; box-shadow: 0 0 20px #ededed;">
                <div class="adminMainDiv1">
                    <p>1대1문의 답변수정</p>
                </div>
                <table id="adminMemtable1" class="adminMemtable2" style="width: 100%; border-top: 2px solid #343a40;">
                    <tr>
                        <th colspan="2">1대1문의 내용</th>
                    </tr>
                     <tr>
                        <th>문의 번호</th>
                        <td>${cl_dto.cl_seq  }</td>
                    </tr>
                    <tr>
                        <th>회원 아이디</th>
                        <td>${cl_dto.u_id  }</td>
                    </tr>
                    <tr>
                        <th>닉네임</th>
                        <td>${cl_dto.u_nickName  }</td>
                    </tr>
                    <tr>
                        <th>제 목</th>
                        <td> ${cl_dto.cl_title  }</td>
                    </tr>
                    <tr>
                        <th>문의 날짜</th>
                        <td>${cl_dto.cl_Date  }</td>
                    </tr>
                    <tr>
                        <th>문의 유형 </th>
                        <td>${cl_dto.cl_type  } </td>
                    </tr>
                    <tr style="height: 100px;">
                        <th>내 용</th>
                        <td>${cl_dto.cl_content  }</td>
                    </tr>
                </table>
     <form action="modify.do" method="post" id="form" >            
                <table id="adminMemtable1" style="width: 100%; border-top: 2px solid #343a40;">
                    <tr>
                        <th colspan="2">답변수정</th>
                    </tr>
                    <tr>
                        <th>관리자 아이디</th>
                        <td>
                        	<input type="hidden"  style="border: 0; width: 500px" name="ad_id" value="${ans_dto.ad_id  }">
						    <input type="hidden" value="${cl_dto.cl_seq  }" name="cl_seq" id="cl_seq">
						    <input type="hidden" value="${ans_dto.ans_seq  }" name="ans_seq">
						    <input type="hidden" name="ans_Date">
                        	${ans_dto.ad_id  }
                        </td>
                    </tr>
                    <tr>
                        <th>답변 내용</th>
                        <td>
                        	<textarea class="form-control" id="exampleFormControlTextarea1" rows="4"
                                placeholder="ANS_CONTENT"
                                style="border:0; resize: none; background-color: white;" name="ans_content"  id="ans_content" >${ans_dto.ans_content  }</textarea>
                        </td>   
                    </tr>
                </table>
                <div style="text-align: right;">
                    <a class="btn btn-secondary" href="javascript:history.back()" role="button"
                        style="margin-top:10px; margin-bottom: 10px;">취소</a>
                    <input class="btn btn-primary" type="button" value="수정완료"  id="modi_submitbtn" style="margin-right: 10px;">
                </div>
 	</form>
            </div>
        </div>
    </div>
</body>

<script type="text/javascript">

	var cl_seq =$('#cl_seq').val();
	document.getElementById('modi_submitbtn').onclick = function() {  //수정버튼을 누르면     
		   	 if($('#ans_content').val() == ''){   
		  		 alert('문의 내용을 입력해주세요')
		  	 }else{
		  		 document.getElementById('form').submit(); //수정완료   			  		 
		  	 }
	};//==========================================================================


</script>
</html>