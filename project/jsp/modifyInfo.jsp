<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>회원정보 변경</title>
            <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
            <style>
                #myPageinfoTab1 th {
                    width: 40%;
                    height: 70px;
                    background-color: #ededed;
                    text-align: center;
                    border-bottom: 1px solid white;
                }

                #myPageinfoTab1 td {
                    width: 60%;
                    border-bottom: 1px solid #ededed;
                    text-align: center;
                    font-size: 120%;
                }

                #myPageinfoTab2 input {
                    margin-bottom: 10px;
                    border: 0;
                    width: 50%;
                    height: 60px;
                    background-color: #ededed;
                    color: black;
                    font-size: 110%;
                    border-radius: 10px;
                    box-shadow: 0 0 10px #ededed;
                }

                #myPageinfoTab2 input:hover {
                    background-color: white;
                    cursor: pointer;
                }

                .form-control {
                    height: 60px;
                    border: 0;
                    font-size: 100%;
                }

                .myPageinfoTab1input1 {
                    margin-right: 5px;
                    margin-top: 40px;
                    border: 0;
                    width: 30%;
                    height: 60px;
                    background-color: #ededed;
                    color: black;
                    border-radius: 10px;
                    box-shadow: 0 0 10px #ededed;
                }

                .myPageinfoTab1input1:hover {
                    background-color: white;
                    cursor: pointer;
                }
            </style>
        </head>

        <body>
            <script type="text/javascript">

            </script>
            <c:if test="${sessionScope.u_id != null }">
                <jsp:include page="../include/header2.jsp"></jsp:include>
            </c:if>
            <% // 로그인 처리 -> 로그인 x (로그인페이지 이동)
                String u_id = (String) session.getAttribute("u_id");
                if( u_id != null){
                }else{%>
                <script> alert('로그인이 필요합니다.'); window.location.href = "http://localhost:8088/trip/user/login.do";</script>
                <%}%>

                    <div style="margin:auto; width:1100px; height:1000px;">
                        <div class="list-group" style="float:left;width:180px; height:600px; margin-top: 40px;">
                            <a href="#" class="list-group-item list-group-item-action"
                                style="background-color: #343a40; color: white;">마이페이지</a>
                            <a href="#" class="list-group-item list-group-item-action">개인정보</a>
                            <a href="#" class="list-group-item list-group-item-action">1대1문의</a>
                            <a href="#" class="list-group-item list-group-item-action">찜 내역</a>
                            <a href="#" class="list-group-item list-group-item-action">예약내역</a>
                            <a href="#" class="list-group-item list-group-item-action">Contact Us</a>
                        </div>
                        <div style="float:right;width:915px;">
                            <div class="myPageMenu2" id="myPageinfo1">
                                <nav class="navbar-dark bg-dark"
                                    style="margin-top:40px; height: 50px; line-height: 40px;">
                                    <a class="navbar-brand" style="font-size: 100%; margin-left: 20px;"
                                        href="#">개인정보</a><span class="navbar-brand" style="font-size: 100%;">/</span><a
                                        class="navbar-brand" style="font-size: 100%;" href="#">회원정보변경</a>
                                </nav>
                                <table id="myPageinfoTab2" style="width:900px;">
                                    <tr>
                                        <td style="height: 400px; width: 40%; text-align: center;">
                                            <div
                                                style="margin: auto; background-color: #ededed; width:100px;height:100px; border-radius: 50px; text-align: center; line-height: 100px; box-shadow: 0 0 10px #ededed; font-size: 120%;">
                                                닉네임</div>
                                            <div>고객님 안녕하세요!</div>
                                        </td>
                                        <td>
                                            <div style="margin: auto; width: 100%;  text-align: center;">
                                                <input type="button" value="회원정보 변경">
                                                <input type="button" value="회원탈퇴"
                                                    onclick="location.href='<%=request.getContextPath() %>/user/delete.do' ">
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                                <table id="myPageinfoTab1" style="width:900px">
                                    <tr>
                                        <th style="border-top:2px solid #343a40">아이디</th>
                                        <td style="border-top:2px solid #343a40">${member.u_id }</td>
                                    </tr>
                                    <tr>
                                        <th>닉네임</th>
                                        <td><input type="text" class="form-control" value="${member.u_nickname }" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>이메일</th>
                                        <td><input type="email" class="form-control" id="exampleFormControlInput1"
                                                value="${member.u_email }"></td>
                                    </tr>
                                    <tr>
                                        <th>비밀번호</th>
                                        <td><input type="password" class="form-control" id="exampleInputPassword1"
                                                value="${member.u_password }" /></td>
                                    </tr>
                                    <tr>
                                        <th>비밀번호 확인</th>
                                        <td><input type="password" class="form-control" id="exampleInputPassword1"
                                                placeholder="비밀번호 변경시 작성하세요"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="border-bottom: 0;">
                                            <input class="myPageinfoTab1input1" type="submit" value="저장" />
                                            <input class="myPageinfoTab1input1" type="button" value="취소">
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <script>
                        $(document).ready(function () {
                            function mypageModifyDelete() {

                                if (confirm("탈퇴하시겠습니까?")) {
                                    location.href = "./delete.do";
                                }
                            }
                        })
                    </script>

                    <jsp:include page="../include/footer.jsp"></jsp:include>
        </body>

        </html>