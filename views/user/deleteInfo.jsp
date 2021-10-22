<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta hloginp-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>아이디 삭제시 암호 입력 페이지</title>
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

    .input-group-sm {
        width: 400px;
        height: 45px;
        margin-bottom: 5px;
    }

    .btn-dark {
        width: 400px;
        height: 45px;
        margin-bottom: 5px;
    }

    .btn-primary {
        height: 45px;
        width: 197px;
        margin-bottom: 5px;
    }

    .btn-success {
        height: 45px;
        width: 197px;
        margin-bottom: 5px;
        margin-right: 5px;
    }

    .btn-secondary {
        width: 400px;
        height: 45px;
        margin-bottom: 5px;
    }

    .loginA01 {
        color: gray;
        text-decoration: none;
    }

    .loginA01:hover {
        color: black;
    }

    .input-group {
        height: 45px;
        margin-bottom: 5px;
    }

    .input-group-text {
        width: 50px;
    }
</style>

<body>
    <!-- <%
            // 로그인 처리 -> 로그인 x (로그인페이지 이동)
            String u_id = (String) session.getAttribute("u_id");
            if( u_id != null){
            }else{%>
                <script> alert('로그인이 필요합니다.'); window.location.href="http://localhost:8088/trip/user/login.do"; </script>
        <%}%> -->
    <div id="logindiv01">
        <table id="logintable01">
            <tr>
                <td>
                    <div>
                        <div><img style="width: 300px; margin-bottom: 40px; cursor: pointer;"
                                src="http://jjcom0214.cafe24.com/web/OneTrillion/logo02.png" alt="logo01" onclick="GoHome()">
                        </div>
                        <input id="u_pwd_ori" value="${member.u_pwd }" type="hidden">
                        <div class="input-group">
                            <span class="input-group-text" id="basic-addon1">ID</span>
                            <input type="text" id="u_id" name="u_id" class="form-control" aria-label="Username"
                                aria-describedby="basic-addon1" value="${member.u_id }" readonly>
                        </div>
                        <form name="f1" action="deleteInfo.do" method="post" id="form">
                            <div class="input-group">
                                <span class="input-group-text" id="basic-addon1">PW</span>
                                <input type="password" id="u_pwd" name="u_pwd" class="form-control"
                                    aria-label="Username" aria-describedby="basic-addon1">
                            </div>
                            <div>
                                <input type="button" id="submitbtn" class="btn btn-dark" value="회원탈퇴">
                            </div>
                            <div style="margin-bottom: 40px; color: gray;"> 삭제를 위해서 비밀번호를 다시 입력해주세요.</div>

                        </form>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    <script type="text/javascript">

        var u_pwd_ori = $("#u_pwd_ori").val(); //원래 비밀면호
        console.log("u_pwd_ori > " + u_pwd_ori);

        var u_pwd = document.getElementById('u_pwd').value; //적은 비밀번호
        console.log("u_pwd > " + u_pwd);

        window.onload = function () {
            document.getElementById('submitbtn').onclick = function () {
                var u_pwd = document.getElementById('u_pwd').value; //적은 비밀번호
                console.log("u_pwd > " + u_pwd);

                if (u_pwd != u_pwd_ori) {
                    console.log("u_pwd > " + u_pwd);
                    alert("비밀번호가 다릅니다!");
                } else {
                    var delete_user = confirm('정말로 탈퇴 하실 건가요?');

                    if (!delete_user) {
                        return false;
                    } else {

                        alert("탈퇴 되었습니다. 안녕히가세요ㅜㅜ");
                        document.getElementById('form').submit();
                    }

                }

            };
        };
        
        function GoHome() {
			location.href='http://localhost:8088/trip/';
		}
    </script>

</body>

</html>