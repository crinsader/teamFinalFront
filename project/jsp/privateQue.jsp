<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>1대1문의 리스트</title>
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
                .priQueTr2 li {
                    list-style: none;
                    text-indent: 15px;
                    margin-bottom: 10px;
                    margin-top: 10px;
                }

                .priQueTr1:hover {
                    background-color: #f8f9fa;
                }

                .priQueTr2 {
                    display: none;
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

                    <div style="margin:auto; width:1100px; height:800px;">
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
                                        href="#">1대1문의</a>
                                </nav>
                                <table
                                    style="margin-top:40px; width: 100%; border-top: 2px solid #343a40;table-layout: fixed;">
                                    <tr style="text-align: center; height: 70px; background-color: #ededed;">
                                        <th style="width: 10%;">No</th>
                                        <th style="width: 50%;">제목</th>
                                        <th style="width: 20%">문의유형</th>
                                        <th style="width: 20%">등록일</th>
                                    </tr>
                                    <!------------여기에 forEach 시작 설정------------------------------------------------------------------------------------------------------------------>
                                    <tr class="priQueTr1"
                                        style="text-align: center; height: 70px; border-top:1px solid #ededed; cursor: pointer;">
                                        <td>${1}</td>
                                        <td>${제목}</td>
                                        <td>${문의유형}</td>
                                        <td>${등록날짜}</td>
                                    </tr>
                                    <tr class="priQueTr2"
                                        style="height: 70px; border-top: 1px solid #ededed; border-left: 5px solid #343a40;">
                                        <td colspan="3" style="height: auto; word-break: break-all;">
                                            <ul>
                                                <li>
                                                    ${문의내용}test(ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    asdffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffasdf
                                                    asdffffffffffffffffffffffffffff)
                                                </li>
                                            </ul>
                                        </td>
                                        <td style="text-align: center;">
                                            <a class="btn btn-secondary" href="#" role="button"
                                                style="height: 40px;">삭제</a>
                                            <a class="btn btn-secondary" href="#" role="button"
                                                style="height: 40px;">수정</a>
                                        </td>
                                    </tr>
                                    <tr class="priQueTr2" style="height: 70px; border-left: 5px solid #343a40;">
                                        <td style="text-align: right;">▶</td>
                                        <td colspan="2"
                                            style="border-top: 1px solid #ededed;height: auto; word-break: break-all;">
                                            <ul>
                                                <li>${답변내용}null 값일 경우 안보이게 설정 해야 합니닥
                                                </li>
                                            </ul>
                                        </td>
                                        <td style="border-top: 1px solid #ededed ; text-align: center;">${답변날짜}</td>
                                    </tr>
                                    <!------------여기에 forEach 끝 설정------------------------------------------------------------------------------------------------------------------>
                                    <tr style="height: 10px; background-color: #ededed;">
                                        <td colspan="4"></td>
                                    </tr>
                                </table>
                                <div style="text-align: right;">
                                    <input class="btn btn-secondary" type="button" value="문의등록"
                                        style="margin-top:10px; height: 40px;">
                                </div>
                            </div>
                        </div>
                    </div>
                    <script>
                        $(document).ready(function () {
                            $(".priQueTr1").on("click", function () {
                                if ($(this).next().css("display") == "none") {
                                    $(this).next().css("display", "none")
                                    $(this).next().next().css("display", "none")
                                    $(this).css("border-left", "5px solid #343a40")
                                    $(this).next().css("display", "table-row")
                                    $(this).next().next().css("display", "table-row")
                                } else {
                                    $(this).css("border-left", "")
                                    $(this).next().css("display", "none")
                                    $(this).next().next().css("display", "none")
                                }
                            })
                        })
                    </script>

                    <jsp:include page="../include/footer.jsp"></jsp:include>
        </body>

        </html>