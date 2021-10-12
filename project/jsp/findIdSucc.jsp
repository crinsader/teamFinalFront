<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta hloginp-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>아이디 찾기 완료</title>
            <!-- 합쳐지고 최소화된 최신 CSS -->
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
        </head>
        <style>
            * {
                margin: 0;
                padding: 0;
                text-decoration: none;
            }

            #findIDdiv01 {
                width: 100%;
                height: 90vh;
            }

            #logintable01 {
                margin: auto;
                width: 800px;
                height: 100%;

            }

            #findIDdiv02 {
                width: 800px;
                height: 200px;
                border: gray solid 1px;
                text-align: center;
                margin-top: 40px;
            }
        </style>

        <body>
            <div id="findIDdiv01">
                <table id="logintable01">
                    <tr>
                        <td>

                            <h1>아이디/비밀번호 찾기</h1>
                            <hr style="height:3px; background-color: black;">
                            <p style="margin-top: 2px;">회원가입시 입력하신 개인정보로 아이디 비밀번호를 찾으실수있습니다</p>
                            <table id="findIDdiv02">
                                <tr>
                                    <td>
                                        <p><strong>회원가입시 입력한 이메일로 아이디를 보냈습니다</strong></p>
                                        <p style="color: red;">${받은 이메일값}</p>
                                    </td>
                                </tr>
                            </table>
                            <a class="btn btn-primary" href="login.html" role="button"
                                style="margin-top: 5px;margin-left: 366px; background-color: gray;">로그인</a>
            </div>
            </td>
            </tr>
            </table>
            </div>

        </body>

        </html>