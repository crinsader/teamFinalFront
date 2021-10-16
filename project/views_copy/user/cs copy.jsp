<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> -->
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>공지사항 페이지</title>
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

        #introinfoTab1 th {
            width: 40%;
            height: 70px;
            background-color: #ededed;
        }

        #introinfoTab1 td {
            width: 60%;
            border-bottom: 1px solid #ededed;
            font-size: 120%;
        }

        #introinfoTab2 input {
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

        #introinfoTab2 input:hover {
            background-color: white;
            cursor: pointer;
        }

        .introMenu2 table th:nth-child(1) {
            width: 10%;
            border-top: 2px solid black;
            text-align: center;
            background-color: #ededed;
        }

        .introMenu2 table th:nth-child(2) {
            border-top: 2px solid black;
            background-color: #ededed;
            text-align: center;
        }

        .introMenu2 table tr {
            width: 100%;
            text-align: center;
            height: 45px;
        }


        .introInfotd3,
        .introInfotd2 {
            border-bottom: 1px solid #ededed;
            text-align: center;
        }

        .introInfotd1 ul li {
            list-style: none;
            text-indent: -15px;
            margin-bottom: 10px;
        }

        .introInfotd1 ol li {
            list-style: none;
            text-indent: 15px;
            margin-bottom: 10px;
        }


        .introInfotd1 {
            text-align: left;
            border-bottom: 1px solid #ededed;
        }

        .tr01:hover {
            background-color: #f8f8fa;
            cursor: pointer;
        }

        .tr02 {
            display: none;
        }
    </style>
</head>

<body>
    <jsp:include page="../include/header2.jsp"></jsp:include>
    <div style="margin:auto; width:1100px; min-height: 800px;">
        <div class="list-group" id="leftSlide01"
            style="float:left;width:180px; height:600px; margin-top: 15px; position: relative;">
            <a href="#" class="list-group-item list-group-item-action"
                style="background-color: #ededed; color: #343a40; font-weight: bold;">고객센터</a>
            <a href="#" class="list-group-item list-group-item-action">공지사항</a>
            <a href="#" class="list-group-item list-group-item-action">자주하는질문</a>
            <a href="#" class="list-group-item list-group-item-action">1대1문의</a>
            <a href="#" class="list-group-item list-group-item-action">Contact Us</a>
        </div>
        <div style="float:right; width:915px; height: auto;">
            <!-- ============================================================================@@ 공지사항 10/11 한보영 -->
            <div>
                <nav style="margin-top:15px; height: 45px; line-height: 45px; background-color: #ededed; ">
                    <a class="navbar-brand"
                        style="font-size: 100%; margin-left: 20px; color: #343a40; font-weight: bold;" href="#">공지사항</a>
                </nav>
            </div>
            <div class="introMenu2" id="introinfo1" style="margin-top: 40px;">
                <table style="width: 100%;">
                    <tr>
                        <th>No</th>
                        <th>제목</th>
                    </tr>
                    <!-- foreach 시작--------------------------------------------------------------- -->
                    <c:forEach var="notice" items="${noticeList }">
                        <tr class="tr01">
                            <td class="introInfotd3">${notice.no_seq }</td>
                            <td class="introInfotd2"> ${notice.no_title }</td>
                        </tr>
                        <tr class="tr02">
                            <td class="introInfotd1" colspan="2">
                                <ul>
                                    <li>
                                        ${notice.no_content }
                                    </li>
                                </ul>
                            </td>
                        </tr>
                    </c:forEach>
                    <!-- foreach 시작--------------------------------------------------------------- -->
                    <tr style="height: 10px;">
                        <td colspan="2" style="background-color: #ededed;">
                        </td>
                    </tr>
                </table>
                <div style="width: 100%; margin-top: 10px;">
                    <!--페이징 tag 시작----------------------------------------------------------------------------------------------------------------------------------------->
                    <div style="float: left; margin-left: 10px;">
                        <ul class="pagination">
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Previous"
                                    style="color: gray; border:1px solid #ededed">
                                    <span aria-hidden="true">&laquo;</span>
                                    <!-- <span class="sr-only">Previous</span> -->
                                </a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#"
                                    style="color: gray;border:1px solid #ededed">1</a></li>
                            <li class="page-item"><a class="page-link" href="#"
                                    style="color: gray;border:1px solid #ededed">2</a></li>
                            <li class="page-item"><a class="page-link" href="#"
                                    style="color: gray;border:1px solid #ededed">3</a></li>
                            <li class="page-item"><a class="page-link" href="#"
                                    style="color: gray;border:1px solid #ededed">4</a></li>
                            <li class="page-item"><a class="page-link" href="#"
                                    style="color: gray;border:1px solid #ededed">5</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Next"
                                    style="color: gray;border:1px solid #ededed">
                                    <span aria-hidden="true">&raquo;</span>
                                    <!-- <span class="sr-only">Next</span> -->
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!--페이징 tag 끝----------------------------------------------------------------------------------------------------------------------------------------->
                    <!-- @@ 검색 ------------------------------------>
                    <div style="float: right; margin-right: 10px;">
                        <div class="input-group mb-3" style="width: 300px; float: left;">
                            <input type="text" class="form-control keyword" placeholder="검색할 단어를 입력하세요"
                                aria-label="Recipient's username" aria-describedby="button-addon2"
                                style="border:1px solid #ededed;">
                            <select class="search"
                                style="width:80px;border:1px solid #ededed; color: gray; padding-left: 10px;">
                                <option value="title">제목</option>
                                <option value="content" selected>내용</option>
                            </select>
                        </div>
                    </div>
                    <!----------@@ 검색 끝------------------------------->
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            //content hidden기능 --------------------------------------------------------------------
            $(".tr01").on("click", function () {
                if ($(this).next().css("display") == "none") {
                    $(this).next().css("display", "table-row")
                    $(this).css("border-left", "5px solid black")
                    $(this).next().css("border-left", "5px solid black")
                } else {
                    $(this).next().css("display", "none")
                    $(this).css("border-left", "")
                    $(this).next().css("border-left", "")
                }
            })
            //content hidden기능 끝 --------------------------------------------------------------------

            //검색 ---------------------------------------------------
            $(".keyword").keyup(function () {
                $(".tr01").css("border-left", "")
                $(".tr02").css("border-left", "")
                $(".tr02").css("display", "none")
                if ($(".search").val() == "content") {
                    $(".tr02").hide();
                    $(".tr02>td:contains(" + $(this).val() + ")").parent().show();
                    if ($(this).val() == "") {
                        $(".tr02").hide();
                    }
                } else if ($(".search").val() == "title") {
                    $(".tr01").hide();
                    $(".tr01>td:contains(" + $(this).val() + ")").parent().show();
                }

            });
            // 검색 끝---------------------------------------------------

            // 왼쪽 메뉴 슬라이드  스크롤 끝----------------------------------------------------------------------
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
            // 왼쪽 메뉴 슬라이드 스크롤 끝----------------------------------------------------------------------

        })





    </script>


</body>
<jsp:include page="../include/footer.jsp"></jsp:include>

</html>