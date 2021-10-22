<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> -->
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>개인정보 페이지</title>
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
        .introMenu {
            height: 50px;
            width: 150px;
            border-bottom: 1px solid #ededed;
            line-height: 50px;
            text-align: center;
            margin-left: 10px;
        }

        .introMenu:hover {
            background-color: #ededed;
            cursor: pointer;
        }

        #myPageinfoTab2 input {
            width: 200px;
            height: 45px;
            margin-bottom: 10px;
        }

        #myPageinfoTab1 th {
            text-align: center;
            width: 30%;
            height: 45px;
            background-color: #ededed;
            border-bottom: 1px solid white;

        }

        #myPageinfoTab1 td {
            text-align: center;
            border-bottom: 1px solid #ededed;
        }
    </style>
</head>

<body>
    <jsp:include page="../include/header2.jsp"></jsp:include>
    <div style="margin:auto; width:1100px; min-height: 800px;">
        <div class="list-group" id="leftSlide01"
            style="float:left;width:180px; height:600px; margin-top: 15px; position: relative;">
            <a href="#" class="list-group-item list-group-item-action"
                style="background-color: #ededed; color: #343a40; font-weight: bold;">마이페이지</a>
            <a href="#" class="list-group-item list-group-item-action">개인정보</a>
            <a href="#" class="list-group-item list-group-item-action">1대1문의</a>
            <a href="#" class="list-group-item list-group-item-action">찜 내역</a>
            <a href="#" class="list-group-item list-group-item-action">예약내역</a>
        </div>
        <div style="float:right; width:915px; height: auto;">
            <div>
                <nav style="margin-top:15px; height: 45px; line-height: 45px; background-color: #ededed; ">
                    <a class="navbar-brand"
                        style="font-size: 100%; margin-left: 20px; color: #343a40; font-weight: bold;" href="#">개인정보</a>
                </nav>
            </div>
            <div class="introMenu2" id="introinfo1" style="margin-top: 40px;">
                <!-- 컨텐츠 ---------------------------------------------------------------------------------------------------------------------------------->

                <table id="myPageinfoTab2" style="width:900px;">
                    <tr>
                        <td style="height: 400px; width: 40%; text-align: center;">
                            <div
                                style="color:white; margin: auto; background-color: #6c757d; width:100px;height:100px; border-radius: 50px; text-align: center; line-height: 100px; box-shadow: 0 0 10px gray; font-size: 120%;">
                                닉네임</div>
                            <div>고객님 안녕하세요!</div>
                        </td>
                        <td>
                            <div style="margin: auto; width: 100%;  text-align: center;">
                                <input type="button" class="btn btn-secondary" value="회원정보 변경"
                                onclick="location.href='<%=request.getContextPath() %>/user/modifyInfoPass.do'"><br>
                                <input type="button" class="btn btn-secondary" value="회원탈퇴"
                                    onclick="location.href='<%=request.getContextPath() %>/user/deleteInfo.do' ">
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
                        <td>${member.u_nickName }</td>
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td>${member.u_email }</td>
                    </tr>
                </table>
                <!-- 컨텐츠 ---------------------------------------------------------------------------------------------------------------------------------->
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {

            // 왼쪽 메뉴 스크롤----------------------------------------------------------------------
            $(window).scroll(function () {
                var newpt = $(window).scrollTop() - 60 + "px";
                if (($("#leftSlide01").offset().top) <= ($(window).scrollTop())) {
                    $("#leftSlide01").css("top", newpt);
                } else if (($("#leftSlide01").offset().top > $(window).scrollTop())) {
                    $("#leftSlide01").css("top", newpt);
                    if ($(window).scrollTop() <= 60) {
                        $("#leftSlide01").css("top", "0px");
                    }
                }
            })
            // 왼쪽 메뉴 스크롤 끝----------------------------------------------------------------------

            // 탈퇴 버튼 함수 -------------------------------------------------------------------------

            function mypageModifyDelete() {
                if (confirm("탈퇴하시겠습니까?")) {
                    location.href = "./delete.do";
                }
            }
            // 탈퇴 버튼 함수 -------------------------------------------------------------------------

        })

    </script>
</body>
<jsp:include page="../include/footer.jsp"></jsp:include>

</html>