<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta hloginp-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>로그인 페이지</title>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
                crossorigin="anonymous">
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
                width: 197px;
                height: 45px;
                margin-bottom: 5px;
            }

            .btn-warning {
                width: 197px;
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
            <% String u_id=(String) session.getAttribute("u_id"); if( u_id !=null){%>
                <%}%>
                    <div id="logindiv01">
                        <table id="logintable01">
                            <tr>
                                <td>
                                    <div>
                                        <form name="f1" action="login.do" method="post">
                                            <div><img style="width: 300px; margin-bottom: 40px;"
                                                    src="http://jjcom0214.cafe24.com/web/OneTrillion/logo02.png"
                                                    alt="logo01">
                                            </div>

                                            <div class="input-group">
                                                <span class="input-group-text" id="basic-addon1">ID</span>
                                                <input type="text" id="u_id" name="u_id" class="form-control"
                                                    aria-label="Username" aria-describedby="basic-addon1">
                                            </div>
                                            <div class="u_id regex"></div>

                                            <div class="input-group">
                                                <span class="input-group-text" id="basic-addon1">PW</span>
                                                <input type="password" id="u_pwd" name="u_pwd" class="form-control"
                                                    aria-label="Username" aria-describedby="basic-addon1">
                                            </div>
                                            <div class="u_pwd regex"></div>

                                            <div>
                                                <input type="submit" class="btn btn-dark" value="Login">
                                                <button type="button" class="btn btn-warning">비회원 예약하기</button>
                                            </div>

                                            <div style="margin-bottom: 40px; color: gray;"> <a class="loginA01"
                                                    href="findId.do">아이디</a>
                                                | <a class="loginA01" href="findPw.do">비밀번호</a> 찾기</div>
                                            <div style="margin-bottom: 10px; font-size: 80%; color: gray;">간편하게 로그인
                                            </div>
                                            <button type="button" class="btn btn-success">Naver</button><button
                                                type="button" class="btn btn-primary">Google</button>
                                            <div
                                                style="margin-bottom: 10px; margin-top: 40px; font-size: 80%;  color: gray;">
                                                회원이 아니세요? </div>
                                            <button type="button" class="btn btn-secondary"
                                                onclick="location.href='joinagree.do'">Join</button>
                                        </form>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <script type="text/javascript">

                        $("#u_id").keyup(function () {
                            var regex = /^[A-Za-z\d]{8,15}$/;
                            var result_blank = regex.exec($("#u_id").val())
                            var result = regex.exec($("#u_id").val())
                            if (result == null && $("#u_id").val() != "") {
                                $(".u_id").html("영어 대소문자와 숫자를 혼합하여 8-15자리로 입력하세요.");
                                $(".u_id").css("color", "gray")
                                $(".u_id").css("font-size", "80%")
                                $(".u_id").css("margin-bottom", "10px")
                            } else {
                                $(".u_id").html("");
                                $(".u_id").css("margin-bottom", "0");

                            }
                        });


                        $("#u_pwd").keyup(function () {
                            var regex = /^[A-Za-z\d]{8,15}$/;
                            var result_blank = regex.exec($("#u_pwd").val())
                            var result = regex.exec($("#u_pwd").val())
                            if (result == null && $("#u_pwd").val() != "") {
                                $(".u_pwd").html("영어 대소문자와 숫자를 혼합하여 8-15자리로 입력하세요.");
                                $(".u_pwd").css("color", "gray")
                                $(".u_pwd").css("font-size", "80%")
                                $(".u_pwd").css("margin-bottom", "10px")
                            } else {
                                $(".u_pwd").html("");
                                $(".u_pwd").css("margin-bottom", "0");
                            }
                        });

                    </script>

        </body>

        </html>