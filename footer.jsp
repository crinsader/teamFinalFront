<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    </head>
    <style>
        #footerDiv01>p {
            margin: 5px;
            color: gray;
            font-size: 90%;
        }
    </style>

    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light" style="clear:both;">
            <div class="container-fluid" style="width: 1300px;">
                <a class="navbar-brand" href="<%=request.getContextPath()%>/board/introduce.do">Company</a>
                <div class=" navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="#" data-bs-toggle="modal"
                                data-bs-target="#exampleModal01" style="font-size: 90%">개인정보처리방침</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" data-bs-toggle="modal"
                                data-bs-target="#exampleModal02" style="font-size: 90%">이용약관</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" data-bs-toggle="modal"
                                data-bs-target="#exampleModal03" style="font-size: 90%">여행약관</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="bg-light" style="width: 100%; height: 250px;">
            <div style=" margin:auto; max-width: 1300px; width:100%; height: 100%;">
                <table style="width: 100%; height: 100%;">
                    <tr>
                        <td style="width: 70%; padding-left:11px;">
                            <div id="footerDiv01">
                                <strong>
                                    <a href='<%=request.getContextPath() %>/adminLogin/login.do' style="text-decoration:none">OneTrillion</a>
                                </strong>
                                <p>김범준, 김학태, 한보영, 이희연, 김태현, 용상현, 오현성, 장진광 </p>
                                <p>사업자등록번호 000-00-000000 | 관광사업자등록증번호 제2021-0001000호</p>
                                <p>통신판매업신고번호 제2021-금천구-000사업자 정보확인</p>
                                <p>대표전화 7777-7777 | 이메일 OneTrillion@trillion.com</p>
                                <p>항공권 또는 항공권이 포함된 상품의 경우, 표시되는 상품요금은 세금 및 예상 유류할증료가 포함된 가격이며</p>
                                <p>유류할증료는 유가 및 환율 등에 따라 변동될 수 있습니다.</p>
                                <p>©tour. All Rights Reserved. </p>
                            </div>
                        </td>
                        <td style="text-align: center;">
	                        <div style="height:100%">
                            	<img src="http://jjcom0214.cafe24.com/web/OneTrillion/logo-last1.png" alt="logo" height="200px">                        
	                        </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>

        <!-- Modal 개인정보------------------------------------------------------------------------------------------------------------------------->
        <div class="modal fade" id="exampleModal01" >
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" >개인정보처리방침</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div>
                        <iframe src="<%=request.getContextPath()%>/board/perinfo.do" frameborder="0"
                            style="width: 100%; height:75vh;"></iframe>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal 개인정보 끝 ----------------------------------------------------------------------------------------------------------------->
        <!-- Modal 이용약관------------------------------------------------------------------------------------------------------------------------->
        <div class="modal fade" id="exampleModal02">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">이용약관</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div>
                        <iframe src="<%=request.getContextPath()%>/board/agreeFoot.do" frameborder="0"
                            style="width: 100%; height:75vh"></iframe>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal 이용약관 끝 ----------------------------------------------------------------------------------------------------------------->
        <!-- Modal 여행약관------------------------------------------------------------------------------------------------------------------------->
        <div class="modal fade" id="exampleModal03"">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">여행약관</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div>
                        <iframe src="<%=request.getContextPath()%>/board/tripAgreeFoot.do" frameborder="0"
                            style="width: 100%; height:75vh;"></iframe>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal 여행약관 끝 ----------------------------------------------------------------------------------------------------------------->
    </body>

    </html>