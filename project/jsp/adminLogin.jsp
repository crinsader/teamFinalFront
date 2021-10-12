<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta hloginp-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>관리자로그인 페이지</title>
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
                width: 400px;
                height: 100%;
                text-align: center;
            }

            .input-group-sm {
                width: 400px;
                height: 40px;
                margin-bottom: 5px;
            }

            .btn-dark {
                width: 400px;
                height: 40px;
                background: linear-gradient(125deg, #81ecec, #6c5ce7, #81ecec);

            }

            #loginInputLog,
            .loginInput02,
            #loginInputJoin {
                font-size: 120%;
                text-align: center;
            }

            #loginInputLog:hover,
            .loginInput02:hover,
            #loginInputJoin:hover {
                box-shadow: 0 0 5px gray;
            }

            .loginA01 {
                color: gray;
            }

            #inputGroup-sizing-sm {
                width: 40px;
            }

            .adlogin01 {
                margin-left: 10px;
                margin-bottom: 10px;
                font-weight: bold;
            }
        </style>

        <body>
            <div id="logindiv01">
                <table id="logintable01">
                    <tr>
                        <td>
                            <div>

                                <div><img style="width: 300px;"
                                        src="http://jjcom0214.cafe24.com/web/OneTrillion/logo02.png" alt="logo01">
                                    <p
                                        style="text-align: center;margin-top: 10px;margin-bottom: 10px; color: skyblue; font-size: 200%;">
                                        관리자 로그인</p>
                                </div>
                                <!--<div><img style="width: 300px; margin-bottom: 40px;" src="http://jjcom0214.cafe24.com/web/OneTrillion/logo03.png" alt="logo01"></div>-->

                                <div class="input-group input-group-sm">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-sm">ID</span>
                                    </div>
                                    <input type="text" class="form-control" aria-label="Small"
                                        aria-describedby="inputGroup-sizing-sm">
                                </div>
                                <div class="input-group input-group-sm" style="margin-bottom: 10px;">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-sm">PW</span>
                                    </div>
                                    <input type="text" class="form-control" aria-label="Small"
                                        aria-describedby="inputGroup-sizing-sm">
                                </div>
                                <button type="button" class="btn btn-dark">Login</button><br>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>

        </body>

        </html>