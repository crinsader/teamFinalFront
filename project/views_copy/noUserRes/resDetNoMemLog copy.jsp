<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html>
<head>
    <meta charset="UTF-8">
    <meta hloginp-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>비회원 예약조회 로그인</title>
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
    * {
        margin: 0;
        padding: 0;
        text-decoration: none;
    }

    #logindiv01 {
        width: 100%;
        height: 95vh;
    }

    #logintable01 {
        margin: auto;
        width: 400px;
        height: 100%;
        text-align: center;
    }

    .btn-dark {
        width: 400px;
        height: 45px;
    }

    .input-group{
        height: 45px;
        margin-bottom: 5px;
    }
    .input-group-text{
        width: 65px;
    }

</style>

<body>
    <div id="logindiv01">
        <table id="logintable01">
            <tr>
                <td>
                    <div>

                        <div><img style="width: 300px; margin-bottom: 40px;"
                                src="http://jjcom0214.cafe24.com/web/OneTrillion/logo02.png" alt="logo01"></div>
				
                
                        <div class="input-group">
                            <span class="input-group-text" id="basic-addon1">Email</span>
                            <input type="text" class="form-control" id="emailValue" placeholder="예약했던 email을 입력하세요" aria-label="Username" aria-describedby="basic-addon1">
                          </div>
                          <div class="input-group">
                            <span class="input-group-text" id="basic-addon1">PW</span>
                            <input type="text" class="form-control" id="pwdValue" placeholder="비밀번호를 입력하세요" aria-label="Username" aria-describedby="basic-addon1">
                          </div>
                                                    	
                        <button type="button" class="btn btn-dark" onClick = "checkEmailPwd()">예약조회</button><br>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    <script type="text/javascript">
    	
    	function checkEmailPwd(){
    		//console.log($('#pwdValue').val())
    		//console.log($('#emailValue').val())
    		var checkData = {
    			res_email : $('#emailValue').val(),
    			res_pwd : $('#pwdValue').val()
    		}
    		
    		$.ajax({
    			type : 'POST',
    			data : checkData,
    			url : "http://localhost:8088/trip/noUserRes/resDetail.do",
    			success : function(data){
    				if (data === "안녕"){
    					alert('이메일 또는 비밀번호가 다릅니다!');
    					location.reload();
    				}else {
    					console.log('데이터 처리 완료')
    					location.href = "http://localhost:8088/trip/noUserRes/selectId.do?res_email="+$('#emailValue').val();
    				}
    			},
    			error : function(request, status){
    				alert('실패');
    				console.log(status);
    			}
    		});
    		
    	}
    
    
    </script>

</body>

</html>