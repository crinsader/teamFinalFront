<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta hloginp-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>회원가입완료</title>
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
                integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
                crossorigin="anonymous">
            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
                crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
                integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
                crossorigin="anonymous"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
                integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
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
                width: 800px;
                height: 100%;
                text-align: center;
            }

            .btn-primary {
                height: 80px;
                width: 250px;
                margin-bottom: 5px;
                background: linear-gradient(125deg, #81ecec, #6c5ce7, #81ecec);
            }

            .btn-success {
                height: 80px;
                width: 250px;
                margin-bottom: 5px;
                margin-right: 10px;
                background: linear-gradient(125deg, #a8ec81, #2ec75c, #a8ec81);
            }
        </style>

        <body>
            <div id="logindiv01">
                <table id="logintable01">
                    <tr>
                        <td>
                            <div>

                                <div><img style="width: 400px; margin-bottom: 40px;"
                                        src="http://jjcom0214.cafe24.com/web/OneTrillion/logo02.png" alt="logo01"></div>
                                <!--<div><img style="width: 300px; margin-bottom: 40px;" src="http://jjcom0214.cafe24.com/web/OneTrillion/logo03.png" alt="logo01"></div>-->
                                <h2 style="margin-bottom: 20px;">회원가입이 <strong>완료</strong>되었습니다.</h2>
                                <p style="margin-bottom: 10px;"><strong>회원</strong>님의 회원가입을 축하합니다</p>
                                <p style="margin-bottom: 20px;">좋은 서비스로 보답하겠습니다</p>
                                <hr style="width: 600px;margin-left: 100px; ">
                                <button type="button" class="btn btn-success" onClick="location.href='/trip/'">홈으로</button><button type="button"
                                    class="btn btn-primary" onClick="location.href='login.do'">로그인</button>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </body>

        </html>