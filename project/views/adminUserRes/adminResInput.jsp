<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 예약 입력 페이지</title>
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

        .adminMainDiv1 p {
            margin-bottom: 0;
            line-height: 45px;
            text-align: center;
            font-weight: bold;
            border-radius: 20px 20px 0 0;
        }

        #adminMemtable1 th {
            width: 25%;
            height: 40px;
            background-color: #ededed;
            border-bottom: 1px solid white;
            text-align: center;
        }

        #adminMemtable1 td {
            border-bottom: 1px solid #ededed;
        }

        .form-control {
            border: 0;
        }
    </style>
</head>

<body>
    <div style="width: 1800px; height: 100vh;">
        <div style="float: left; width: 250px; height: 100%; box-shadow: 0 0 20px #ededed; position: fixed;">
            <div style="margin:auto; width: 80%;"><img style="width: 100%; margin-top: 40px; margin-bottom: 40px;"
                    src="http://jjcom0214.cafe24.com/web/OneTrillion/logo02.png" alt="logo01"></div>
            <div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item" onclick="">메인</li>
                    <li class="list-group-item" onclick="">회원예약</li>
                    <li class="list-group-item" onclick="">비회원예약</li>
                    <li class="list-group-item" onclick="">문의</li>
                    <li class="list-group-item" onclick="">리뷰</li>
                    <li class="list-group-item" onclick="">회원</li>
                    <li class="list-group-item" onclick="">상품</li>
                    <li class="list-group-item" onclick="">관리자</li>
                    <li class="list-group-item" onclick="">찜</li>
                    <li class="list-group-item" onclick="">공지사항</li>
                    <li class="list-group-item" onclick="">자주질문</li>
                    <li class="list-group-item" onclick="">로그기록</li>
                    <li class="list-group-item" onclick="">메모장</li>

                </ul>
            </div>
        </div>
        		 	
        <div style="float:right; width: 1500px;height: auto;">
            
            <div
                style="margin-top: 40px; margin-bottom: 40px; width: 1000px; height: auto; border-radius: 20px; box-shadow: 0 0 20px #ededed;">
                
                <div class="adminMainDiv1">
                    <p>회원 예약 입력</p>
                </div>
				<form action="insert.do" method="post" id="form">  
				
                    
                <table id="adminMemtable1" style="width: 100%; border-top: 2px solid #343a40;">
                    <tr>
                        <th>PD_SEQ</th>
                        <td><input type="text" class="form-control" name="pd_seq" value = 3></td>
                    </tr>
                    <tr>
                        <th>PD_NAME</th>
                        <td><input type="text" class="form-control" name="pd_name" value = "ddd" ></td>
                    </tr>
                    <tr>
                        <th>PD_STARTDATE</th>
                        <td><input type="text" class="form-control" name="pd_startDate" value = "2021-01-01" ></td>
                    </tr>
                    <tr>
                        <th>PD_ENDDATE</th>
                        <td><input type="text" class="form-control" name="pd_endDate" value = "2021-01-05"></td>
                    </tr>
                    <tr>
                        <th>ADULT_NUM</th>
                        <td><input type="text" class="form-control" name="adult_num" value = 0></td>
                    </tr>
                    <tr>
                        <th>TEENAGER_NUM</th>
                        <td><input type="text" class="form-control" name="teenager_num" value = 0></td>
                    </tr>
                    <tr>
                        <th>PET_NUM</th>
                        <td><input type="text" class="form-control" name="pet_num" value = 0></td>
                    </tr>
                    <tr>
                        <th>ADULT_PRICE</th>
                        <td><input type="text" class="form-control" name="adult_price" value = 0></td>
                    </tr>
                    <tr>
                        <th>TEENAGER_PRICE</th>
                        <td><input type="text" class="form-control" name="teenager_price" value = 0></td>
                    </tr>
                    <tr>
                        <th>PET_PRICE</th>
                        <td><input type="text" class="form-control" name="pet_price" value = 0></td>
                    </tr>
                    <tr>
                        <th>RES_PRICE</th>
                        <td><input type="text" class="form-control" name="res_price" value = 0></td>
                    </tr>
                    <tr>
                        <th>RES_PEOPLE</th>
                        <td><input type="text" class="form-control" name="res_people" value = 0></td>
                    </tr>
                    <tr>
                        <th>RES_NAME</th>
                        <td><input type="text" class="form-control" name="res_name" value = "예약자명"></td>
                    </tr>
                    <tr>
                        <th>RES_BIRTH</th>
                        <td><input type="text" class="form-control" name="res_birth" value = "19951212"></td>
                    </tr>
                    <tr>
                        <th>RES_EMAIL</th>
                        <td><input type="text" class="form-control" name="res_email" value = "DDD@naver.com"></td>
                    </tr>
                    <tr>
                        <th>RES_COMMENT</th>
                        <td><textarea class="form-control" id="exampleFormControlTextarea1" rows="2"
                                name="res_comment" style="border:0; resize: none;">dddddd</textarea></td>
                    </tr>
                    <tr>
                        <th>U_ID</th>
                        <td><input type="text" class="form-control" name="u_id" value = "dhgustjd10"></td>
                    </tr>
                    <tr>
                        <th>RES_PHONE</th>
                        <td><input type="text" class="form-control" name="res_phone" value = "010-1234-5644"></td>
                    </tr>
                </table>
                <div style="text-align: right;">
                    <a class="btn btn-secondary" onclick="location.href='http://localhost:8088/trip/adminUserRes/list.do'" role="button" style="margin-top:10px; margin-bottom: 10px;">취소</a>
                <input class="btn btn-secondary" style="margin-right: 10px;" type="submit" value="등록">
                </form>
                    <!-- <input class="btn btn-secondary" type="button" value="저장" style="margin-right: 10px;"> -->
                </div>

            </div>
        </div>
    </div>
</body>

</html>