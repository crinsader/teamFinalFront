<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 메인 페이지</title>
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
        * {
            margin: 0;
            padding: 0;
        }

        .list-group-item:hover {
            cursor: pointer;
            background-color: #f8f9fa;
        }
    </style>
</head>

<body>
    <div
        style="float: left; width: 250px; height: 100%; box-shadow: 0 0 20px #ededed; position: fixed; background-color: white;">
        <div style="margin:auto; width: 80%;"><img style="width: 100%; margin-top: 40px; margin-bottom: 40px;"
                src="http://jjcom0214.cafe24.com/web/OneTrillion/logo02.png" alt="logo01"></div>
        <div>
            <ul class="list-group list-group-flush">
                <li class="list-group-item" onclick="">메인</li>
                <li class="list-group-item" onclick="">회원예약</li>
                <li class="list-group-item" onclick="">비회원예약</li>
                <li class="list-group-item" onclick="">회원정보</li>
                <li class="list-group-item" onclick="">여행리뷰</li>
                <li class="list-group-item" onclick="">1대1문의</li>
                <li class="list-group-item" onclick="">회원찜내역</li>
                <li class="list-group-item" onclick="">상품정보</li>
                <li class="list-group-item" onclick="">관리자정보</li>
                <li class="list-group-item" onclick="">공지사항</li>
                <li class="list-group-item" onclick="">자주하는질문</li>
                <li class="list-group-item" onclick="">로그기록</li>
                <li class="list-group-item" onclick="">메모장</li>

            </ul>
        </div>
    </div>
</body>

</html>