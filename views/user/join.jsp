<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!-- 유효성 검사를 위한 taglib 3개 -->
        <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
                <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
                    <!DOCTYPE html>
                    <html lang="en">

                    <head>
                        <meta charset="UTF-8">
                        <meta hloginp-equiv="X-UA-Compatible" content="IE=edge">
                        <meta name="viewport" content="width=device-width, initial-scale=1.0">
                        <title>회원가입 페이지</title>
                        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
                        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
                            rel="stylesheet"
                            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
                            crossorigin="anonymous">
                        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
                            crossorigin="anonymous"></script>
                        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
                            integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
                            crossorigin="anonymous"></script>
                        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
                            integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
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
                        }

                        .input-group-sm {
                            width: 400px;
                            height: 45px;
                            margin-bottom: 5px;
                        }

                        .btn-dark {
                            width: 197px;
                            height: 45px;
                            margin-bottom: 40px;
                        }

                        .btn-secondary {
                            width: 197px;
                            height: 45px;
                            margin-bottom: 40px;
                        }

                        .btn-primary {
                            height: 45px;
                            width: 197px;
                            margin-bottom: 5px;
                        }

                        .btn-success {
                            height: 45px;
                            width: 197px;
                            margin-bottom: 5px;
                            margin-right: 5px;
                        }

                        .loginA01 {
                            color: gray;
                            text-decoration: none;
                        }

                        .loginA01:hover {
                            color: black;
                        }

                        .input-group {
                            height: 45px;
                            margin-bottom: 5px;
                        }

                        .input-group-text {
                            width: 70px;
                        }

                        .form-control {
                            height: 45px;
                            margin-bottom: 10px;
                        }

                        .regex {
                            font-size: 80%;
                        }

                        .form-check-label,
                        .form-check a {
                            font-size: 80%;
                            text-decoration: none;
                            color: black;
                        }

                        .form-check a:hover {
                            color: gray;
                        }

                        .form-check {
                            margin-bottom: 10px;
                        }

                        .form-check-input,
                        .form-check-label {
                            cursor: pointer;
                        }

                        /*---------------------------------------------------------------------------------------------------------*/
                        .tit_con_title,
                        .tit_skip {
                            margin-top: 30px;
                        }

                        .tit_sub {
                            margin-top: 20px;
                        }

                        .list_number {
                            margin-top: 10px;
                        }

                        .list_number,
                        .list_nostyle {
                            margin-top: 10px;
                            list-style: none;
                        }

                        #tripAgFdiv01 p {
                            margin-top: 10px;
                        }

                        #tripAgFdiv02 p {
                            margin-top: 10px;
                        }

                        .list_number li,
                        .list_nostyle li {
                            margin-left: 40px;
                            text-indent: -20px;
                        }

                        #tripAgFdiv01 {
                            display: none;
                        }

                        .tripSpan01:hover {
                            color: red;
                            cursor: pointer;
                        }

                        .tbl_vertical,
                        .tbl_basic {
                            width: 100%;
                        }

                        .tbl_vertical th {
                            height: 50px;
                            background-color: #ededed;
                            border-top: 2px solid black;
                        }

                        .tbl_vertical td {
                            height: 50px;
                            border-bottom: 1px solid #ededed;
                        }

                        .tbl_basic th {
                            height: 50px;
                            background-color: #ededed;
                        }

                        .tbl_basic td {
                            height: 50px;
                            border-bottom: 1px solid #ededed;
                        }

                        .tbl_basic tr:nth-child(1) th,
                        .tbl_basic tr:nth-child(1) td {
                            border-top: 2px solid black;
                            border-bottom: 1px solid #ededed;
                        }

                        .list_circle,
                        .list_number {
                            list-style: none;
                        }

                        .list_circle ul {
                            list-style: none;
                        }

                        .list_circle li,
                        .list_number li {
                            margin-left: 40px;
                            text-indent: -20px;
                        }

                        .list_circle span {
                            font-size: 130%;
                        }

                        .tit_main_txt {
                            font-size: 110%;
                            margin-top: 30px;
                        }

                        .tit_sub {
                            font-size: 100%;
                            margin-top: 30px;
                        }

                        .txt_center {
                            text-align: center;
                        }

                        .tit {
                            margin-top: 30px;
                        }

                        .tit_sub {
                            margin-top: 20px;
                        }

                        .list_circle {
                            margin-top: 10px;
                        }

                        .list_circle,
                        .list_number {
                            list-style: none;
                        }

                        .list_circle li,
                        .list_number li {
                            margin-left: 40px;
                            text-indent: -20px;
                        }
                    </style>

                    <body>
                        <% String u_id=(String) session.getAttribute("u_id"); if( u_id !=null){%>
                            <%}%>
                                <div id="logindiv01">
                                    <table id="logintable01">
                                        <tr>
                                            <td>
                                                <div style="margin-bottom: 40px;">
                                                    <form action="join.do" method="POST" id="signform">
                                                        <div style="text-align: center;"><img
                                                                style="width: 300px; margin-bottom: 40px; cursor:pointer"
                                                                src="http://jjcom0214.cafe24.com/web/OneTrillion/logo02.png"
                                                                alt="logo01" onclick="GoHome()">
                                                        </div>
                                                        <!-- 아이디 입력칸 --------------------------------------------------------------------->
                                                        <div class="">
                                                            <label for="formGroupExampleInput"
                                                                class="form-label">ID</label>
                                                            <span class="id regex" style="float: right;"></span>
                                                            <input type="text" id="id" name="u_id" value="${userEmail}" class="form-control"
                                                                id="formGroupExampleInput" placeholder="아이디를 입력하세요">
                                                        </div>
                                                        <!-- 아이디 입력칸 --------------------------------------------------------------------->

                                                        <!-- 비밀번호 입력 칸 --------------------------------------------------------------------->
                                                        <div class="">
                                                            <label for="formGroupExampleInput"
                                                                class="form-label">Password</label>
                                                            <span class="u_pwd regex" style="float: right;"></span>
                                                            <input type="password" id="u_pwd" name="u_pwd"
                                                                class="form-control" id="formGroupExampleInput"
                                                                placeholder="비밀번호를 입력하세요">
                                                        </div>
                                                        <!-- 비밀번호 입력 칸 --------------------------------------------------------------------->

                                                        <!-- 비밀번호 확인 입력 칸 --------------------------------------------------------------------->
                                                        <div class="">
                                                            <label for="formGroupExampleInput"
                                                                class="form-label">Password</label>
                                                            <span class="repw regex" style="float: right;"></span>
                                                            <input type="password" id="repw" class="form-control"
                                                                id="formGroupExampleInput"
                                                                placeholder="비밀번호를 다시한번 입력하세요">
                                                        </div>
                                                        <!-- 비밀번호 확인 입력 칸 --------------------------------------------------------------------->

                                                        <!-- 닉네임 입력 칸 --------------------------------------------------------------------->
                                                        <div class="">
                                                            <label for="formGroupExampleInput"
                                                                class="form-label">NickName</label>
                                                            <span class="u_nickName regex" style="float: right;"></span>
                                                            <input type="text" id="u_nickName" name="u_nickName"
                                                                class="form-control" id="formGroupExampleInput"
                                                                placeholder="닉네임을 입력하세요" >
                                                        </div>
                                                        <!-- 이름 입력 칸 --------------------------------------------------------------------->

                                                        <!-- 이메일 입력 칸 --------------------------------------------------------------------->
                                                        <div class="">
                                                            <label for="formGroupExampleInput"
                                                                class="form-label">Email</label>
                                                            <span class="email regex" style="float: right;"></span>
                                                            <input type="text" id="email" name="u_email"
                                                                class="form-control" id="formGroupExampleInput"
                                                                placeholder="이메일을 입력하세요" value="${userEmail}">
                                                        </div>
                                                        <!-- 이메일 입력 칸 --------------------------------------------------------------------->
                                                        <!-- 동의 --------------------------------------------------------------------->
                                                        <div
                                                            style="margin-top: 15px; margin-bottom: 15px; padding: 20px; border-radius: 5px; box-shadow: 0 0 5px #ededed;">
                                                            <div class="input-group-text"
                                                                style="margin-bottom: 10px; border:0; height: 45px; width: 100%;">
                                                                <label class="form-check-label"
                                                                    for="defaultCheck0"><input class="form-check-input"
                                                                        name="agree_all" type="checkbox" value=""
                                                                        id="defaultCheck0"
                                                                        aria-label="Checkbox for following text input">
                                                                    전체 동의(약관 동의)</label>
                                                            </div>
                                                            <div class="form-check">
                                                                <input class="form-check-input" name="agree"
                                                                    type="checkbox" value="" id="defaultCheck1">
                                                                <label class="form-check-label" for="defaultCheck1">
                                                                    OneTrillion 여행안내<strong>(필수)</strong>
                                                                </label>
                                                                <div style="float: right;"><a href="#"
                                                                        data-bs-toggle="modal"
                                                                        data-bs-target="#staticBackdrop0">약관확인</a>
                                                                    &raquo;</div>
                                                            </div>
                                                            <div class="form-check">
                                                                <input class="form-check-input" name="agree"
                                                                    type="checkbox" value="" id="defaultCheck3">
                                                                <label class="form-check-label" for="defaultCheck3">
                                                                    OneTrillion 이용안내<strong>(필수)</strong>
                                                                </label>
                                                                <div style="float: right;"><a href="#"
                                                                        data-bs-toggle="modal"
                                                                        data-bs-target="#staticBackdrop2">약관확인</a>
                                                                    &raquo;</div>
                                                            </div>
                                                            <div class="form-check">
                                                                <input class="form-check-input" name="agree"
                                                                    type="checkbox" value="" id="defaultCheck2">
                                                                <label class="form-check-label" for="defaultCheck2">
                                                                    개인정보 수집, 이용, 제공에 대한안내<strong>(필수)</strong>
                                                                </label>
                                                                <div style="float: right;"><a href="#"
                                                                        data-bs-toggle="modal"
                                                                        data-bs-target="#staticBackdrop1">약관확인</a>
                                                                    &raquo;</div>
                                                            </div>
                                                            <p style="margin-bottom: 10px; font-size: 80%;">*개인정보의
                                                                수집,제공및 활용에 동의하지 않을 권리가 있으며, 미동의시 회원가입및 여행서비스 제공이
                                                                제한됩니다.</p>
                                                        </div>
                                                        <!-- 동의 --------------------------------------------------------------------->
                                                        <div>
                                                            <input type="button" class="btn btn-dark" name="signup"
                                                                id="signupbtn" value="Join">
                                                            <input type="reset" class="btn btn-secondary"
                                                                id="resignupbtn" value="다시입력">
                                                        </div>

                                                    </form>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <!-- Modal OneTrillion 여행안내------------------------------------------------------------------------------------------------------------>
                                <div class="modal fade" id="staticBackdrop0" data-bs-backdrop="static"
                                    data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel"
                                    aria-hidden="true">
                                    <div class="modal-dialog modal-dialog-scrollable modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="staticBackdropLabel">OneTrillion 여행안내</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <div id="tripAgFdiv02" style="margin: auto; width: 100%;">
                                                    <h4 class="tit_sub">제1조(목적)</h4>
                                                    <p>이 약관은 OneTrillion 여행사와 여행자가 체결한 국내여행계약의 세부이행 및 준수사항을 정함을 목적으로
                                                        합니다.</p>
                                                    <h4 class="tit_sub">제2조(여행의 종류 및 정의)</h4>
                                                    <p>여행의 종류와 정의는 다음과 같습니다.</p>
                                                    <ol class="list_number">
                                                        <li>일반모집여행 : 여행사가 수립한 여행조건에 따라 여행자를 모집하여 실시하는 여행.</li>
                                                        <li>희망여행 : 여행자가 희망하는 여행조건에 따라 여행사가 실시하는 여행.</li>
                                                        <li>위탁모집여행 : 여행사가 만든 모집여행상품의 여행자 모집을 타 여행업체에 위탁하여 실시하는 여행.</li>
                                                    </ol>
                                                    <h4 class="tit_sub">제3조(여행사와 여행자 의무)</h4>
                                                    <ol class="list_nostyle">
                                                        <li>① 여행사는 여행자에게 안전하고 만족스러운 여행서비스를 제공하기 위하여 여행알선 및 안내․운송․숙박
                                                            등 여행계획의 수립 및 실행과정에서 맡은 바 임무를 충실히 수행하여야 합니다.</li>
                                                        <li>② 여행자는 안전하고 즐거운 여행을 위하여 여행자간 화합도모 및 여행사의 여행질서 유지에 적극
                                                            협조하여야 합니다.</li>
                                                    </ol>
                                                    <h4 class="tit_sub">제4조(계약의 구성)</h4>
                                                    <ol class="list_nostyle">
                                                        <li>① 여행계약은 여행계약서(붙임)와 여행약관․여행일정표(또는 여행 설명서)를 계약내용으로 합니다.</li>
                                                        <li>② 여행계약서에는 여행사의 상호, 소재지 및 관광진흥법 제9조에 따른 보증보험 등의 가입(또는
                                                            영업보증금의 예치 현황) 내용이 포함되어야 합니다.</li>
                                                        <li>③ 여행일정표(또는 여행설명서)에는 여행일자별 여행지와 관광내용․교통수단․쇼핑횟수․숙박장소․식사 등
                                                            여행실시일정 및 여행사 제공 서비스 내용과 여행자 유의사항이 포함되어야 합니다.</li>
                                                    </ol>
                                                    <h4 class="tit_sub">제5조(계약체결 거절)</h4>
                                                    <p>여행사는 여행자에게 다음 각 호의 1에 해당하는 사유가 있을 경우에는 여행자와의 계약체결을 거절할 수
                                                        있습니다.</p>
                                                    <ol class="list_number">
                                                        <li>질병, 신체이상 등의 사유로 개별관리가 필요하거나, 단체여행(다른 여행자의 여행에 지장을 초래하는
                                                            등)의 원활한 실시에 지장이 있다고 인정되는 경우</li>
                                                        <li>계약서에 명시한 최대행사인원이 초과된 경우</li>
                                                    </ol>
                                                    <h4 class="tit_sub">제6조(특약)</h4>
                                                    <p>여행사와 여행자는 관련법규에 위반되지 않는 범위 내에서 서면(전자문서를 포함한다. 이하 같다)으로 특약을
                                                        맺을 수 있습니다. 이 경우 여행사는 특약의 내용이 표준약관과 다르고 표준약관보다 우선 적용됨을 여행자에게 설명하고
                                                        별도의 확인을 받아야 합니다.</p>
                                                    <h4 class="tit_sub">제7조(계약서 등 교부 및 안전정보 제공)</h4>
                                                    <p>여행사는 여행자와 여행계약을 체결한 경우 계약서와 여행약관, 여행일정표(또는 여행설명서)를 각 1부씩
                                                        여행자에게 교부하고, 여행목적지에 관한 안전정보를 제공하여야 합니다. 또한 여행 출발 전 해당 여행지에 대한
                                                        안전정보가 변경된 경우에도 변경된 안전정보를 제공하여야 합니다.</p>
                                                    <h4 class="tit_sub">제8조(계약서 및 약관 등 교부 간주)</h4>
                                                    <p>다음 각 호의 경우에는 여행사가 여행자에게 여행계약서와 여행약관 및 여행일정표(또는 여행설명서)가 교부된
                                                        것으로 간주합니다.</p>
                                                    <ol class="list_number">
                                                        <li>여행자가 인터넷 등 전자정보망으로 제공된 여행계약서, 약관 및 여행일정표(또는 여행설명서)의 내용에
                                                            동의하고 여행계약의 체결을 신청한 데 대해 여행사가 전자정보망 내지 기계적 장치 등을 이용하여 여행자에게
                                                            승낙의
                                                            의사를 통지한 경우</li>
                                                        <li>여행사가 팩시밀리 등 기계적 장치를 이용하여 제공한 여행계약서, 약관 및 여행일정표(또는
                                                            여행설명서)의 내용에 대하여 여행자가 동의하고 여행계약의 체결을 신청하는 서면을 송부한 데 대해 여행사가
                                                            전자정보망 내지 기계적 장치 등을 이용하여 여행자에게 승낙의 의사를 통지한 경우</li>
                                                    </ol>
                                                    <h4 class="tit_sub">제9조(여행요금)</h4>
                                                    <ol class="list_nostyle">
                                                        <li>① 여행계약서의 여행요금에는 다음 각 호가 포함됩니다. 다만, 희망여행은 당사자간 합의에 따릅니다.
                                                            <ol class="list_number">
                                                                <li>항공기, 선박, 철도 등 이용운송기관의 운임(보통운임기준)</li>
                                                                <li>공항, 역, 부두와 호텔사이 등 송영버스요금</li>
                                                                <li>숙박요금 및 식사요금</li>
                                                                <li>안내자경비</li>
                                                                <li>여행 중 필요한 각종 세금</li>
                                                                <li>국내 공항․항만 이용료</li>
                                                                <li>일정표내 관광지 입장료</li>
                                                                <li>기타 개별계약에 따른 비용</li>
                                                            </ol>
                                                        </li>
                                                        <li>② 여행자는 계약 체결시 계약금(여행요금 중 10%이하의 금액)을 여행사에게 지급하여야 하며,
                                                            계약금은 여행요금 또는 손해배상액의 전부 또는 일부로 취급합니다.</li>
                                                        <li>③ 여행자는 제1항의 여행요금 중 계약금을 제외한 잔금을 여행출발 전일까지 여행사에게 지급하여야
                                                            합니다.</li>
                                                        <li>④ 여행자는 제1항의 여행요금을 당사자가 약정한 바에 따라 카드, 계좌이체 또는 무통장입금 등의
                                                            방법으로 지급하여야 합니다.</li>
                                                        <li>⑤ 희망여행요금에 여행자 보험료가 포함되는 경우 여행사는 보험회사명, 보상내용 등을 여행자에게
                                                            설명하여야 합니다.</li>
                                                    </ol>
                                                    <h4 class="tit_sub">제10조(여행조건의 변경요건 및 요금 등의 정산)</h4>
                                                    <ol class="list_nostyle">
                                                        <li>① 계약서 등에 명시된 여행조건은 다음 각 호의 1의 경우에 한하여 변경될 수 있습니다.
                                                            <ol class="list_number">
                                                                <li>여행자의 안전과 보호를 위하여 여행자의 요청 또는 현지사정에 의하여 부득이하다고 쌍방이 합의한
                                                                    경우</li>
                                                                <li>천재지변, 전란, 정부의 명령, 운송‧숙박기관 등의 파업‧휴업 등으로 여행의 목적을 달성할 수
                                                                    없는 경우</li>
                                                            </ol>
                                                        </li>
                                                        <li>② 여행사가 계약서 등에 명시된 여행일정을 변경하는 경우에는 해당 날짜의 일정이 시작되기 전에
                                                            여행자의 서면 동의를 받아야 합니다. 이때 서면동의서에는 변경일시, 변경내용, 변경으로 발생하는 비용이
                                                            포함되어야
                                                            합니다.</li>
                                                        <li>③ 천재지변, 사고, 납치 등 긴급한 사유가 발생하여 여행자로부터 여행일정 변경 동의를 받기
                                                            어렵다고 인정되는 경우에는 제2항에 따른 일정변경 동의서를 받지 아니할 수 있습니다. 다만, 여행사는 사후에
                                                            서면으로 그 변경 사유 및 비용 등을 설명하여야 합니다.</li>
                                                        <li>④ 제1항의 여행조건 변경으로 인하여 제9조제1항의 여행요금에 증감이 생기는 경우에는 여행출발 전
                                                            변경 분은 여행출발 이전에, 여행 중 변경 분은 여행종료 후 10일 이내에 각각 정산(환급)하여야 합니다.
                                                        </li>
                                                        <li>⑤ 제1항의 규정에 의하지 아니하고 여행조건이 변경되거나 제13조 내지 제15조의 규정에 의한
                                                            계약의 해제․해지로 인하여 손해배상액이 발생한 경우에는 여행출발 전 발생 분은 여행출발이전에, 여행 중 발생
                                                            분은
                                                            여행종료 후 10일 이내에 각각 정산(환급)하여야 합니다.</li>
                                                        <li>⑥ 여행자는 여행출발 후 자기의 사정으로 숙박, 식사, 관광 등 여행요금에 포함된 서비스를 제공받지
                                                            못한 경우 여행사에게 그에 상응하는 요금의 환급을 청구할 수 없습니다. 다만, 여행이 중도에 종료된 경우에는
                                                            제15조에 준하여 처리합니다.</li>
                                                    </ol>
                                                    <h4 class="tit_sub">제11조(여행자 지위의 양도)</h4>
                                                    <ol class="list_nostyle">
                                                        <li>① 여행자가 개인사정 등으로 여행자의 지위를 양도하기 위해서는 여행사의 승낙을 받아야 합니다. 이때
                                                            여행사는 여행자 또는 여행자의 지위를 양도받으려는 자가 양도로 발생하는 비용을 지급할 것을 조건으로 양도를
                                                            승낙할
                                                            수 있습니다.</li>
                                                        <li>② 전항의 양도로 발생하는 비용이 있을 경우 여행사는 기한을 정하여 그 비용의 지급을 청구하여야
                                                            합니다.</li>
                                                        <li>③ 여행사는 계약조건 또는 양도하기 어려운 불가피한 사정 등을 이유로 제1항의 양도를 승낙하지 않을
                                                            수 있습니다.</li>
                                                        <li>④ 제1항의 양도는 여행사가 승낙한 때 효력이 발생합니다. 다만, 여행사가 양도로 인해 발생한
                                                            비용의 지급을 조건으로 승낙한 경우에는 정해진 기한 내에 비용이 지급되는 즉시 효력이 발생합니다.</li>
                                                        <li>⑤ 여행자의 지위가 양도되면, 여행계약과 관련한 여행자의 모든 권리 및 의무도 그 지위를 양도 받는
                                                            자에게 승계됩니다.</li>
                                                    </ol>
                                                    <h4 class="tit_sub">제12조(여행사의 책임)</h4>
                                                    <ol class="list_nostyle">
                                                        <li>① 여행자는 여행에 하자가 있는 경우에 여행사에게 하자의 시정 또는 대금의 감액을 청구할 수
                                                            있습니다. 다만, 그 시정에 지나치게 많은 비용이 들거나 그 밖에 시정을 합리적으로 기대할 수 없는 경우에는
                                                            시정을 청구할 수 없습니다.</li>
                                                        <li>② 여행자는 시정 청구, 감액 청구를 갈음하여 손해배상을 청구하거나 시정 청구, 감액 청구와 함께
                                                            손해배상을 청구 할 수 있습니다.</li>
                                                        <li>③ 제1항 및 제2항의 권리는 여행기간 중에도 행사할 수 있으며, 여행종료일부터 6개월 내에
                                                            행사하여야 합니다.</li>
                                                        <li>④ 여행사는 여행 출발시부터 도착시까지 여행사 본인 또는 그 고용인, 현지여행사 또는 그 고용인
                                                            등(이하 ‘사용인’이라 함)이 제3조제1항에서 규정한 여행사 임무와 관련하여 여행자에게 고의 또는 과실로
                                                            손해를
                                                            가한 경우 책임을 집니다.</li>
                                                        <li>⑤ 여행사는 항공기, 기차, 선박 등 교통기관의 연발착 또는 교통체증 등으로 인하여 여행자가 입은
                                                            손해를 배상하여야 합니다. 다만, 여행사가 고의 또는 과실이 없음을 입증한 때에는 그러하지 아니합니다.
                                                        </li>
                                                        <li>⑥ 여행사는 자기나 그 사용인이 여행자의 수하물 수령․인도․보관 등에 관하여 주의를 해태하지
                                                            아니하였음을 증명하지 아니 하는 한 여행자의 수하물 멸실, 훼손 또는 연착으로 인하여 발생한 손해를
                                                            배상하여야
                                                            합니다.</li>
                                                    </ol>
                                                    <h4 class="tit_sub">제13조(여행출발 전 계약해제)</h4>
                                                    <ol class="list_nostyle">
                                                        <li>① 여행사 또는 여행자는 여행출발전 이 여행계약을 해제할 수 있습니다. 이 경우 발생하는 손해액은
                                                            ‘소비자분쟁해결기준’(공정거래위원회 고시)에 따라 배상합니다.</li>
                                                        <li>② 여행사 또는 여행자는 여행출발 전에 다음 각 호의 1에 해당하는 사유가 있는 경우 상대방에게
                                                            제1항의 손해배상액을 지급하지 아니하고 이 여행계약을 해제할 수 있습니다.
                                                            <ol class="list_number">
                                                                <li>여행사가 해제할 수 있는 경우
                                                                    <ol class="list_nostyle">
                                                                        <li>가. 제10조 제1항 제1호 및 제2호 사유의 경우</li>
                                                                        <li>나. 여행자가 다른 여행자에게 폐를 끼치거나 여행의 원활한 실시에 현저한 지장이
                                                                            있다고
                                                                            인정될 때</li>
                                                                        <li>다. 질병 등 여행자의 신체에 이상이 발생하여 여행에의 참가가 불가능한 경우
                                                                        </li>
                                                                        <li>라. 여행자가 계약서에 기재된 기일까지 여행요금을 지급하지 아니하는 경우
                                                                        </li>
                                                                    </ol>
                                                                </li>
                                                                <li>여행사가 해제할 수 있는 경우
                                                                    <ol class="list_nostyle">
                                                                        <li>가. 제10조 제1항 제1호 및 제2호 사유의 경우</li>
                                                                        <li>나. 여행사가 제18조에 따른 공제 또는 보증보험에 가입하지 아니 하였거나
                                                                            영업보증금을
                                                                            예치하지 않은 경우</li>
                                                                        <li>다. 여행자의 3촌이내 친족이 사망한 경우</li>
                                                                        <li>라. 질병 등 여행자의 신체에 이상이 발생하여 여행에의 참가가 불가능한 경우
                                                                        </li>
                                                                        <li>마. 배우자 또는 직계존비속이 신체이상으로 3일 이상 병원(의원)에 입원하여
                                                                            여행 출발시까지
                                                                            퇴원이 곤란한 경우 그 배우자 또는 보호자 1인</li>
                                                                        <li>바. 여행사의 귀책사유로 계약서에 기재된 여행일정대로의 여행실시가 불가능해진
                                                                            경우</li>
                                                                    </ol>
                                                                </li>
                                                            </ol>
                                                        </li>
                                                    </ol>
                                                    <h4 class="tit_sub">제14조(최저행사인원 미 충족시 계약해제)</h4>
                                                    <ol class="list_nostyle">
                                                        <li>① 여행사는 최저행사인원이 충족되지 아니하여 여행계약을 해제하는 경우 당일여행의 경우 여행출발
                                                            24시간 이전까지, 1박2일 이상인 경우에는 여행출발 48시간 이전까지 여행자에게 통지하여야 합니다.
                                                        </li>
                                                        <li>② 여행사가 여행참가자 수의 미달로 전항의 기일 내 통지를 하지 아니하고 계약을 해제하는 경우 이미
                                                            지급받은 계약금 환급 외에 계약금 100% 상당액을 여행자에게 배상하여야 합니다.</li>
                                                    </ol>
                                                    <h4 class="tit_sub">제15조(여행출발 후 계약해지)</h4>
                                                    <ol class="list_nostyle">
                                                        <li>① 여행사 또는 여행자는 여행출발 후 부득이한 사유가 있는 경우 각 당사자는 여행계약을 해지할 수
                                                            있습니다. 다만, 그 사유가 당사자 한쪽의 과실로 인하여 생긴 경우에는 상대방에게 손해를 배상하여야 합니다.
                                                        </li>
                                                        <li>② 제1항에 따라 여행계약이 해지된 경우 귀환운송 의무가 있는 여행사는 여행자를 귀환운송 할 의무가
                                                            있습니다.</li>
                                                        <li>③ 제1항의 계약해지로 인하여 발생하는 추가 비용은 그 해지사유가 어느 당사자의 사정에 속하는
                                                            경우에는 그 당사자가 부담하고, 양 당사자 누구의 사정에도 속하지 아니하는 경우에는 각 당사자가 추가 비용의
                                                            50%씩을 부담합니다.</li>
                                                        <li>④ 여행자는 여행에 중대한 하자가 있는 경우에 그 시정이 이루어지지 아니하거나 계약의 내용에 따른
                                                            이행을 기대할 수 없는 경우에는 계약을 해지할 수 있습니다.</li>
                                                        <li>⑤ 제4항에 따라 계약이 해지된 경우 여행사는 대금청구권을 상실합니다. 다만, 여행자가 실행된
                                                            여행으로 이익을 얻은 경우에는 그 이익을 여행사에게 상환하여야 합니다.</li>
                                                        <li>⑥ 제4항에 따라 계약이 해지된 경우 여행사는 계약의 해지로 인하여 필요하게 된 조치를 할 의무를
                                                            지며, 계약상 귀환운송 의무가 있으면 여행자를 귀환운송하여야 합니다. 이 경우 귀환운송비용은 원칙적으로
                                                            여행사가
                                                            부담하여야 하나, 상당한 이유가 있는 때에는 여행사는 여행자에게 그 비용의 일부를 청구할 수 있습니다.
                                                        </li>
                                                    </ol>
                                                    <h4 class="tit_sub">제16조(여행의 시작과 종료)</h4>
                                                    <p>여행의 시작은 출발하는 시점부터 시작하며 여행일정이 종료하여 최종목적지에 도착함과 동시에 종료합니다.
                                                        다만, 계약 및 일정을 변경할 때에는 예외로 합니다.</p>
                                                    <h4 class="tit_sub">제17조(설명의무)</h4>
                                                    <p>여행사는 이 계약서에 정하여져 있는 중요한 내용 및 그 변경사항을 여행자가 이해할 수 있도록 설명하여야
                                                        합니다.</p>
                                                    <h4 class="tit_sub">제18조(보험가입 등)</h4>
                                                    <p>여행사는 여행과 관련하여 여행자에게 손해가 발생 한 경우 여행자에게 보험금을 지급하기 위한 보험 또는
                                                        공제에 가입하거나 영업 보증금을 예치하여야 합니다.</p>
                                                    <h4 class="tit_sub">제19(기타사항)</h4>
                                                    <ol class="list_nostyle">
                                                        <li>① 이 계약에 명시되지 아니한 사항 또는 이 계약의 해석에 관하여 다툼이 있는 경우에는 여행사와
                                                            여행자가 합의하여 결정하되, 합의가 이루어지지 아니한 경우에는 관계법령 및 일반관례에 따릅니다.</li>
                                                        <li>② 특수지역에의 여행으로서 정당한 사유가 있는 경우에는 이 표준약관의 내용과 다르게 정할 수
                                                            있습니다.</li>
                                                    </ol>
                                                </div>

                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary"
                                                    data-bs-dismiss="modal">닫기</button>
                                            </div>
                                        </div>
                                    </div>
                                </div><!-- Modal -->
                                <!-- Modal 개인정보 수집, 이용에 대한안내-->
                                <div class="modal fade" id="staticBackdrop1" data-bs-backdrop="static"
                                    data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel"
                                    aria-hidden="true">
                                    <div class="modal-dialog modal-dialog-scrollable modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="staticBackdropLabel">개인정보 수집, 이용, 제공에 대한안내
                                                </h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="wrap_agree" style="width: 100%; margin: auto;">
                                                    <h5 class="tit_main_txt">1. 총칙</h5>
                                                    <ol class="list_circle">
                                                        <li><span>①</span> OneTrillion(이하 ‘회사’)은 이용자의 개인정보보호를 매우 중요시하며,
                                                            『개인정보보호법』 등 개인정보보호 관련 법률 및 하위 법령들을 준수하고 있습니다.</li>
                                                        <li><span>②</span> 회사는 개인정보 처리방침을 통하여 이용자의 개인정보를 이용하는 목적과 방법,
                                                            이용자의 개인정보 보호를 위해 취하는 조치를 알려드립니다. 회사는 개인정보 처리방침을 홈페이지 첫 화면에
                                                            공개함으로써
                                                            언제나 용이하게 보실 수 있습니다.</li>
                                                        <li><span>③</span> 본 개인정보 처리방침은 정부의 법령 및 지침의 변경, 또는 보다 나은 서비스의
                                                            제공을 위하여 그 내용이 변경될 수 있으며, 회사는 개인정보 처리방침을 개정하는 경우 이용자가 개정된 사항을
                                                            쉽게 알아볼
                                                            수 있도록 공지하고 있습니다.</li>
                                                    </ol>
                                                    <h5 class="tit_main_txt">2. 개인정보의 수집항목 및 이용목적</h5>
                                                    <ol class="list_circle">
                                                        <li><span>①</span> 회사는 회원가입 또는 상품의 예약 및 관련 서비스 이용 시 아래의 개인정보 항목을
                                                            다음과 같은 목적으로 수집하고 있습니다. 이용자의 개인정보를 수집하는 경우에는 그 목적에 필요한 최소한의
                                                            개인정보를
                                                            수집하고 있습니다.</li>
                                                    </ol>

                                                    <h6 class="tit_sub">1. [회원가입 시]</h6>
                                                    <table class="tbl_vertical">
                                                        <colgroup>
                                                            <col style="width: 16%">
                                                            <col style="width: 40%">
                                                            <col style="width: 24%">
                                                            <col>
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">구분</th>
                                                                <th scope="col">수집 항목</th>
                                                                <th scope="col">이용목적</th>
                                                                <th scope="col">보유 및 이용기간</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td class="txt_center">필수</td>
                                                                <td>Facebook, Kakao, Naver : 식별ID<br> Apple : 식별ID, 이름,
                                                                    이메일
                                                                </td>
                                                                <td rowspan="2">SNS(Facebook, Kakao, Naver, Apple)를 통한
                                                                    회원가입
                                                                    서비스 이용 시 제휴사 로부터 제공 받는 정보</td>
                                                                <td rowspan="2">회원가입 철회 시 까지 또는 법정 의무 보유기간<br> ※ SNS로부터
                                                                    제공받은 정보는 회원가입 단계에서만 이용하며,회원가입이 진행되지 않는 경우 즉시 파기합니다.
                                                                    또한, 당사의 회원가입
                                                                    절차를 통해 이용자가 직접 동의한 경우에 한하여 개인정보를 보관합니다.
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="txt_center">선택</td>
                                                                <td>Facebook : 이메일, 이름, 프로필사진<br> Kakao : 닉네임, 이메일, 성별,
                                                                    연령대, 생일<br> Naver : 이름, 이메일, 닉네임, 성별, 생일, 연령대
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="txt_center">필수</td>
                                                                <td>ID/PW, 성명(국문), 휴대전화번호</td>
                                                                <td rowspan="2">회원가입 서비스 이용 시</td>
                                                                <td rowspan="2">회원가입 철회 시 까지 또는 법정 의무 보유기간</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="txt_center">선택</td>
                                                                <td>성별, 생년월일</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>

                                                    <h6 class="tit_sub">2. [여행상품 예약 시]</h6>
                                                    <table class="tbl_vertical">
                                                        <colgroup>
                                                            <col style="width: 16%">
                                                            <col style="width: 40%">
                                                            <col style="width: 24%">
                                                            <col>
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">구분</th>
                                                                <th scope="col">수집 항목</th>
                                                                <th scope="col">이용목적</th>
                                                                <th scope="col">보유 및 이용기간</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td class="txt_center">필수</td>
                                                                <td>예약자 : 성명(국문), 생년월일, 성별, 이메일주소, 휴대전화번호<br>여행자 :
                                                                    성명(국문),생년월일,성별
                                                                </td>
                                                                <td rowspan="2">여행상품 (패키지, 항공권, 호텔 등) 예약 및 상담 안내</td>
                                                                <td rowspan="2">이용 목적 달성 시 까지 또는 법정 의무 보유기간</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="txt_center">선택</td>
                                                                <td>예약자 : 전화번호<br>여행자 :성명(영문),휴대전화번호, 주소, 이메일 주소,
                                                                    여권정보(여권번호, 여권만료일), 메신저 ID(카카오톡 등)
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td rowspan="2" class="txt_center">필수<br>(국제선)
                                                                </td>
                                                                <td>예약자/여행자 성명(국문/영문),생년월일,여권정보(여권번호,여권만료일)국적</td>
                                                                <td>항공권 예약 및 출국 여부 파악</td>
                                                                <td>출발일 기준 즉시(5일이내) 삭제</td>
                                                            </tr>
                                                            <tr>
                                                                <td>여권 사본</td>
                                                                <td>(해외출국 시) 예약 관련 입력사항 확인 및 업무 담당자 검수</td>
                                                                <td>출발 후 즉시(5일이내) 삭제</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="txt_center">필수<br>(국내선)
                                                                </td>
                                                                <td>예약자 : 성명(국문), 생년월일, 성별, 이메일주소, 휴대전화번호,국적,
                                                                    성명(영문)<br>여행자
                                                                    : 성명(국문),국적, 성명(영문)
                                                                </td>
                                                                <td>국내 항공권 예약</td>
                                                                <td rowspan="5">이용 목적 달성 시 까지 또는 법정 의무 보유기간</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="txt_center">필수</td>
                                                                <td>성명(국문/영문), 생년월일, 성별, 휴대전화번호, 이메일주소</td>
                                                                <td>여행자 보험 가입 및 보험금 청구 시 본인확인</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="txt_center">필수</td>
                                                                <td>성명(국문), 생년월일, 카드정보(카드번호, 카드만료일), 환불시(은행명, 계좌번호, 예금주)
                                                                </td>
                                                                <td>상품 결제/환불/정산</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="txt_center">필수</td>
                                                                <td>소득공제용 : 휴대전화번호<br>지출증빙용 : 휴대전화번호, 사업자등록번호
                                                                </td>
                                                                <td>현금영수증 발급</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="txt_center">필수</td>
                                                                <td>예약자 성명(국문), 예약자 생년월일, 예약자 성별, 예약자 휴대전화번호, 성명(영문),
                                                                    휴대전화번호</td>
                                                                <td>비회원 상품 예약 시</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <h6 class="tit_sub">3. [쇼핑 서비스 이용 시]</h6>
                                                    <table class="tbl_vertical">
                                                        <colgroup>
                                                            <col style="width: 16%">
                                                            <col style="width: 40%">
                                                            <col style="width: 24%">
                                                            <col>
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">구분</th>
                                                                <th scope="col">수집 항목</th>
                                                                <th scope="col">이용목적</th>
                                                                <th scope="col">보유 및 이용기간</th>
                                                            </tr>
                                                        </thead>
                                                        <tbdoy>
                                                            <tr>
                                                                <td class="txt_center">필수</td>
                                                                <td>성명, 아이디, 전화번호, 휴대폰번호, 이메일, 주소, 개인통관고유부호(입력 시), 영문성명
                                                                    및
                                                                    영문주소(입력 시), ※ 구매자와 수취인이 다를 경우에는 수취인의 정보(아이디, 이메일
                                                                    제외)가 제공될 수 있습니다.</td>
                                                                <td>청약의사의 확인, 거래이행, 배송, 고객상담, AS등 불만 처리, 해외 직배송 상품
                                                                    통관업무처리</td>
                                                                <td>이용 목적 달성 시 까지 또는 법정 의무 보유기간</td>
                                                            </tr>
                                                        </tbdoy>
                                                    </table>

                                                    <h6 class="tit_sub">4. [기타 서비스 및 서비스 처리 과정에서 생성/수집되는 정보]</h6>
                                                    <table class="tbl_vertical">
                                                        <colgroup>
                                                            <col style="width: 16%">
                                                            <col style="width: 40%">
                                                            <col style="width: 24%">
                                                            <col>
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">구분</th>
                                                                <th scope="col">수집 항목</th>
                                                                <th scope="col">이용목적</th>
                                                                <th scope="col">보유 및 이용기간</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td class="txt_center">필수</td>
                                                                <td>휴대전화번호, 이메일주소</td>
                                                                <td>1:1 문의 안내</td>
                                                                <td rowspan="6">이용 목적 달성 시 까지 또는 법정 의무 보유기간</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="txt_center">필수</td>
                                                                <td>성명(국문), 이메일주소, 휴대전화번호</td>
                                                                <td>견적 문의 안내</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="txt_center">필수</td>
                                                                <td>예약번호, 성명(국문), 생년월일, 휴대전화번호</td>
                                                                <td>고객만족도 조사 참여 및 중복 참여 관리</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="txt_center">선택</td>
                                                                <td>성명(국문), 휴대전화번호</td>
                                                                <td>고객만족도 조사 참여 대상자 경품추첨 및 발송</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="txt_center">필수</td>
                                                                <td>휴대전화번호, 이메일주소</td>
                                                                <td>칭찬합시다 또는 개선/건의하기</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="txt_center">필수</td>
                                                                <td>패키지예약 : 성명(국문),이메일주소<br> 항공/자유여행 예약 :
                                                                    성명(국문/영문),휴대폰번호
                                                                </td>
                                                                <td>내 예약 찾기</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="txt_center">선택</td>
                                                                <td>자택전화번호, 자택주소, 직업, 결혼여부, 결혼기념일</td>
                                                                <td>특가, 혜택, 쿠폰, 이벤트 응모 등 서비스 홍보 및 마케팅 활동</td>
                                                                <td rowspan="2">회원가입 철회 시 까지 또는 법정 의무 보유기간</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="txt_center">생성<br>정보
                                                                </td>
                                                                <td>IP주소, 서비스 이용기록, 접속시간 등 로그, 쿠키, 모바일기기정보(OS버전, 디바이스ID,
                                                                    광고식별자 등) 등</td>
                                                                <td>서비스 이용 통계</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <br>
                                                    <ol class="list_circle">
                                                        <li><span>①</span> 단, 이용자의 기본적 인권 침해의 우려가 있는 민감한 개인정보 (정치적 성향 및
                                                            범죄기록, 건강상태 등)는 이용자로부터 별도의 동의를 받거나 법률에 근거가 없는 이상 수집하지 않습니다.
                                                        </li>
                                                        <li><span>②</span> 회사는 이용자에게 재화나 서비스를 홍보하거나 판매를 권유하기 위하여 개인정보의
                                                            처리에 대한 동의를 받으려는 때에는 이용자가 이를 명확하게 인지할 수 있도록 알리고 동의를 받습니다.
                                                        </li>
                                                        <li><span>③</span> 회사는 모바일 앱 서비스를 위하여 이용자의 이동통신단말기 내 정보 및 기능 중
                                                            아래 사항에 대해 접근을 합니다. 필수 접근항목은 앱 설치 또는 최초실행시 안내 및 동의를 받으며, 선택
                                                            접근항목은 해당
                                                            서비스 진입시 별도 동의를 받습니다. 선택 접근항목의 경우 OS버전에 따라 동의 받는 방법이 다를 수
                                                            있으나, 이용자가
                                                            거부하시더라도 기본 서비스 이용에는 제한이 없습니다.</li>
                                                    </ol>
                                                    <br>
                                                    <table class="tbl_vertical">
                                                        <colgroup>
                                                            <col style="width: 16%">
                                                            <col>
                                                            <col>
                                                            <col>
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">OS(운영체제)</th>
                                                                <th scope="col">구분</th>
                                                                <th scope="col">접근 항목</th>
                                                                <th scope="col">접근 목적</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td rowspan="4" class="txt_center">Android</td>
                                                                <td class="txt_center">필수</td>
                                                                <td colspan="2" class="txt_center">없음</td>
                                                            </tr>
                                                            <tr>
                                                                <td rowspan="3" class="txt_center">선택</td>
                                                                <td class="txt_center">카메라</td>
                                                                <td>증빙서류(여권 등) 사진 촬영</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="txt_center">마이크</td>
                                                                <td>음성인식을 통한 챗봇상담, 상품찾기</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="txt_center">저장</td>
                                                                <td>챗봇상담 저장, 증빙서류(여권 등) 사진 등록</td>
                                                            </tr>
                                                            <tr>
                                                                <td rowspan="5" class="txt_center">iOS</td>
                                                                <td class="txt_center">필수</td>
                                                                <td colspan="2" class="txt_center">없음</td>
                                                            </tr>
                                                            <tr>
                                                                <td rowspan="4" class="txt_center">선택</td>
                                                                <td class="txt_center">알림</td>
                                                                <td>공지 및 이벤트 알림</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="txt_center">카메라</td>
                                                                <td>증빙서류(여권 등) 사진 촬영</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="txt_center">앨범</td>
                                                                <td>증빙서류(여권 등) 사진 등록</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="txt_center">마이크</td>
                                                                <td>음성인식(챗봇상담, 상품찾기)</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <h5 class="tit_main_txt">3. 개인정보의 수집방법</h5>
                                                    <ol class="list_circle">
                                                        <li><span>①</span> 회사는 적법한 절차와 법적 기준에 의거하여 이용자의 개인정보를 수집하고 있으며,
                                                            이용자의 서비스 이용에 필요한 최소한의 정보만을 수집하며, 관련 법률 및 하위법령에 의거하여 수집, 이용을
                                                            제한하고
                                                            있습니다.</li>
                                                        <li><span>②</span> 회사에서 운영하는 홈페이지 회원가입, 모바일 어플리케이션의 가입절차, 상담절차,
                                                            이벤트 및 경품행사, 영업업무 위탁사 또는 제휴사 등의 방법으로 수집하며, 이동 전화 및 유-무선 인터넷
                                                            서비스를 사용
                                                            할 때 생성정보 수집 도구를 통한 방법(쿠키) 등으로도 개인정보를 수집합니다.</li>
                                                    </ol>
                                                    <h5 class="tit_main_txt">4. 개인정보의 보유 및 이용기간</h5>
                                                    <ol class="list_circle">
                                                        <li><span>①</span> 이용자의 개인정보는 다음과 같이 개인정보의 수집목적 또는 제공받은 목적 달성 시
                                                            까지 이용하지만, '전자상거래 등에서의 소비자보호에 관한 법률’(이하 ‘전자상거래법’), ‘통신비밀보호법’
                                                            등 관련
                                                            법령의 규정에 의하여 다음과 같이 거래 관련 권리 의무 관계의 확인 등을 이유로 일정기간 보유하여야 할
                                                            필요가 있을
                                                            경우에는 일정기간 보유합니다.
                                                            <ol class="list_number">
                                                                <li>「전자상거래 등에서의 소비자보호에 관한 법률」에 의한 보관
                                                                    <ul class="list_nostyle">
                                                                        <li>가. 계약 또는 청약철회 등에 관한 기록 : 5년</li>
                                                                        <li>나. 대금결제 및 재화 등의 공급에 관한 기록 : 5년</li>
                                                                        <li>다. 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년</li>
                                                                        <li>라. 표시 &amp; 광고에 관한 기록 : 6개월</li>
                                                                    </ul>
                                                                </li>
                                                                <li>「통신비밀보호법 제41조」에 의한 보관
                                                                    <ul class="list_nostyle">
                                                                        <li>가. 컴퓨터통신, 인터넷 로그기록자료, 접속지 추적자료 : 3개월</li>
                                                                    </ul>
                                                                </li>
                                                            </ol>
                                                        </li>
                                                        <li><span>②</span> 다음의 예외적인 사유에 해당하는 경우 해당 사유 종료 시까지 개인정보를
                                                            보유합니다.
                                                            <ol class="list_number">
                                                                <li>관계 법령 위반에 따른 수사•조사 등이 진행 중인 경우 : 해당 수사•조사 종료 시까지
                                                                </li>
                                                                <li>서비스 이용에 따른 채권•채무관계 잔존할 경우 : 해당 채권•채무관계 정산 완료 시까지
                                                                </li>
                                                                <li>재화 또는 서비스 제공의 경우: 재화•서비스 공급 완료 및 요금 결제•정산 완료 시까지
                                                                </li>
                                                            </ol>
                                                        </li>
                                                        <li><span>③</span> 개인정보를 파기하지 않고 보존하는 경우에는, 다른 개인정보 및 개인정보파일과
                                                            분리하여 보관하고 해당 목적을 달성하기 위한 목적으로만 이용합니다.</li>
                                                        <li><span>④</span> 회사는 개인정보보호법 제39조의6에 따라 12개월간 이용내역 (로그인, 주문,
                                                            상담 등)이 없는 회원의 개인정보는 다른 회원의 개인정보와 분리하여 별도로 저장·관리합니다. 회사는 분리
                                                            저장된
                                                            개인정보를 법정보관기간 경과 후 파기하며, 이에 따라 회원은 회원자격을 상실 할 수 있습니다. 또한,
                                                            분리보관 30일
                                                            전까지 개인정보가 분리되어 저장·관리되는 사실과 기간 만료 일 및 해당 개인정보의 항목을
                                                            전자우편·서면·모사전송·전화
                                                            또는 이와 유사한 방법 중 어느 하나의 방법으로 회원에게 알립니다.</li>
                                                    </ol>
                                                    <h5 class="tit_main_txt">5. 개인정보의 제3자 제공</h5>
                                                    <ol class="list_circle">
                                                        <li><span>①</span> 회사는 이용자의 개인정보를 <strong>「개인정보의 수집항목
                                                                및 이용목적」 </strong>에서 고지한 범위 내에서 사용하며, 이용자의 사전 동의 없이 동 범위를
                                                            초과하여 이용하거나 원칙적으로
                                                            이용자의 개인정보를 제3자 또는 외부에 제공하지 않습니다. 단, 이용자의 동의가 있거나 법령에 의하여 정해진
                                                            절차에 따라
                                                            정보를 요청 받은 경우는 예외로 하며, 이 경우 주의를 기울여 개인정보를 이용 및 제공 할 수 있습니다.
                                                        </li>
                                                        <li><span>②</span> 회사는 서비스 수행에 직접적으로 관계되는 제3자에게 개인정보가 제공되며 내용은
                                                            다음과 같습니다</li>
                                                    </ol>
                                                    <table class="tbl_vertical">
                                                        <colgroup>
                                                            <col style="width: 24%">
                                                            <col>
                                                            <col style="width: 32%">
                                                            <col style="width: 16%">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">제공받는 자</th>
                                                                <th scope="col">제공받는 자의 이용목적</th>
                                                                <th scope="col">제공하는 개인정보 항목</th>
                                                                <th scope="col">제공받는 자의<br>개인정보 보유기간
                                                                </th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>토파스여행정보, 아시아나세이버</td>
                                                                <td rowspan="2">항공권 예약 / 발권 / 결제 서비스 및 출국가능여부 파악 제공</td>
                                                                <td rowspan="2">성명(국문/영문), 성별, 생년월일, 여권정보(여권번호, 여권만료일),
                                                                    휴대전화번호, 포인트 정보, 카드정보(카드번호, 카드만료일), 환불 시(은행명, 계좌번호,
                                                                    예금주)</td>
                                                                <td rowspan="10">서비스 이용기간 또는 제공받는 자의 이용 목적 달성 시 까지</td>
                                                            </tr>
                                                            <tr>
                                                                <td><span class="txt_align type_btn">항공사
                                                                    </span></td>
                                                            </tr>
                                                            <tr>
                                                                <td><span class="txt_align type_btn">크루즈 업체
                                                                    </span></td>
                                                                <td>크루즈 예약 진행 및 관리</td>
                                                                <td>성명(국문/영문), 생년월일, 여권정보(여권번호, 여권만료일), 휴대전화번호</td>
                                                            </tr>
                                                            <tr>
                                                                <td><span class="txt_align type_btn">호텔 및 숙박시설
                                                                    </span></td>
                                                                <td>국내 외 호텔 및 리조트, 숙박업체 예약</td>
                                                                <td>성명(국문/영문), 생년월일, 여권정보(여권번호, 여권만료일), 예약자 휴대전화번호</td>
                                                            </tr>
                                                            <tr>
                                                                <td><span class="txt_align type_btn">랜드사
                                                                    </span></td>
                                                                <td>국내/외 행사 진행 및 고객 관리</td>
                                                                <td>필수 :성명(국문/영문), 성별, 생년월일, 여권정보(여권번호, 여권만료일) <br> 선택 :
                                                                    생년월일, 주소, 이메일 주소, 메신저 ID(카카오톡 등)
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td><span class="txt_align type_btn">비자 발급 대행사
                                                                    </span></td>
                                                                <td>비자 발급 및 확인</td>
                                                                <td>성명(국문/영문), 생년월일, 성별, 여권정보(여권번호, 여권만료일), 휴대전화번호,이메일주소
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td><span class="txt_align type_btn">렌터카 업체
                                                                    </span></td>
                                                                <td>국내외 렌터카 예약</td>
                                                                <td>[국내] 성명(국문), 핸드폰번호, 전화번호, 생년월일, 이메일 주소<br> [국외]
                                                                    성명(영문), 핸드폰번호, 전화번호, 생년월일, 이메일 주소
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>호텔예약 대행사</td>
                                                                <td>호텔 예약 서비스 제공</td>
                                                                <td>성명(국문/영문)</td>
                                                            </tr>
                                                            <tr>
                                                                <td>현지투어 및 열차예약 대행사</td>
                                                                <td>유럽 현지투어 및 열차 예약 대행</td>
                                                                <td>성명(영문), 대표자 연락처</td>
                                                            </tr>
                                                            <tr>
                                                                <td>네이버</td>
                                                                <td>항공권 예약정보 확인 및 이벤트 포인트성 적립</td>
                                                                <td>네이버 이용자 고유식별자, 휴대전화번호 뒤 4자리, 항공권 예약정보</td>
                                                            </tr>
                                                            <tr>
                                                                <td>KB손해보험</td>
                                                                <td rowspan="3">여행자 보험 가입 및 보험금 청구 시 본인확인</td>
                                                                <td>성명(국문), 생년월일, 성별, 휴대전화번호</td>
                                                                <td rowspan="3">보험사 전산 등록 후<br>30일 뒤 파기
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>동부화재</td>
                                                                <td>성명(국문), 생년월일, 성별</td>
                                                            </tr>
                                                            <tr>
                                                                <td>에이스 손해보험</td>
                                                                <td>성명(국문), 생년월일, 성별</td>
                                                            </tr>
                                                            <tr>
                                                                <td><span class="txt_align type_btn">쇼핑 물품 공급사
                                                                    </span></td>
                                                                <td>쇼핑에서 상품 구매 시 청약의사의 확인, 거래 이행, 배송, 고객상담, AS등 불만 처리
                                                                </td>
                                                                <td>성명, 아이디, 전화번호, 휴대폰번호, 이메일, 개인통관고유부호(입력 시), 영문성명 및
                                                                    영문주소(입력
                                                                    시), ※ 구매자와 수취인이 다를 경우에는 수취인의 정보(아이디, 이메일 제외)가 제공될 수
                                                                    있습니다.</td>
                                                                <td>배송완료 후 3개월 까지</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <br>
                                                    <ol class="list_number">
                                                        <li>선택하신 상품(서비스)에 따라 제3자에 제공되는 개인정보 항목은 다르며, 이용목적에 맞는 최소한의 정보만을
                                                            제공하고 있습니다.</li>
                                                        <li>제3자 제공 업무 발생 시, 필요시점에 이용자에게 별도로 알리고 동의 받는 절차가 진행됩니다.</li>
                                                        <li>제3자 제공 동의를 거부하실 수 있으며, 이 경우 해당 서비스 이용이 제한될 수 있습니다.</li>
                                                    </ol>
                                                    <h5 class="tit_main_txt">6. 개인정보의 처리 위탁</h5>
                                                    <ol class="list_circle">
                                                        <li><span>①</span> 회사는 서비스 제공에 있어 필요한 업무 중 일부를 아래와 같이 개인정보 처리
                                                            업무를 외부업체에 위탁하고 있습니다. 회사는 개인정보 처리 업무 위탁 시 관계 법령에 따라 개인정보가
                                                            안전하게 관리될 수
                                                            있도록 외부업체와의 계약에 필요한 사항을 규정하고 있으며, 위탁 처리하는 정보는 필요한 최소한의 정보만을
                                                            제공합니다.
                                                            <table class="tbl_vertical">
                                                                <colgroup>
                                                                    <col style="width: 33.3%">
                                                                    <col style="width: 33.3%">
                                                                    <col>
                                                                </colgroup>
                                                                <thead>
                                                                    <tr>
                                                                        <th scope="col" class="txt_center">위탁받는 자(수탁업체)
                                                                        </th>
                                                                        <th scope="col" class="txt_center">위탁업무의 목적(수탁업무
                                                                            내용)</th>
                                                                        <th scope="col" class="txt_center">개인정보의 보유 및
                                                                            이용기간</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td><span class="txt_align type_btn">대리점
                                                                            </span></td>
                                                                        <td>여행상품 예약, 상담, 결제 안내</td>
                                                                        <td rowspan="8">위탁 목적이 달성 될 때까지</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>㈜LG유플러스, ㈜케이지이니시스</td>
                                                                        <td>결제처리 서비스</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>에스씨아이평가정보㈜,<br>한국모바일인증㈜
                                                                        </td>
                                                                        <td>아이핀(I-PIN)인증, 휴대전화 본인인증</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>㈜한진택배</td>
                                                                        <td>- 자유 여행객 서류 및 화물 발송 (항공권, 바우처, 여행자 계약서
                                                                            등)<br>- 경품
                                                                            발송
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>즐거운여행</td>
                                                                        <td>공항 송객 서비스</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>㈜에다스, 행남HR</td>
                                                                        <td>허니문 여행 사은품 발송</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>㈜즐거운, ㈜원큐브마케팅,<br>㈜조선일보사, ㈜페이투스
                                                                        </td>
                                                                        <td>이벤트 당첨자 사은품 전달</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>㈜마이비자코리아, ㈜인스밸리, ㈜와이드모바일, ㈜무브, ㈜엔에이치엔위투,
                                                                            ㈜와그, ㈜미리디,
                                                                            ㈜이브릿지, ㈜케이밴코리아, ㈜아이트립, ㈜플래닛티, ㈜네이처모빌리티,
                                                                            ㈜스마일캣, ㈜동신항운</td>
                                                                        <td>상품 예약, 상담, 결제</td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </li>
                                                        <li><span>②</span> 개인정보 처리위탁 중 국외법인에서 처리하는 위탁업무는 아래와 같습니다.
                                                            <table class="tbl_basic">
                                                                <colgroup>
                                                                    <col style="width: 33.3%">
                                                                    <col style="width: 33.3%">
                                                                    <col>
                                                                </colgroup>
                                                                <tbody>
                                                                    <tr>
                                                                        <th scope="row">수탁업체</th>
                                                                        <td>애피어 (Appier Pte. Ltd.)</td>
                                                                        <td>인포빕 (Infobip LLC)</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th scope="row">수탁업체의 위치</th>
                                                                        <td>싱가포르 (8 Marina View #13-01A Asia Square
                                                                            Tower 1
                                                                            Singapore 018960)</td>
                                                                        <td>홍콩 데이터센터(Hong Kong Data Center)</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th scope="row">위탁 일시 및 방법</th>
                                                                        <td>서비스 이용 시점에 암호화 된 네트워크를 통한 원격지 전송</td>
                                                                        <td>서비스 이용 시점에 암호화 된 네트워크를 통한 원격지 전송</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th scope="row">정보관리책임자 연락처</th>
                                                                        <td>privacy@appier.com</td>
                                                                        <td>data-protection-officer@infobip.com</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th scope="row">위탁하는 개인정보 항목</th>
                                                                        <td>성명(국문/영문), 성별, 생년월일, 내/외국인 여부, 휴대전화번호,
                                                                            이메일주소, OneTrillion 포인트
                                                                            정보</td>
                                                                        <td>성명(국문/영문), 성별, 생년월일, 내/외국인 여부, 휴대전화번호,
                                                                            OneTrillion 포인트 정보</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th scope="row">위탁업무 내용</th>
                                                                        <td>앱푸시, 웹푸시, 이메일, SMS/LMS, 카카오 친구톡, 알림톡을 통한 마케팅
                                                                            및 서비스 안내,
                                                                            OneTrillion 할인쿠폰 정보</td>
                                                                        <td>SMS/LMS 카카오 친구톡, 알림톡을 통한 마케팅 및 서비스 안내,
                                                                            OneTrillion 할인쿠폰 정보</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th scope="row">개인정보의 보유 및 이용기간</th>
                                                                        <td>회원 탈퇴 시 또는 위탁 계약 종료 시까지</td>
                                                                        <td>회원 탈퇴 시 또는 위탁 계약 종료 시까지</td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </li>
                                                        <li><span>③</span> 회사는 위탁계약 체결시 개인정보의 안전한 관리를 위해 수탁자가 준수하여야 할
                                                            사항을 계약서 등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다.</li>
                                                        <li><span>④</span> 위탁업무의 내용이나 수탁자가 변경될 경우에는 지체없이 본 개인정보 처리방침을
                                                            통하여 공개하도록 하겠습니다.</li>
                                                    </ol>
                                                    <h5 class="tit_main_txt">7. 개인정보 파기절차 및 방법</h5>
                                                    <ol class="list_circle">
                                                        <li><span>①</span> 이용자가 동의하신 내용을 언제든지 철회하거나, 개인정보 삭제 및 처리정지를
                                                            요청할 수 있습니다. 회원은 「마이페이지」 메뉴에서 "회원탈퇴" 를 클릭함으로써 회원 탈퇴를 요청할 수
                                                            있으며, 직접
                                                            개인정보 보호책임자에게 서면, 전화, E-mail등으로 연락하시면 본인확인 절차를 거쳐 즉시 회원탈퇴를 위해
                                                            필요한
                                                            조치를 하겠습니다.</li>
                                                        <li><span>②</span> 회사는 개인정보 보유기간의 경과, 처리목적 달성 등 개인정보가 불필요하게 되었을
                                                            때에는 지체없이 해당 개인정보를 파기합니다.</li>
                                                        <li><span>③</span> 정보주체로부터 동의 받은 개인정보 보유기간이 경과하거나 처리목적이 달성되었음에도
                                                            불구하고 다른 법령에 따라 개인정보를 계속 보존하여야 하는 경우에는, 해당 개인정보를 별도의
                                                            데이터베이스(DB)로
                                                            옮기거나 보관장소를 달리하여 보존합니다.</li>
                                                        <li><span>④</span> 개인정보 파기의 절차 및 방법은 다음과 같습니다.
                                                            <ol class="list_number">
                                                                <li>파기절차
                                                                    <ul class="list_nostyle">
                                                                        <li>가. 회사는 파기 사유가 발생한 개인정보를 선정하고, 회사의 개인정보
                                                                            보호책임자의 승인을 받아
                                                                            개인정보를 파기합니다.</li>
                                                                    </ul>
                                                                </li>
                                                                <li>파기방법
                                                                    <ul class="list_nostyle">
                                                                        <li>가. 회사는 전자적 파일 형태로 기록/저장된 개인정보는 기록을 재생할 수 없도록
                                                                            로우레밸포멧(Low
                                                                            Level Format) 등의 방법을 이용하여 파기하며, 종이 문서에
                                                                            기록/저장된 개인정보는 분쇄기로 분쇄하거나
                                                                            소각하여 파기합니다.</li>
                                                                    </ul>
                                                                </li>
                                                            </ol>
                                                        </li>
                                                        <li><span>⑤</span> 수집목적 또는 제공받은 목적이 달성된 경우에도 전자상거래법 등 법령의 규정에
                                                            의하여 보존할 필요성이 있는 경우에는 회원의 개인정보를 보유할 수 있습니다.</li>
                                                    </ol>
                                                    <h5 class="tit_main_txt">8. 개인정보의 기술적/관리적 보호 대책</h5>
                                                    <ol class="list_circle">
                                                        <li><span>①</span> 기술적 대책
                                                            <ol class="list_number">
                                                                <li>회사는 이용자의 개인정보를 처리함에 있어 개인정보가 분실, 도난, 유출, 위조•변조 또는
                                                                    훼손되지
                                                                    않도록 안전성 확보를 위하여 다음과 같은 기술적 대책을 강구하고 있습니다.
                                                                    <ul class="list_nostyle">
                                                                        <li>가. 이용자의 개인정보는 비밀번호에 의해 보호되며 파일 및 전송데이터를
                                                                            암호화하거나 파일
                                                                            잠금기능(Lock)을 사용하여 중요한 데이터는 별도의 보안기능을 통해 보호되고
                                                                            있습니다.</li>
                                                                        <li>나. 회사는 백신프로그램을 이용하여 악성코드에 의한 피해를 방지하기 위한 조치를
                                                                            취하고 있습니다.
                                                                            백신프로그램은 주기적으로 업데이트되며 갑작스런 악성코드가 출현할 경우 백신이
                                                                            나오는 즉시 이를 제공함으로써
                                                                            개인정보가 침해되는 것을 방지하고 있습니다.</li>
                                                                        <li>다. 회사는 네트워크 상의 개인정보를 안전하게 전송할 수 있는 보안장치(SSL
                                                                            또는 SET)를
                                                                            채택하고 있습니다.</li>
                                                                        <li>라. 해킹 등 외부침입에 대비하여 네트워크 구간에 침입차단시스템 등을 이용하여
                                                                            보안에 만전을 기하고
                                                                            있습니다.</li>
                                                                    </ul>
                                                                </li>
                                                            </ol>
                                                        </li>
                                                        <li><span>②</span> 관리적 대책
                                                            <ol class="list_number">
                                                                <li>회사는 개인정보 취급자를 최소한의 인원으로 제한하며, 개인정보를 처리하는 직원을 대상으로
                                                                    새로운 보안
                                                                    기술 습득 및 개인정보 보호 의무 등에 관해 정기적인 교육을 실시하고 있습니다.</li>
                                                                <li>전산실 및 자료 보관실 등을 특별 통제구역으로 설정하여 출입을 통제하고 있습니다.</li>
                                                                <li>회사는 이용자 개인의 실수로 일어나는 일들에 대해 책임을 지지 않습니다. 회원 개개인이 본인의
                                                                    개인정보를 보호하기 위해서 자신의 ID 와 비밀번호를 적절하게 관리하고 정기적으로 비밀번호를
                                                                    변경하는 것이
                                                                    바람직합니다.</li>
                                                                <li>그 외 내부 관리자의 실수나 기술관리 상의 사고로 인해 개인정보의 상실, 유출, 위조•변조,
                                                                    훼손이
                                                                    유발될 경우 회사는 즉각 이용자에게 사실을 알리고 적절한 대책과 보상을 강구할 것입니다.
                                                                </li>
                                                            </ol>
                                                        </li>
                                                        <li><span>③</span> 기타 ‘개인정보보호법’, ‘정보통신망 이용 촉진 및 정보보호에 관한 법률’에
                                                            의한 기술적, 관리적 대책을 준수합니다.</li>
                                                    </ol>
                                                    <h5 class="tit_main_txt">9. 쿠키(Cookie) 등 개인정보 자동수집장치의 설치, 운영 및
                                                        거부</h5>
                                                    <ol class="list_circle">
                                                        <li><span>①</span> 회사는 이용자에 대한 정보를 저장하고 수시로 찾아내는 '쿠키(cookie)'를
                                                            사용합니다. 쿠키는 웹사이트가 귀하의 브라우저 (인터넷 익스플로러 등)로 전송하는 소량의 정보입니다.
                                                            이용자가 웹사이트에
                                                            접속을 하면 회사는 이용자의 브라우저에 있는 쿠키의 내용을 읽고, 추가정보를 이용자의 컴퓨터 등에서 찾아
                                                            성명 등의 추가
                                                            입력 없이 서비스를 제공할 수 있습니다.<br> 또한 이용자는 쿠키에 대한 선택권이 있습니다. 웹브라우저
                                                            상단의
                                                            도구 &gt; 인터넷옵션 탭(option tab)에서 모든 쿠키를 다 받아들이거나, 쿠키가 설치될 때 통지를
                                                            보내도록
                                                            하거나, 아니면 모든 쿠키를 거부할 수 있는 선택권을 가질 수 있습니다.</li>
                                                        <li><span>②</span> 회사는 다음과 같은 목적을 위해 쿠키를 통하여 수집된 이용자의 개인정보를
                                                            사용합니다.
                                                            <ol class="list_number">
                                                                <li>회원과 비회원의 접속빈도나 방문시간 등을 분석하고 이용자의 취향과 관심분야를 파악하여
                                                                    타겟(target) 마케팅 및 서비스 개편 등의 척도로 활용합니다.</li>
                                                                <li>여행상품에 대한 정보와 관심있게 둘러본 품목들에 대한 자취를 추적하여 다음 번 쇼핑 때 개인
                                                                    맞춤
                                                                    서비스를 제공하는 데 이용합니다.</li>
                                                                <li>회사가 진행하는 각종 이벤트에서 이용자의 참여 정도 및 방문 횟수를 파악하여 차별적인 응모
                                                                    기회를
                                                                    부여하고 개인의 관심 분야에 따라 차별화된 정보를 제공하기 위한 자료로 이용됩니다.</li>
                                                            </ol>
                                                        </li>
                                                        <li><span>③</span> IP주소 및 접속기기 정보
                                                            <ol class="list_number">
                                                                <li>IP 주소는 인터넷 망 사업자가 인터넷에 접속하는 이용자의 PC 등 기기에 부여하는 온라인
                                                                    주소정보
                                                                    입니다.</li>
                                                                <li>기기정보는 기기의 구동을 위해 사용되는 S/W를 통해 확인 가능한 정보를 일컫습니다.
                                                                    OS(Windows, MAC 등) 접속한 브라우저 종류 등을 수집하며 모바일앱 접속의 경우
                                                                    모바일 플랫폼 관련정보
                                                                    등을 의미합니다.</li>
                                                            </ol>
                                                        </li>
                                                    </ol>
                                                    <h5 class="tit_main_txt">10. 정보주체의 권리 및 그 행사방법에 관한 사항</h5>
                                                    <ol class="list_circle">
                                                        <li><span>①</span> 정보주체는 언제든지 다음 각 호의 개인정보 보호권리를 행사할 수 있습니다.
                                                            <ol class="list_number">
                                                                <li>개인정보 열람요구</li>
                                                                <li>오류 등이 있을 경우 정정 요구</li>
                                                                <li>삭제요구</li>
                                                                <li>처리정지 요구</li>
                                                            </ol>
                                                        </li>
                                                        <li><span>②</span> 제1항에 따른 권리 행사는 회사에 대해 서면, 전화, 전자우편,
                                                            모사전송(FAX) 등을 통하여 하실 수 있으며 회사는 이에 대해 지체 없이 조치하겠습니다.</li>
                                                        <li><span>③</span> 정보주체가 개인정보 오류 등에 대한 정정 또는 삭제를 요구한 경우에는 회사는
                                                            정정 또는 삭제를 완료할 때까지 당해 개인정보를 이용하거나 제공하지 않습니다.</li>
                                                        <li><span>④</span> 정보주체는 정보통신망법, 개인정보보호법 등 법률 및 하위법령을 위반하여 회사가
                                                            처리하고 있는 정보주체 본인이나 타인의 개인정보 및 사생활을 침해하여서는 안됩니다.</li>
                                                        <li><span>⑤</span> 만 14세 이상인 경우에만 회원가입이 가능하며 개인정보의 수집 및 이용에
                                                            법정대리인의 동의가 필요한 만 14세 미만 아동의 개인정보는 원칙적으로 수집하지 않습니다. (만 14세 이상
                                                            회원가입정책
                                                            2020년 xx월 xx일부터 시행)</li>
                                                    </ol>
                                                    <h5 class="tit_main_txt">11. 개인정보보호책임자</h5>
                                                    <ol class="list_circle">
                                                        <li><span>①</span> 회사는 아래와 같이 개인정보 보호책임자를 지정하고 있으며, 개인정보 관련
                                                            문의사항에 신속하고 성실하게 답변해드리고 있습니다.
                                                            <p>【 개인정보 보호책임자(CPO)】</p>
                                                            <ul class="list_nostyle">
                                                                <li>- 이름 : 장진광</li>
                                                                <li>- 직위 : 인턴</li>
                                                                <li>- 연락처 : 010-8494-6992</li>
                                                                <li>- 메일 : <a
                                                                        href="mailto:crinsader@naver.com">crinsader@naver.com</a>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                        <li><span>②</span> 기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기
                                                            바랍니다.
                                                            <ol class="list_number">
                                                                <li>개인정보분쟁조정위원회(<a href="http://www.kopico.go.kr"
                                                                        target="_blank">www.kopico.go.kr</a> /국번없이 118)
                                                                </li>
                                                                <li>개인정보보호위원회(<a href="http://www.pipc.go.kr"
                                                                        target="_blank">www.pipc.go.kr</a>
                                                                    /국번없이 118)
                                                                </li>
                                                                <li>대검찰청 사이버범죄수사단(<a href="http://www.spo.go.kr"
                                                                        target="_blank">www.spo.go.kr</a> /국번없이 1301)
                                                                </li>
                                                                <li>경찰청 사이버안전국(<a href="http://cyberbureau.police.go.kr"
                                                                        target="_blank">cyberbureau.police.go.kr</a>
                                                                    /국번없이 182)
                                                                </li>
                                                            </ol>
                                                        </li>
                                                    </ol>
                                                </div>

                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary"
                                                    data-bs-dismiss="modal">닫기</button>
                                            </div>
                                        </div>
                                    </div>
                                </div><!-- Modal -->
                                <!-- Modal 개인정보 제3자 제공에 대한안내-->
                                <div class="modal fade" id="staticBackdrop2" data-bs-backdrop="static"
                                    data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel"
                                    aria-hidden="true">
                                    <div class="modal-dialog modal-dialog-scrollable modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="staticBackdropLabel">OneTrillion 이용안내</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <div style="width: 100%; margin: auto;">
                                                    <h4 class="tit">제1장 총 칙</h4>
                                                    <h4 class="tit_sub">제1조(목적)</h4>
                                                    <ol class="list_circle">
                                                        <li>① 본 약관은 주식회사 OneTrillion(이하 "회사")이 온라인 사이트(이하 "웹사이트") 및
                                                            응용프로그램(이하
                                                            "어플리케이션")에서 제공하는 서비스(이하 "서비스")를 이용자(이하 "이용자")가 이용함에 있어 "회사"와
                                                            "이용자" 간의
                                                            권리∙ 의무, 이용조건, 기타 책임사항 등에 관한 사항을 규정함을 목적으로 합니다.</li>
                                                    </ol>
                                                    <h4 class="tit_sub">제2조 (용어의 정의)</h4>
                                                    <ol class="list_circle">
                                                        <li>① 이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
                                                            <ol class="list_number">
                                                                <li>웹사이트: 상품 또는 용역의 거래를 위하여 "회사"가 제공하는 실시간 전자상거래 시스템과 그
                                                                    운영을 위한
                                                                    웹사이트로 "회사"의 정책에 따라 추가/변동될 수 있습니다.</li>
                                                                <li>어플리케이션: "이용자"가 단말기에 내려 받아 설치함으로써 단말기 상에서 "회사"가 제공하는
                                                                    서비스를
                                                                    이용할 수 있도록 하는 프로그램입니다.</li>
                                                                <li>이용자: 본 규정에 따라 "회사"가 제공하는 서비스를 이용하는 "회원" 또는 "비회원"을
                                                                    말합니다.</li>
                                                                <li>회원: "회사"에 개인정보를 제공하고 "회원"자격을 부여 받은 자로 "회사"의 정보를
                                                                    지속적으로 제공받으며
                                                                    "회사"에서 제공한 서비스를 이용할 수 있는 자를 말합니다. 만 14세 이상이면 누구나 가입할
                                                                    수 있습니다.</li>
                                                                <li>비회원: "회원"에 가입하지 않고 "회사"가 제공하는 정보 및 서비스를 이용하는 자를
                                                                    말합니다.</li>
                                                                <li>구매자(대표 예약자): 상품 등을 구입할 의사를 밝힌 "회원"또는 "비회원"중에 개인 또는
                                                                    단체를 대표하여
                                                                    구매행위를 한 자를 말합니다.</li>
                                                                <li>판매사(업체): "회사"가 제공하는 중개 판매 서비스를 통하여 상품을 판매할 목적으로 회사와
                                                                    서비스
                                                                    이용계약을 체결한 자를 말합니다.</li>
                                                                <li>개인정보: 성명, 생년월일, 전자우편, 휴대전화번호 등 특정 개인을 식별할 수 있는 정보를
                                                                    말합니다.</li>
                                                                <li>아이디(ID): "회원"의 식별과 서비스 이용을 위해 "회원"이 직접 입력, 설정하여 "회사"
                                                                    시스템에
                                                                    등록한 인식 문자를 말합니다.</li>
                                                                <li>비밀번호(Password): "회원" 본인의 적법한 접근인지를 확인하고 "회원"정보, 거래
                                                                    내역 등의
                                                                    비밀을 보호하기 위해 "회원"이 직접 입력, 설정하여 "회사" 시스템에 등록한 영문, 숫자,
                                                                    특수 문자의 조합을
                                                                    말합니다.</li>
                                                                <li>직접판매 상품: "회사(본사와 지사 포함)"의 "웹사이트" 및 "어플리케이션"을 통하여 직접
                                                                    판매되는
                                                                    것으로서 타 업체와 연동되지 않은 판매 상품을 말합니다.</li>
                                                                <li>중개 판매 상품: "회사(본사와 지사 포함)"의 "웹사이트" 및 "어플리케이션"을 통해
                                                                    "판매사(업체)"의
                                                                    상품과 "구매자"를 중개하는 것으로서, "판매사(업체)"와 연동하여 판매하는 상품을 말합니다.
                                                                </li>
                                                                <li>포인트(P): "회사"가 "회사"의 "직접판매 상품"을 구매한 "회원"에게 구매금액의 일정률을
                                                                    포인트로
                                                                    환산하여 제공하는 서비스를 말하며, "회사"가 정한 방법에 따라 사용할 수 있습니다.
                                                                    "포인트" 세부 방침은 "회사"의
                                                                    정책에 따라 달라질 수 있습니다.</li>
                                                                <li>할인쿠폰(쿠폰): 상품을 구매할 때 쿠폰에 표시된 금액 또는 비율만큼 구매가격을 할인 받을 수
                                                                    있는 회사
                                                                    전용의 온라인/모바일 "할인쿠폰"을 말합니다. "할인쿠폰"의 종류 및 내용은 "회사"의 정책에
                                                                    따라 달라질 수 있습니다.</li>
                                                                <li>고객 리뷰: 상품 구매 후 해당 상품에 대한 종합적인 평가를 기록한 글, 이미지, 영상물,
                                                                    평가점수 등의
                                                                    게시물을 말합니다.</li>
                                                                <li>본인확인: 휴대전화 인증(또는 i-PIN 인증)을 통하여 "회원"이 본인인지 여부를 확인하는
                                                                    것을
                                                                    의미합니다.</li>
                                                                <li>영업일: "회사"가 정상적으로 서비스를 제공한 날로서 토요일, 일요일 및 법정 공휴일을 제외한
                                                                    날을
                                                                    말합니다.</li>
                                                            </ol>
                                                        </li>
                                                        <li>② 제1항에서 정의되지 않은 용어의 의미는 관련 법령 및 일반적인 거래관행을 따릅니다.</li>
                                                    </ol>
                                                    <h4 class="tit_sub">제3조 (약관의 명시, 효력 및 변경)</h4>
                                                    <ol class="list_circle">
                                                        <li>① "회사"는 이 약관의 내용을 "이용자"가 알 수 있도록 "회사"의 서비스가 제공되는 "웹사이트" 및
                                                            "어플리케이션"에 게시합니다.</li>
                                                        <li>② "회사"는 합리적인 사유가 발생하면 약관의 규제에 관한 법률, 전자문서 및 전자거래 기본법, 전자서명법,
                                                            정보통신망 이용촉진 및 정보보호 등에 관한 법률, 전자상거래 등에서의 소비자보호에 관한 법률 등 관련 법령에
                                                            위배되지 않는
                                                            범위 안에서 본 약관을 개정할 수 있습니다.</li>
                                                        <li>③ "회사"가 본 약관을 개정할 때에는 적용일자(이하 "효력발생일") 및 개정사유를 밝혀 그 효력발생일 7일
                                                            전부터 효력발생일 전일까지 "웹사이트" 및 "어플리케이션"에 공지합니다. 단, "이용자"에게 불리하거나
                                                            중대한 사항의 변경은
                                                            효력발생일 30일 전부터 공지하며, 이메일(e-mail), 휴대폰 메시지(SMS) 등으로 "회원"에게 개별
                                                            통지합니다.
                                                            "회원"의 연락처 미 기재, 변경, 오 기입 등으로 개별 통지가 어려울 때에는 "웹사이트" 및
                                                            "어플리케이션"에 공지를 하는
                                                            것을 개별 통지한 것으로 간주합니다.</li>
                                                        <li>④ 이 약관에 동의하는 것은 정기적으로 "회사"가 운영하는 "웹사이트" 및 "어플리케이션"을 방문하여 약관의
                                                            개정사항을 확인하는 것에 동의함을 의미합니다. 개정된 약관에 대한 정보를 알지 못하여 발생하는 "이용자"의
                                                            피해에 대해
                                                            "회사"는 책임을 지지 않습니다.</li>
                                                        <li>⑤ 다음과 같은 경우 "이용자"가 변경된 약관에 동의한 것으로 간주합니다.
                                                            <ol class="list_number">
                                                                <li>개정 약관의 효력발생일 전까지 이에 대한 반대의사를 적절한 방법을 통해 표시하지 않은 경우
                                                                </li>
                                                                <li>개정 약관의 효력발생일 이후에 특별한 의사 표시 없이 "서비스"를 이용할 경우</li>
                                                            </ol>
                                                        </li>
                                                        <li>⑥ "회원"이 개정 약관의 효력발생일 전까지 반대의사를 표시한 경우, "회사"는 개정 약관의 내용을 적용할
                                                            수
                                                            없으며, 이 경우 "회원"은 회원 탈퇴(이용 계약을 해지)를 요청할 수 있습니다.</li>
                                                        <li>⑦ "이용자"는 약관 개정에 대하여 주의의무를 다하여야 하며, 변경된 약관의 부지로 인한 "이용자"의 피해는
                                                            "회사"가 책임지지 않습니다.</li>
                                                    </ol>
                                                    <h4 class="tit_sub">제4조 (약관 외 준칙)</h4>
                                                    <ol class="list_circle">
                                                        <li>① 이 약관에 밝히지 않은 사항은 전자문서 및 전자거래기본법, 전자서명법, 전자상거래 등에서의 소비자보호에
                                                            관한 법률 등 관련 법령의 규정 및 국내∙외 여행표준약관 등에 의합니다.</li>
                                                        <li>② "회사"는 필요하면 특정 서비스에 적용될 사항(이하 "개별약관")을 정하여 이를 "웹사이트 및
                                                            "어플리케이션"을 통하여 공지할 수 있습니다.</li>
                                                        <li>③ "회사"는 필요하면 서비스 이용과 관련된 세부적인 내용(이하 "이용 정책")을 정하여 이를 "웹사이트"
                                                            및
                                                            "어플리케이션" 등을 통하여 공지할 수 있습니다. 개별약관이나 이용 정책의 변경이 있으면 ＂회사"는 변경
                                                            내용의 효력발생일
                                                            7일 전에 "웹사이트" 및 "어플리케이션"를 통하여 해당 변경 사항을 공지합니다.</li>
                                                        <li>④ 개별약관이나 이용 정책의 변경이 있으면 "회사"는 변경 내용의 효력발생일 7일 전에 "웹사이트" 및
                                                            "어플리케이션"를 통하여 해당 변경 사항을 공지합니다.</li>
                                                        <li>⑤ "이용자"는 항상 개별약관이나 이용 정책의 내용에 변경이 있는지 여부를 주시하여야 하며, 변경사항의
                                                            공지가
                                                            있을 때에는 이를 확인하여야 합니다.</li>
                                                    </ol>
                                                    <h3 class="tit">제2장 회원 및 서비스</h3>
                                                    <h4 class="tit_sub">제5조 (서비스 개요 및 변경)</h4>
                                                    <ol class="list_circle">
                                                        <li>① "회사"가 "이용자"에게 제공하는 서비스는 아래와 같습니다.
                                                            <ol class="list_number">
                                                                <li>여행 관련 상품에 대한 판매 서비스</li>
                                                                <li>여행 관련 상품에 대한 통신판매중개 서비스</li>
                                                                <li>구매계약이 체결된 상품의 배송</li>
                                                                <li>"회사"가 운영하는 광고 및 프로모션 서비스</li>
                                                                <li>기타 "회사"가 정하는 서비스</li>
                                                            </ol>
                                                        </li>
                                                        <li>② "회사"는 필요한 경우 전항의 서비스의 내용을 임의로 추가, 조정 등 변경하여 적용할 수 있습니다.
                                                        </li>
                                                    </ol>
                                                    <h4 class="tit_sub">제6조 (서비스 기간 및 중지)</h4>
                                                    <ol class="list_circle">
                                                        <li>① 서비스의 이용은 "회사"의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴 1일 24시간을 원칙으로
                                                            합니다.</li>
                                                        <li>② "회원"의 서비스 기간은 "회사" 의 회원가입 승인일로부터 회원탈퇴 또는 자격상실일까지 입니다.</li>
                                                        <li>③ "회사"는 다음 각 호에 해당하는 경우 서비스 제공을 중지 또는 제한할 수 있습니다.
                                                            <ol class="list_number">
                                                                <li>설비의 보수 등 공사로 인한 부득이한 경우</li>
                                                                <li>전기통신사업법에 규정된 통신사업자가 전기통신서비스를 중지 했을 경우</li>
                                                                <li>국가 비상사태, 정전, 서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 정상적인 서비스
                                                                    이용에 지장이
                                                                    있는 경우</li>
                                                            </ol>
                                                        </li>
                                                    </ol>
                                                    <h4 class="tit_sub">제7조 (회원가입)</h4>
                                                    <ol class="list_circle">
                                                        <li>① "이용자"는 "회사"가 제공하는 회원가입 신청 양식에 따라 정해진 사항을 기재한 후 필수 약관(이용약관,
                                                            개인정보 수집 및 이용)에 동의함으로써 회원가입 신청을 할 수 있습니다.</li>
                                                        <li>② "회사"는 다음의 각 호 중 어느 하나에 해당하는 회원가입 신청에 대해서는 승인을 하지 않거나, 승인을
                                                            철회 또는 취소할 수 있습니다.
                                                            <ol class="list_number">
                                                                <li>필수 회원정보를 기입하지 아니한 경우</li>
                                                                <li>신청한 자가 만14세 미만인 경우</li>
                                                                <li>"이용자"가 본 약관에 의하여 이전에 "회원" 자격을 상실한 적이 있는 경우</li>
                                                                <li>타인의 명의를 도용하거나 등록 내용에 허위, 기재 누락, 오 기입 있을 경우</li>
                                                                <li>"이용자"의 귀책사유로 인하여 승인이 불가능하거나 기타 제반 규정을 위반하여 신청하는 경우
                                                                </li>
                                                            </ol>
                                                        </li>
                                                        <li>③ 회원가입의 성립시기는 "회사"의 이용 승낙 의사가 해당 서비스화면에 게시되거나, 이메일(E-mail)
                                                            또는
                                                            기타 "회사"가 정하는 방법으로 이용신청자에게 도달한 시점으로 합니다.</li>
                                                        <li>④ "회사"는 서비스 관련 설비의 여유가 없거나, 기술상 또는 업무상 문제가 있는 경우에는 승인을 유보할 수
                                                            있습니다.</li>
                                                        <li>⑤ "회사"는 "이용자"의 회원가입 시 필수 항목(아이디, 비밀번호, 휴대폰번호, 이름) 외에 추가적인
                                                            정보(예: 성별, 생년월일, 추천인 아이디 등)를 요청할 수 있으며, 회원가입 신청자는 이러한 추가 정보의
                                                            제공을 거절할 수
                                                            있습니다. 추가적인 정보는 "회원"에게 유익한 정보를 제공하기 위해서만 사용됩니다.</li>
                                                        <li>⑥ "회원"이 가입 화면 내 동의 란에 체크하는 것은 "회사"가 정하는 규정에 합법적으로 동의하는 것으로
                                                            간주됩니다.</li>
                                                        <li>⑦ 회원가입 신청서에 기입한 모든 정보는 실제 정보와 동일한 것으로 간주되며 오 기입, 변경 정보를 수정하지
                                                            않음으로 인해 발생하는 불이익은 "회원"이 부담하게 됩니다.</li>
                                                        <li>⑧ "회사"의 합리적인 판단에 기하여 회원 신청자의 서비스 이용을 거부할 필요가 있다고 인정할 경우
                                                            "회사"는
                                                            회원가입신청을 거부할 수 있습니다.</li>
                                                    </ol>
                                                    <h4 class="tit_sub">제8조(회원 탈퇴 및 자격상실)</h4>
                                                    <ol class="list_circle">
                                                        <li>① "회원"은 "회사"가 정한 방법으로 회원탈퇴를 요청할 수 있으며, "회사"는 요청을 받는 즉시 회원탈퇴를
                                                            처리합니다. 다만, 탈퇴 처리 시점에 "회원"의 구매 계약 절차가 완료되지 않은 경우, "회사"는 해당 구매
                                                            계약이 완료된
                                                            후 탈퇴 처리합니다.</li>
                                                        <li>② "회사"는 "회원"이 다음 각 호에 해당하는 행위를 한 경우 사전통지 없이 회원자격을 제한 및
                                                            정지하거나,
                                                            기간을 정하여 서비스 이용을 중지할 수 있습니다. 각 호에 해당하는 행위를 한 "회원"이 "구매자"일 경우,
                                                            "회사"는 해당
                                                            구매 계약을 취소하거나 해지하는 등의 조치를 할 수 있으며, "회원"은 이와 관련하여 "회사"가 입은 직,
                                                            간접적인 손해에
                                                            대하여 배상 책임을 부담할 수 있습니다.
                                                            <ol class="list_number">
                                                                <li>타인의 회원정보를 도용한 경우</li>
                                                                <li>서비스 운영을 고의로 방해한 경우</li>
                                                                <li>등록한 정보가 실제 정보와 상이한 경우</li>
                                                                <li>공공질서 및 미풍양속에 저해되는 내용을 고의로 유포시킨 경우</li>
                                                                <li>국익 또는 사회적 공익을 저해할 목적으로 서비스를 이용하는 경우</li>
                                                                <li>"회사" 또는 타인의 명예를 손상시키거나 불이익을 주는 행위를 한 경우</li>
                                                                <li>사망한 경우</li>
                                                                <li>이 약관 제24조(회원의 의무, 위반 시 회사의 조치)에 따른 의무를 이행하지 않은 경우
                                                                </li>
                                                                <li>휴면 회원이 된 후 4년이 경과할 때까지 회원 자격을 활성화하지 아니하는 경우</li>
                                                                <li>"회사"의 서비스를 이용하여 구입한 상품의 대금, 기타 서비스 이용에 관련하여 회원이 부담하는
                                                                    채무를
                                                                    기일에 지급하지 않는 경우</li>
                                                                <li>"회사"가 제공하는 포인트 및 쿠폰 등으로 경제적 이익을 편법으로 수취하고, 이 과정에서 회원
                                                                    계정을
                                                                    무단으로 사용하는 등 편법과 불법 행위가 적발될 경우</li>
                                                            </ol>
                                                        </li>
                                                        <li>③ 전항에 의한 회원탈퇴 또는 자격상실 효력발생일은 아래 각 호와 같습니다.
                                                            <ol class="list_number">
                                                                <li>회원탈퇴일 또는 "회사"의 회원자격상실 통보일</li>
                                                                <li>사망으로 인한 자격상실의 경우에는 그 사망일</li>
                                                            </ol>
                                                        </li>
                                                        <li>④ "회사"는 본 조 제2항에 의하여 "회원"에 대한 서비스이용을 제한하고자 하는 경우에는 그 사유, 일시
                                                            및
                                                            기타사항을 정하여 이 약관 에 따라 "회원"에게 통지합니다. 다만, "회사"가 긴급하게 이용을 정지할 필요가
                                                            있다고 판단하는
                                                            경우에는 그러하지 아니합니다.</li>
                                                        <li>⑤ 전항에 의하여 이용제한의 통지를 받은 "회원"은 그 이용제한 통지에 대하여 이의신청을 할 수 있습니다.
                                                        </li>
                                                        <li>⑥ "회원"의 이의신청에 대하여 그 확인기간까지 이용 정지를 일시 연기할 수 있으며, 그 결과를 "회원"에게
                                                            통지합니다.</li>
                                                        <li>⑦ "회원"의 이용정지 사유가 해소 된 경우 그 즉시 이용 정지를 해제 합니다.</li>
                                                    </ol>
                                                    <h4 class="tit_sub">제9조(회원정보의 변경/관리)</h4>
                                                    <ol class="list_circle">
                                                        <li>① "회원"은 "회사"의"웹사이트" 및 "어플리케이션" 내 구비된 개인정보수정 기능을 통해 회원정보를
                                                            열람∙변경∙수정 할 수 있습니다.</li>
                                                        <li>② "회원"은 회원가입 시 기재한 사항이 변경되었을 경우에는 상당한 기간 이내에 그 변경사항을 수정하여야
                                                            합니다. 단, 아이디(ID)는 변경할 수 없는 사항으로 수정할 수 없습니다.</li>
                                                        <li>③ 회원 정보의 관리소홀, 부정사용, 정보를 변경하지 않아 발생하는 손해는 해당 "회원"이 부담하며,
                                                            "회사"는 이에 대해 아무런 책임을 지지 않습니다.</li>
                                                    </ol>
                                                    <h4 class="tit_sub">제10조(회원에 대한 통지)</h4>
                                                    <ol class="list_circle">
                                                        <li>① "회사"가 "회원"에 대하여 통지하는 경우 "회원"이 제출한 이메일 주소 또는 휴대전화로 할 수
                                                            있습니다.
                                                            이 경우 "회원"의 통신 환경 또는 요금 구조 등에 따라 "회원"이 통지에 관한 통신비용(데이터 요금 포함)
                                                            등을 부담할 수
                                                            있습니다.</li>
                                                        <li>② "회사"는 불특정다수의 "이용자"에게 통지하는 경우, "웹사이트" 및 "어플리케이션"초기화면에 7일 이상
                                                            게시함으로써 개별 통지에 갈음할 수 있습니다. 다만, "회원" 본인의 거래와 관련하여 중대한 영향을 미치는
                                                            사항에 대하여는
                                                            개별통지를 합니다.</li>
                                                        <li>③ 전항의 사유로 통지하는 경우, 부득이한 사정에 의해 사전 게시 기간이 단축되거나 생략될 수 있습니다.
                                                        </li>
                                                    </ol>
                                                    <h4 class="tit_sub">제11조(포인트 적립 및 사용)</h4>
                                                    <ol class="list_circle">
                                                        <li>① "회사"의 "직접판매 상품"을 구매한 "회원"은 "회사"가 고지한 기준과 절차에 따라 포인트를 적립 받을
                                                            수 있습니다.</li>
                                                        <li>② 적립된 포인트는 "회사"가 정한 기준에 따라 사용 및 양도할 수 있습니다. 다만, 포인트는 금전적으로
                                                            환산하거나 타인에게 판매될 수 없습니다.</li>
                                                        <li>③ 포인트 세부 방침은"회사"가 "웹사이트" 및 "어플리케이션"에 고지하는 "포인트 규정"에 따릅니다.
                                                            "포인트 규정"안내 페이지에서 포인트 세부 방침을 확인할 수 있으며, 이를 확인하지 않아 생긴 손해에 대해서
                                                            "회사"는
                                                            책임지지 않습니다.</li>
                                                        <li>④ "회원"이 구매를 취소할 경우, 기 지급된 포인트는 회수 처리 됩니다.</li>
                                                        <li>⑤ "회사"는 "회원"이 제8조(회원 탈퇴 및 자격상실) 혹은 제 25조(금지행위)에 해당하는 행위를 한
                                                            경우
                                                            사전통지 없이 포인트 서비스를 제한, 회수, 부정행위에 상응하는 현금 배상 청구 및 필요한 법적 조치를 취할
                                                            수 있습니다.
                                                            "회사"는 이로 인한 손해배상책임을 지지 않습니다.</li>
                                                        <li>⑥ "포인트"의 상세 방침은 별도 고지없이 수시 변경될 수 있습니다. "회원"에게 불리한 내용인 경우에는
                                                            제10조의 규정에 따라 공지 또는 통지하며, 효력발생일 이후 서비스 계속 이용 시 동의한 것으로 간주됩니다.
                                                        </li>
                                                    </ol>
                                                    <h4 class="tit_sub">제12조(포인트 환불 및 이관)</h4>
                                                    <ol class="list_circle">
                                                        <li>① "회원"이 구매를 취소할 경우, "회사"는 해당 구매로 인해 사용된 포인트를 "회원"에게 환불합니다.
                                                            단,
                                                            국내∙외 여행 표준약관 또는 특별약관에 따라 별도의 취소위약금이 부가될 경우 "포인트" 환불 금액은 없거나
                                                            달라질 수
                                                            있습니다.</li>
                                                        <li>② 전항의 경우 환불 완료 시까지 소요시간이 발생할 수 있으며 환불 된 포인트는 환불 된 날로부터 즉시 사용
                                                            가능합니다.</li>
                                                        <li>③ 포인트의 환불은 포인트로만 가능합니다.</li>
                                                    </ol>
                                                    <h4 class="tit_sub">제13조(포인트의 유효기간 및 소멸)</h4>
                                                    <ol class="list_circle">
                                                        <li>① 포인트의 유효기간은 아래 각 호와 같으며 유효기간 경과 시 자동 소멸됩니다. "포인트" 유효기간은
                                                            휴면회원
                                                            전환 여부와 상관없이 적용되며, 유효기간 경과 시 "포인트"는 자동 소멸됩니다.
                                                            <ol class="list_number">
                                                                <li>직접판매 상품 적립 포인트: 적립일로부터 3년간 유효</li>
                                                                <li>프로모션 참여 경품 포인트: 프로모션 별 유효기간 상이</li>
                                                            </ol>
                                                        </li>
                                                        <li>② "회원"의 회원탈퇴 시 탈퇴와 동시에 적립된 포인트는 자동 소멸됩니다.</li>
                                                        <li>③ "회원"자격이 상실된 경우 그 적용일로부터 적립 포인트는 자동 소멸되며 포인트 적립대상에서 제외됩니다.
                                                            단, "회사"가 정하는 바에 따라 별도의 소진 기간이 적용될 수 있습니다.</li>
                                                        <li>④ "회원"의 부당행위에 의한 적립 포인트는 회수됩니다.</li>
                                                        <li>⑤ 포인트의 유효기간은 "회원"이 "웹사이트" 및 "어플리케이션"에서 직접 확인하여야 하며 포인트의 유효기간
                                                            만료 도래 시 "회사"는 유효기간 만료 30일 이전 잔여 포인트와 유효기간을 제10조 2항에서 정한 방법에
                                                            따라 통지합니다.</li>
                                                    </ol>
                                                    <h4 class="tit_sub">제14조(포인트 정책의 변경 및 서비스 종료)</h4>
                                                    <ol class="list_circle">
                                                        <li>① 포인트 서비스가 종료되는 경우, "회사"는 서비스의 종료일로부터 최소 30일 전에 안내 드립니다.
                                                        </li>
                                                        <li>② "회원"은 전 항의 통지가 있은 날로부터 서비스 종료일까지 적립된 포인트를 사용하여야 하며 서비스
                                                            종료일까지 사용하지 않은 포인트는 자동 소멸 됩니다.</li>
                                                    </ol>
                                                    <h4 class="tit_sub">제15조 (할인쿠폰)</h4>
                                                    <ol class="list_circle">
                                                        <li>① "회사"는 "회사"에서 정한 정책에 따라 "회원"에게 "할인쿠폰"을 제공할 수 있습니다.</li>
                                                        <li>② "할인쿠폰"에 대한 세부 방침은 "회사"가 "웹사이트" 및 "어플리케이션"에 고지하는 "할인쿠폰" 상세
                                                            규정에 따릅니다. 이를 확인하지 않아 생긴 손해에 대해서 "회사"는 책임지지 않습니다.</li>
                                                        <li>③ "할인쿠폰"은 이용 가능 품목, 이용가능 구매금액, 총 할인 금액 제한, 이용가능 결제수단 등의 조건이
                                                            상이하게 설정될 수 있으며 이를 사전에 확인하지 않아 발생한 "구매자"의 손해나 손실에 대해 "회사"는
                                                            책임지지 않습니다.</li>
                                                        <li>④ "할인쿠폰" 유효기간이 경과한 후에는 해당 "할인쿠폰"을 제공받거나 사용할 수 없습니다.</li>
                                                        <li>⑤ "할인쿠폰"은 "회사"가 별도로 명시한 경우를 제외하고는 "회원"이 임의로 타인에게 매매 또는 양도할 수
                                                            없습니다. 만약 "회원"이 이를 위반한 경우에는 "회사"는 쿠폰을 즉시 회수(쿠폰 소멸 등)하거나 "회사"가
                                                            입은 손해에
                                                            대해 "회원에게" 배상을 청구하거나 "회원"의 회원자격을 제한 또는 상실시키는 등의 조치를 취할 수
                                                            있습니다.</li>
                                                        <li>⑥ 각 "할인쿠폰"의 개별 정책이 "할인쿠폰" 상세 규정 외 상세페이지(이벤트페이지 등 포함) 내 별도 명시
                                                            되어있는 경우 해당 "할인쿠폰"의 상세페이지의 정책이 우선 적용됩니다.</li>
                                                    </ol>
                                                    <h4 class="tit_sub">제16조(구매신청 및 계약의 성립)</h4>
                                                    <ol class="list_circle">
                                                        <li>① "이용자"가 상품의 판매 조건에 응하여 구매를 신청하고 "회사"가 그에 대하여 승낙의 의사표시를 함으로써
                                                            구매 계약이 체결됩니다.</li>
                                                        <li>② "회사"는 전항의 구매 신청에 대하여 다음 각 호에 해당하는 경우 승낙을 거절할 수 있습니다.
                                                            <ol class="list_number">
                                                                <li>신청 내용 상 허위·기재 누락·오기가 있는 경우</li>
                                                                <li>구매신청 내용이 현행법령이나 "회사"의 규정에 부적합한 경우</li>
                                                                <li>미성년자가 법정대리인의 동의 없이 상품을 구매하는 경우</li>
                                                            </ol>
                                                        </li>
                                                        <li>③ "이용자"는 구매한 상품에 대하여 구매를 취소하거나 변경을 요청할 수 있으며, 이 경우 별도의
                                                            취소위약금이
                                                            발생할 수 있습니다.</li>
                                                        <li>④ "회사"는 "이용자"가 구매 대금을 결제할 수 있는 방법을 제공합니다.</li>
                                                        <li>⑤ 구매 계약을 체결한 "이용자"는 구매 대금의 결제와 관련하여 자신이 입력한 정보에 대한 책임 및 불이익을
                                                            전적으로 부담하여야 합니다.</li>
                                                        <li>⑥ 구매 계약을 체결한 "이용자"가 계약을 체결한 후 일정 기간 내에 대금을 결제하지 않을 경우 "회사"는
                                                            "이용자"의 동의 없이 그 계약을 취소할 수 있습니다.</li>
                                                        <li>⑦ "회사"는 "이용자"가 구매 계약 체결 내용을 확인할 수 있도록 조치하며, 구매계약의 취소 방법 및
                                                            절차를
                                                            안내합니다.</li>
                                                        <li>⑧ "회사"는 구매계약에 대하여 다음 각 호 중 하나를 확인할 수 있으며, 이에 대한 확인이 완료될 때까지
                                                            거래 진행을 중지하거나, 확인이 불가한 거래는 취소할 수 있습니다.
                                                            <ol class="list_number">
                                                                <li>"이용자"가 대금 결제 시 사용한 결제 수단에 대한 정당한 사용권한 보유하였는지 여부</li>
                                                                <li>"이용자"가 구매 자격을 충족하는지 여부</li>
                                                            </ol>
                                                        </li>
                                                    </ol>
                                                    <h4 class="tit_sub">제17조(결제방법)</h4>
                                                    <ol class="list_circle">
                                                        <li>① "회사" 의 "웹사이트" 및 "어플리케이션"에서 판매되는 상품을 구매한 "이용자"는 "회사"가 정한 다음
                                                            각 호의 방식 중 하나를 선택하여 대금을 결제할 수 있습니다. 단, 제3호의 포인트 결제는 다른 결제 방식과
                                                            함께 사용할 수
                                                            있습니다.
                                                            <ol class="list_number">
                                                                <li>선불카드, 직불카드, 신용카드 등의 카드 결제</li>
                                                                <li>계좌이체(온라인 무통장입금, 가상계좌)</li>
                                                                <li>포인트 결제</li>
                                                                <li>상품권 결제</li>
                                                                <li>기타 "회사"가 정한 결제방식</li>
                                                            </ol>
                                                        </li>
                                                    </ol>
                                                    <h4 class="tit_sub">제18조 (배송 및 반품)</h4>
                                                    <ol class="list_circle">
                                                        <li>① "회사"는 "구매자"와 상품의 공급시기에 관하여 별도의 약정이 없는 이상, "구매자"가 청약을 한 날부터
                                                            7일 이내에 상품을 배송할 수 있도록 주문제작, 포장 등 기타의 필요한 조치를 취합니다. 이때 "회사"는
                                                            "구매자"가 상품의
                                                            공급 절차 및 진행사항을 확인할 수 있도록 적절한 조치를 합니다. 여행상품과 같은 용역의 공급은 해당 용역에
                                                            적용되는 별도의
                                                            약관을 교부하고 해당 서비스가 차질 없이 진행되도록 일련의 조치를 하여야 합니다.</li>
                                                        <li>② "회사"는 "구매자"가 구매한 상품에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을
                                                            명시합니다. 만약 "회사"가 약정 배송기간을 초과한 경우에는 그로 인한 "이용자"의 손해를 배상하여야
                                                            합니다. 다만,
                                                            "회사"가 고의 및 과실이 없음을 입증한 경우에는 그러하지 아니합니다. 여행상품과 같은 용역의 공급은 예약한
                                                            상품에 대한
                                                            별도의 "여행자 계약서" 등을 교부하여 "구매자"가 상기 상품의 구매와 이용에 대해 숙지할 수 있도록 하여야
                                                            합니다.</li>
                                                        <li>③ 상품의 반품을 신청한 "구매자"는 상품을 즉시 반환하여야 하며, "구매자"가 "회사"에게 해당 상품을
                                                            반환하지 않은 경우에는 상품의 반품 신청 의사를 철회한 것으로 간주합니다.</li>
                                                        <li>④ 상품의 반품에 소요되는 비용은 반품에 대하여 귀책사유 있는 자가 부담합니다. (예: 단순변심의 경우
                                                            구매자
                                                            부담, 상품 하자의 경우 "회사" 혹은 "판매사"부담 등)</li>
                                                        <li>⑤ "구매자"가 교환을 신청한 상품이 품절되어 교환이 불가한 경우에는 반품 절차에 준하여 상품의 반환 및
                                                            환불을 진행합니다.</li>
                                                        <li>⑥ "구매자"가 상품을 구매 시 지정한 이용기간이 경과한 상품은 반품, 교환이 불가능합니다.</li>
                                                        <li>⑦ 각 상품의 상세페이지 내 별도 규정이 있는 경우 해당 상품의 상세페이지의 정책이 우선 적용됩니다.
                                                        </li>
                                                    </ol>
                                                    <h4 class="tit_sub">제19조(수신확인통지, 구매신청 변경 및 취소)</h4>
                                                    <ol class="list_circle">
                                                        <li>① "회사"는 "이용자"의 구매신청이 있는 경우 "이용자"에게 수신확인통지를 하며, 수신확인통지를 받은
                                                            "이용자"는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를
                                                            요청할 수 있습니다.
                                                            "회사"는 서비스 제공 전에 "이용자"의 요청이 있는 경우에는 지체 없이 그 요청에 따라 처리하여야 합니다.
                                                            다만, 이미
                                                            대금을 지불한 경우에는 제21조의 청약철회 등에 관한 규정에 따릅니다.</li>
                                                        <li>② "구매자"가 상품을 구매 시 지정한 이용기간이 경과한 상품은 구매 취소가 불가능합니다.</li>
                                                        <li>③ 취소 시 취소 위약금이 적용되며, 취소 요청 접수 기준은 당사운영시간 내 접수된 시간을 기준으로
                                                            적용됩니다.</li>
                                                        <li>④ 각 상품의 상세페이지 내 별도 규정이 있는 경우 해당 상품의 상세페이지의 정책이 우선 적용됩니다.
                                                        </li>
                                                        <li>⑤ 미성년자 또는 미성년자의 법정대리인은 민법의 규정에 의하여 미성년자의 구매를 취소할 수 있으나,
                                                            미성년자가
                                                            속임수로써 "회사"로 하여금 법정대리인의 동의가 있는 것으로 믿게 한 경우에는 그 취소가 제한됩니다.
                                                        </li>
                                                    </ol>
                                                    <h4 class="tit_sub">제20조(환불)</h4>
                                                    <ol class="list_circle">
                                                        <li>① "회사"는 "이용자"가 구매 신청한 상품이 품절 등의 사유로 인도 또는 제공을 할 수 없을 때에는 지체
                                                            없이 그 사유를 "이용자"에게 통지하고 사전에 상품의 대금을 받은 경우에는 대금을 받은 날부터 3영업일
                                                            이내에 환불 및
                                                            환불에 필요한 조치를 취합니다.</li>
                                                        <li>② "구매자"가 반품한 상품은 "회사"가 수령 및 확인한 이후 환불처리가 됩니다.</li>
                                                        <li>③ 여행상품의 경우 상품의 특성 상 "이용자"가 출발일 전 모든 예약이 완료된 이후 계약을 해지할 경우
                                                            국내∙외 여행표준약관 및 소비자 피해보상규정에 의거 손해 배상액을 공제하고 환불하며, 기타 상품의 이용
                                                            계약체결 시 계약한
                                                            특별약관 등의 규정에 의거한 상품의 취소 및 환불 위약금을 공제 후 환불합니다.</li>
                                                        <li>④ "구매자"가 상품을 구매 시 지정한 이용기간이 경과한 상품은 환불이 불가능합니다.</li>
                                                        <li>⑤ 각 상품의 상세페이지 내 별도 규정이 있는 경우 각 상품의 상세페이지의 정책이 우선 적용됩니다.</li>
                                                    </ol>
                                                    <h4 class="tit_sub">제21조 (청약철회 등)</h4>
                                                    <ol class="list_circle">
                                                        <li>① "회사"와 구매 계약을 체결한 "구매자"는 수신확인의 통지를 받은 날부터 7일 이내에는 청약의 철회를 할
                                                            수 있습니다. 단, 국내∙외 여행 표준약관 또는 특별약관에 따라 별도의 취소위약금이 부가될 수 있습니다.
                                                        </li>
                                                        <li>② "구매자"는 상품을 배송 받은 경우 다음 각호의 어느 하나에 해당하는 경우에는 청약 철회를 할 수
                                                            없습니다.
                                                            <ol class="list_number">
                                                                <li>구매자에게 책임 있는 사유로 상품이 멸실 또는 훼손된 경우. (다만, 상품의 내용을 확인하기
                                                                    위하여 포장
                                                                    등을 훼손한 경우에는 청약철회를 할 수 있습니다)</li>
                                                                <li>상품의 일부가 누락된 경우 (예: 사은품)</li>
                                                                <li>구매자의 사용 또는 일부 소비에 의하여 상품의 가치가 현저히 감소한 경우</li>
                                                                <li>시간의 경과에 의하여 재판매가 곤란할 정도로 상품의 가치가 현저히 감소한 경우</li>
                                                                <li>복제가 가능한 상품의 포장을 훼손한 경우 (예: 서적, CD, 지도 등)</li>
                                                            </ol>
                                                        </li>
                                                        <li>③ 제2항 2호, 3호 내지 제5호의 경우에 "회사"가 사전에 청약철회 등이 제한되는 사실을 소비자가 쉽게
                                                            알
                                                            수 있는 곳에 명기하거나 시용 상품을 제공하는 등의 조치를 하지 않았다면 "구매자"의 청약철회 등이 제한되지
                                                            않습니다.</li>
                                                        <li>④ 구매자는 제1항 및 제2항의 규정에 불구하고 상품의 내용이 상세페이지내용과 다르거나 계약 내용과 다르게
                                                            이행된 때에는 당해 상품을 공급받은 날부터 3개월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일
                                                            이내에 청약철회
                                                            등을 할 수 있습니다.</li>
                                                    </ol>
                                                    <h4 class="tit_sub">제22조(청약철회 등의 효과)</h4>
                                                    <ol class="list_circle">
                                                        <li>① "회사"는 "이용자"로부터 상품을 반환받은 경우 3영업일 이내에 이미 지급받은 상품의 대금을 환급합니다.
                                                            이 경우 "회사"가 "이용자"에게 상품의 환급을 지연한때에는 그 지연기간에 대하여 「전자상거래 등에서의
                                                            소비자보호에 관한
                                                            법률 시행령」제21조의3에서 정하는 지연이자율을 곱하여 산정한 지연이자를 지급합니다.</li>
                                                        <li>② "회사"는 위 대금을 환급함에 있어서 "이용자"가 신용카드 또는 전자화폐 등의 결제수단으로 상품의 대금을
                                                            지급한 때에는 지체 없이 당해 결제수단을 제공한 사업자로 하여금 상품의 대금의 청구를 정지 또는 취소하도록
                                                            요청합니다.</li>
                                                        <li>③ 청약철회 등의 경우 공급받은 상품의 반환에 필요한 비용은 "이용자"가 부담합니다. "회사"는
                                                            "이용자"에게
                                                            청약철회 등을 이유로 위약금 또는 손해배상을 청구하지 않습니다. 다만 상품의 내용이 표시·광고 내용과
                                                            다르거나 계약내용과
                                                            다르게 이행되어 청약철회 등을 하는 경우 상품의 반환에 필요한 비용은 "회사"가 부담합니다.</li>
                                                        <li>④ "이용자"가 상품을 제공받을 때 발송비를 부담한 경우에 "회사"는 청약철회 시 그 비용을 누가
                                                            부담하는지를
                                                            "이용자"가 알기 쉽도록 명확하게 표시합니다.</li>
                                                    </ol>
                                                    <h3 class="tit">제3장 책임과 의무</h3>
                                                    <h4 class="tit_sub">제23조(회사의 의무)</h4>
                                                    <ol class="list_circle">
                                                        <li>① "회사"는 법령과 이 약관이 금지한 행위를 하지 아니하며, 이 약관이 정하는 바에 따라 지속적이고,
                                                            안정적인 서비스를 제공하는 데 최선을 다하도록 하겠습니다.</li>
                                                        <li>② "회사"는 "웹사이트" 및 "어플리케이션"을 통해 제공하는 "상품 등"에 대하여 표시·광고의 공정화에
                                                            관한
                                                            법률에서 정한 부당한 표시, 광고행위를 하지 않겠습니다.</li>
                                                        <li>③ "회사"는 "웹사이트" 및 "어플리케이션"에 대한 공정하고 건전한 운영을 통하여 전자상거래질서를
                                                            유지하고,
                                                            지속적인 연구·개발을 통하여 양질의 서비스를 제공하도록 노력하겠습니다.</li>
                                                    </ol>
                                                    <h4 class="tit_sub">제24조(회원의 의무, 위반 시 회사의 조치)</h4>
                                                    <ol class="list_circle">
                                                        <li>① "회원"은 관련 법령, "회사"가 규정에서 정한 사항 및 주의사항으로서 고지한 내용을 준수하여야 하며,
                                                            "회사"의 정상적 업무를 방해하는 행위를 하여서는 아니 됩니다.</li>
                                                        <li>② "회원"은 자신의 아이디(ID) 및 비밀번호에 대한 관리 책임을 가지며, 어떠한 경우에도 자신의
                                                            아이디(ID) 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다."회사"의 귀책사유 없이 발생한 ID 및
                                                            비밀번호의 유출,
                                                            양도, 대여로 인하여 발생한 손해에 대하여, "회사"는 아무런 책임을 지지 않습니다.</li>
                                                        <li>③ "회원"은 자신의 아이디(ID) 및 비밀번호를 도난 당하거나 제3자가 사용하고 있음을 인지한 경우에는
                                                            바로
                                                            "회사"에 통보하고 "회사"의 안내가 있는 경우에는 그에 따라야 합니다.</li>
                                                        <li>④ "회원"은 가입신청 시 사실에 입각하여 정직하고 성실하게 가입신청서를 작성하여야 하며, 기재한 사항에
                                                            대한
                                                            변경사유가 발생하는 경우 사실에 맞게 변경해야 합니다. 만일 변경사유가 발생하였음에도 불구하고 변경하지 않아
                                                            발생하게 되는
                                                            모든 문제에 대해서는 "회원"이 책임을 부담하게 됩니다.</li>
                                                        <li>⑤ "회원"은 서비스의 이용과정에서 습득한 정보를 "회사"는 사전동의 없이 임의로 복사·복제·변경해서는 아니
                                                            되며, 기타 영리목적으로 활용하여서도 안 됩니다.</li>
                                                        <li>⑥ "회원"은 전항의 행위 외에도 다음 각 호의 행위를 하여서는 안 됩니다.
                                                            <ol class="list_number">
                                                                <li>타 "회원" 또는 제3자를 비방하여 명예를 손상시키는 경우</li>
                                                                <li>타 "회원"의 계정 및 개인정보를 부정하게 사용하는 경우</li>
                                                                <li>제3자의 저작권 등 기타 권리를 침해하는 경우</li>
                                                                <li>공공질서 및 미풍양속에 위반되는 내용을 타인에게 유포하는 경우</li>
                                                                <li>범죄와 결부되거나 주제에 관계없는 광고성 내용을 기재한 경우</li>
                                                                <li>포인트의 부정 적립·사용 등 포인트 서비스를 부정한 방법·목적으로 이용한 경우</li>
                                                                <li>기타 관계법령에 위반 된다고 판단되는 경우</li>
                                                            </ol>
                                                        </li>
                                                        <li>⑦ "회사"는 본 조에 해당하는 행위를 한 "회원"에게 사전통지 없이 이용을 제한할 수 있습니다.</li>
                                                    </ol>
                                                    <h4 class="tit_sub">제25조(금지행위)</h4>
                                                    <ol class="list_circle">
                                                        <li>① "이용자"는 "회사"가 제공하는 서비스를 비정상적으로 이용하거나 부정한 방법으로 "회사"의 시스템에
                                                            접근하는 등 "회사"의 업무를 방해하는 행위를 하여서는 안 됩니다.</li>
                                                        <li>② "이용자"는 타인의 명의나 카드 정보, 계좌정보 등을 도용하여 "회사"가 제공하는 서비스를 이용하는
                                                            행위를
                                                            하여서는 안 됩니다.</li>
                                                        <li>③ "이용자"가 본 조를 위반한 경우, "회사"는 해당 "이용자"에 대하여 구매계약을 취소하거나 해지하는
                                                            등의
                                                            조치를 취할 수 있으며, "이용자"는 이와 관련하여 "회사"가 입은 모든 직, 간접적인 손해에 대하여 배상
                                                            책임을
                                                            부담합니다.</li>
                                                    </ol>
                                                    <h4 class="tit_sub">제26조(지식재산권의 귀속 및 이용)</h4>
                                                    <ol class="list_circle">
                                                        <li>① "회사"가 작성한 저작물에 대한 지식재산권은 "회사"에 귀속됩니다.</li>
                                                        <li>② "회원"은 "웹사이트" 및 "어플리케이션"을 통하여 얻은 정보 중 "회사"에게 지적재산권이 귀속된 정보를
                                                            "회사"의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나
                                                            제3자에게 이용하게
                                                            하여서는 안됩니다.</li>
                                                        <li>③ "이용자"는 "고객 리뷰"및 사진, 글, 정보, (동)영상, "회사"에 대한 의견이나 제안 등
                                                            콘텐츠(이하
                                                            '게시물')를 "회사"서비스 내에 게시할 수 있으며, 이러한 게시물에 대한 저작권을 포함한 지적재산권은
                                                            "이용자"가 계속하여
                                                            보유합니다.</li>
                                                        <li>④ "이용자"가 "회사"서비스 내에 게시물을 게시하는 경우, 해당 게시물이 "회사’가 제공하는 서비스에
                                                            노출될
                                                            수 있고 이에 필요한 범위 내에서 사용, 저장, 수정, 복제, 공중 송신, 전시, 배포 등의 방식으로 이용할
                                                            수 있도록
                                                            사용을 허락하는 라이선스를 "회사"에게 제공하게 됩니다. 일부 서비스에서는 "이용자"가 제공한 콘텐츠에
                                                            접근하거나 이를 수정
                                                            또는 삭제하는 방법을 제공할 수 있습니다. 또한 "이용자"가 일부 서비스에서는 제공된 콘텐츠에 대한 "회사"
                                                            의 사용 범위를
                                                            제한할 것을 요청할 수 있습니다.</li>
                                                        <li>⑤ "회원"이 이용계약 해지를 한 경우에도 타인에 의해 보관, 담기 등으로 재 게시 되거나 복제된 게시물,
                                                            타인의 게시물과 결합되어 제공되는 게시물, 공용 게시판에 등록된 게시물 등은 삭제되지 않습니다.</li>
                                                        <li>⑥ "회사"는 "이용자"가 게시하거나 등록한 게시물이 다음 각 호에 해당된다고 판단되는 경우에 사전통지 없이
                                                            삭제 또는 임시 조치할 수 있고, 이에 대하여 "회사"는 어떠한 책임도 지지 않습니다. 다만, "회사"가
                                                            모든 게시물을
                                                            검토할 의무가 있는 것은 아니며, 타인이 "이용자"의 권리를 침해하였다면, 고객센터를 통해 게시중단 요청에
                                                            대한 도움을 받을
                                                            수 있습니다.</li>
                                                        <li>⑦ "회사"는 "회원"이 게시하거나 등록한 게시물이 다음 각 호에 해당한다고 판단되는 경우에 사전통지 없이
                                                            삭제 또는 임시 조치할 수 있고, 이에 대하여 "회사"는 어떠한 책임도 지지 않습니다.
                                                            <ol class="list_number">
                                                                <li>다른 회원 또는 제3자를 비방하거나 명예를 손상시키는 내용인 경우</li>
                                                                <li>공공질서 및 미풍양속에 위반되는 내용을 유포하거나 링크시키는 경우</li>
                                                                <li>불법복제 또는 해킹을 조장하는 내용인 경우</li>
                                                                <li>회사로부터 사전 승인 받지 않고 상업광고, 판촉 내용을 게시하는 경우</li>
                                                                <li>개인 간 금전거래를 요하는 경우</li>
                                                                <li>범죄적 행위에 결부된다고 인정되는 경우</li>
                                                                <li>회사의 저작권, 제3자의 저작권 등 기타 권리를 침해하는 내용인 경우</li>
                                                                <li>타인의 계정정보, 성명 등을 무단으로 도용하여 작성한 내용이거나, 타인이 입력한 정보를
                                                                    무단으로 위변조한
                                                                    내용인 경우</li>
                                                                <li>사적인 정치적 판단이나 종교적 견해의 내용으로 회사가 서비스 성격에 부합하지 않는다고 판단하는
                                                                    경우</li>
                                                                <li>동일한 내용을 중복하여 다수 게시하는 등 게시의 목적에 어긋나는 경우</li>
                                                                <li>회사에서 규정한 게시물 원칙에 어긋나거나, 게시물을 작성하는 위치에 부여된 성격에 부합하지
                                                                    않는 경우</li>
                                                                <li>기타 관계법령에 위배된다고 판단되는 경우</li>
                                                            </ol>
                                                        </li>
                                                    </ol>
                                                    <h4 class="tit_sub">제27조 (개인정보의 변경, 수집, 보호)</h4>
                                                    <ol class="list_circle">
                                                        <li>① "회사"는 "이용자"로부터 정보를 수집할 경우 서비스의 제공 및 계약 이행에 필요한 최소한의 정보만을
                                                            수집합니다.</li>
                                                        <li>② "회사"는 서비스 이용 과정에서 "이용자"가 직접 제공한 정보 외에도 개인정보 보호 등 관련 법령에서
                                                            정한
                                                            절차에 따라 그 밖의 정보를 수집 및 이용 또는 제3자에게 제공할 수 있습니다. 이 경우 회사는 관련 법령에
                                                            따라
                                                            회원으로부터 필요한 동의를 받거나 관련 법령에서 정한 절차를 준수합니다. 링크된 사이트 및 서비스를 제공하는
                                                            제3자의
                                                            개인정보 처리에 대해서는 해당 사이트 및 제3자의 개인정보처리방침을 확인할 책임이 "이용자"에게 있으며,
                                                            회사는 이에 대하여
                                                            책임을 부담하지 않습니다.</li>
                                                        <li>③ "회사"는 관련법령이 정하는 바에 따라서 "이용자"의 개인정보를 보호하기 위하여 노력하며, "이용자"의
                                                            개인정보를 보호하기 위한 정책을 수립하고 개인정보보호 책임자를 지정하여 이를 게시합니다.</li>
                                                        <li>④ "이용자"의 개인정보보호는 관련 법령 및 "회사"가 정하는 개인정보처리방침에서 정한 바를 따릅니다.
                                                        </li>
                                                        <li>⑤ "회사"는 "회원"이 선택한 정보유지기간(1년, 3년, 5년, "회원"탈퇴 시까지)에 따라 이용 내역이
                                                            없는 "회원"의 개인정보를 다른 "회원"의 개인정보와 분리하여 휴면회원으로 저장·관리합니다.</li>
                                                    </ol>
                                                    <h4 class="tit_sub">제28조 (통신판매중개 서비스)</h4>
                                                    <ol class="list_circle">
                                                        <li>① "회사"는 통신판매중개자로서 "구매자"와 "판매사" 간의 자유로운 상품의 거래를 위한 시스템 운영 및
                                                            관리
                                                            책임만을 부담하며, "구매자 또는 "판매사"를 대리하지 아니하고, "이용자" 간에 성립된 거래와 관련된
                                                            책임과 "구매자"가
                                                            등록한 정보에 대한 책임은 해당 "구매자"가 직접 부담하여야 합니다.</li>
                                                        <li>② "회사"는 "웹사이트" 및 "어플리케이션"을 통하여 이루어지는 "구매자"와 "판매사" 간의 거래와
                                                            관련하여
                                                            판매 의사 또는 구매 의사의 존부 및 진정성, 등록 상품의 품질, 완전성, 안정성, 적법성 및 타인의 권리에
                                                            대한 비침해성,
                                                            "구매자" 또는 "판매사"가 입력하는 정보 및 그 정보를 통하여 링크된 URL에 게재된 자료의 진실성 또는
                                                            적법성 등 일체를
                                                            보증하지 않습니다. 다만, 등록된 상품 또는 용역 관련된 정보가 법규 위반이나 저작권 침해가 명백한 경우,
                                                            또는 저작권 등
                                                            권리를 침해 받았다고 주장하는 자가 그 침해의 정지ㆍ예방을 요청하는 경우 회사는 당사자간의 분쟁이 해결되어
                                                            권리관계가
                                                            명확해질 때까지 해당 상품에 대한 삭제, 수정 또는 미 노출 처리할 수 있습니다.</li>
                                                        <li>③ "회사"는 "구매자"와 "판매사"간의 거래의 안전성과 신뢰성을 높이는 도구만을 개발하여 제공합니다. 단,
                                                            "회사"의 "직접 판매 상품"의 경우 "구매자"에 대하여 "회사"는 "판매사"의 지위를 갖게 됩니다.
                                                        </li>
                                                    </ol>
                                                    <h4 class="tit_sub">제29조 (연결"회사"와 피 연결"회사" 간의 관계)</h4>
                                                    <ol class="list_circle">
                                                        <li>① 상위 "회사"와 하위 "회사"는 하이퍼링크(예: 하이퍼링크의 대상에는 문자, 그림 및 동화상 등이
                                                            포함)방식 등으로 연결된 경우, 전자를 연결"회사"(웹사이트)라고 하고 후자를 피연결"회사"(웹사이트)라고
                                                            합니다.</li>
                                                        <li>② 연결"회사"는 피연결"회사"가 독자적으로 제공하는 상품에 의하여 "이용자"와 행하는 거래에 대해서 보증
                                                            책임을 지지 않는다는 뜻을 연결"회사"의 초기화면 또는 연결되는 시점에 명시한 경우에는 그 거래에 대한 보증
                                                            책임을 지지
                                                            않습니다.</li>
                                                    </ol>
                                                    <h4 class="tit_sub">제30조 (면책사항)</h4>
                                                    <ol class="list_circle">
                                                        <li>① "회사"는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에
                                                            관한 책임이 면책됩니다.</li>
                                                        <li>② "회사"는 "회원"의 귀책사유로 인한 서비스의 이용장애에 대하여 책임을 지지 않습니다.</li>
                                                        <li>③ "회사"는 "회원"이 서비스를 이용하여 기대하는 수익을 상실한 것에 대하여 책임을 지지 않으며 그 밖에
                                                            서비스를 통하여 얻은 자료로 인한 손해 등에 대하여도 책임을 지지 않습니다.</li>
                                                        <li>④ "회사"는 "회원"이 게재한 게시물(이용후기, 숙소평가 등 포함)의 정확성 등 내용에 대하여는 책임을
                                                            지지
                                                            않습니다.</li>
                                                        <li>⑤ "회사"는 "회원" 상호간 또는 회원과 제3자 상호간에 서비스를 매개로 발생한 분쟁에 대해서는 개입할
                                                            의무가 없으며 이로 인한 손해를 배상할 책임도 없습니다.</li>
                                                        <li>⑥ 중개 판매 상품은 "판매사"의 책임 하에 관리∙운영되고, "회사"는 통신판매중개자로서 서비스 운영 상의
                                                            문제를 제외한 상품의 하자∙부실 등으로 인한 책임은 "판매사"에게 귀속되며 "회사"는 어떠한 책임도 부담하지
                                                            않습니다.
                                                            "구매자"와 "판매사" 사이에 성립된 거래와 관련된 책임 등은 "판매사"와 "구매자"가 직접 부담하여야
                                                            합니다.</li>
                                                        <li>⑦ "회사"는 제3자가 서비스 내 화면 또는 링크된 웹사이트를 통하여 광고한 제품 또는 서비스의 내용과
                                                            품질에
                                                            대하여 감시할 의무가 없으며 그로 인한 어떠한 책임도 지지 아니합니다.</li>
                                                        <li>⑧ "회사"는 "회사" 및 "회사"의 임직원 그리고 "회사" 대리인의 고의 또는 중대한 과실이 없는 한 다음
                                                            각 호의 사항으로부터 발생하는 손해에 대해 책임을 지지 아니합니다.
                                                            <ol class="list_number">
                                                                <li>회원정보 등의 허위 또는 부정확성에 기인하는 손해</li>
                                                                <li>서비스에 대한 접속 및 서비스의 이용과정에서 발생하는 개인적인 손해</li>
                                                                <li>서버에 대한 제3자의 모든 불법적인 접속 또는 서버의 불법적인 이용으로부터 발생하는 손해
                                                                </li>
                                                                <li>서버에 대한 전송 또는 서버로부터의 전송에 대한 제3자의 모든 불법적인 방해 또는
                                                                    중단행위로부터 발생하는
                                                                    손해</li>
                                                                <li>제3자가 서비스를 이용하여 불법적으로 전송, 유포하거나 또는 전송, 유포되도록 한 모든
                                                                    바이러스,
                                                                    스파이웨어 및 기타 악성 프로그램으로 인한 손해</li>
                                                                <li>전송된 데이터의 오류 및 생략, 누락, 파괴 등으로 발생되는 손해</li>
                                                                <li>"회원"간의 "회원" 상태 정보 등록 및 서비스 이용 과정에서 발생하는 명예훼손 기타
                                                                    불법행위로 인한 각종
                                                                    민∙형사상 책임</li>
                                                            </ol>
                                                        </li>
                                                        <li>⑨ 상품의 특성이나 상품 제공업체의 환불규정이 "회사"의 취소환불 규정에 우선한 결과 위
                                                            '소비자분쟁해결기준'과는 다르게 배상되는 경우, "회사"는 이에 관하여 일체의 책임을 지지 않습니다.
                                                        </li>
                                                    </ol>
                                                    <h4 class="tit_sub">제31조(분쟁해결)</h4>
                                                    <ol class="list_circle">
                                                        <li>① "회사"는 "이용자"가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여
                                                            피해보상처리기구를 설치, 운영합니다.</li>
                                                        <li>② "회사"는 "이용자"로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한
                                                            처리가 곤란한 경우에는"이용자"에게 그 사유와 처리일정을 즉시 통보해 드립니다.</li>
                                                        <li>③ "회사"와 "이용자" 간에 발생한 전자상거래 분쟁과 관련하여 "이용자"의 피해구제신청이 있는 경우에는
                                                            공정거래위원회 또는 시·도지사가 의뢰하는 분쟁조정기관의 조정에 따를 수 있습니다.</li>
                                                    </ol>
                                                    <h4 class="tit_sub">제32조(관할 법원 및 준거법)</h4>
                                                    <ol class="list_circle">
                                                        <li>① "회사"에서 정하는 규정에서 정하지 않은 사항과 본 규정의 해석은 관계법령 및 상관례에 따릅니다.
                                                        </li>
                                                        <li>② "회사"에서 정하는 규정과 관련된 모든 분쟁은 제소 당시 "이용자"의 주소에 의하고, 주소가 없는
                                                            경우에는
                                                            거소를 관할하는 지방법원의 전속관할로 합니다. 다만, 제소 당시 "이용자"의 주소 또는 거소가 분명하지
                                                            않거나 외국 거주자의
                                                            경우에는 민사소송법상의 관할법원에 제기합니다. 동 소송에는 대한민국법을 적용하도록 합니다.</li>
                                                    </ol>
                                                </div>

                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary"
                                                    data-bs-dismiss="modal">닫기</button>
                                            </div>
                                        </div>
                                    </div>
                                </div><!-- Modal -->
                                <script>

                                    $("#resignupbtn").on("click", function () {
                                        if ($(".id").val() != null || $(".u_pwd").val() != null || $(".u_nickName").val() != null || $(".email").val() != null || $(".repw").val() != null)
                                            $(".id").html("");
                                        $(".u_pwd").html("");
                                        $(".repw").html("");
                                        $(".u_nickName").html("");
                                        $(".email").html("");
                                    });

                                    $('input#email').keyup(function () {
                                        var inputEmail = $(this).val();
                                        var sendUrl = "http://localhost:8088/trip/user/emailCheckAjax.do?email=" + inputEmail;
                                        var regex = /.+@[a-z]+(\.[a-z]+){1,2}$/;
                                        var result = regex.exec($("#email").val());
                                        $.get(sendUrl, function (data, status) {
                                            if (status == 'success') {
                                                if (result == null || data == 'impossible') {
                                                    $(".email").html("이메일 양식이 아니거나 존재하는 이메일 입니다.");
                                                    $(".email").css("color", "gray");
                                                } else if (result != null && data == 'possible') {
                                                    $(".email").html("사용 가능한 이메일입니다.");
                                                } else {
                                                    $(".email").html("");
                                                }
                                            } else {
                                                alert("오류가 생겼습니다!")
                                            }
                                        });
                                    });// keyup 종료





                                    $('input#id').keyup(function () {
                                        var inputId = $(this).val();
                                        var regex = /^[A-Za-z0-9\d]{8,15}$/;
                                        var regexspc = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣~!@#$%^&*()_+|<>?:{}]/;
                                        var result = regex.exec($("#id").val());
                                        var resultspc = regexspc.exec($("#id").val());
                                        var sendUrl = "http://localhost:8088/trip/user/idCheckAjax.do?id=" + inputId;
                                        $.get(sendUrl, function (data, status) {
                                            if (status === 'success') {
                                                if (data === 'possible' && inputId != "") {
                                                    $(".id").html("영어 대소문자와 숫자를 혼합하여 8-15자리로 입력하세요");
                                                    $(".id").css("color", "gray");
                                                    if (inputId.length > 7 && inputId.length < 16 && resultspc == null && result != null) {
                                                        $(".id").html("사용가능한 아이디입니다!");
                                                    }
                                                } else if (data === "impossible") {
                                                    $(".id").html("이미 존재하는 아이디입니다!");
                                                    $(".id").css("color", "gray");
                                                } else {
                                                    $(".id").html("");
                                                }

                                            } else {
                                                alert("오류가 생겼습니다!")
                                            }
                                        });

                                    });// keyup 종료


                                    // 실행함수 ----------------------------------------------------------------------
                                    $(function () {

                                        //비밀번호 유효성검사
                                        $("#repw").prop("readonly", true)
                                        $("#u_pwd").keyup(function () {
                                            var regex = /^[a-zA-Z0-9\d]{8,15}$/;
                                            var regexspc = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣~!@#$%^&*()_+|<>?:{}]/;
                                            var result = regex.exec($("#u_pwd").val());
                                            var resultspc = regexspc.exec($("#u_pwd").val());

                                            if (result == null && $("#u_pwd").val() != "") {
                                                $(".u_pwd").html("영어와 숫자를 혼합하여 8-15자리로 입력하세요");
                                                $(".u_pwd").css("color", "gray")
                                                $("#repw").prop("readonly", true)
                                            } else if ($("#u_pwd").val() == "") {
                                                $(".u_pwd").html("");
                                                $("#repw").prop("readonly", false)
                                            } else {
                                                $(".u_pwd").html("");
                                                $("#repw").prop("readonly", false)
                                            }
                                        });

                                        // 입력한 비밀번호끼리 맞는지 확인 (이중체크)  
                                        $("#repw").on("keyup", function () {
                                            if ($("#u_pwd").val() == $("#repw").val()) {
                                                $(".repw").html("비밀번호가 일치합니다");
                                                $(".repw").css("color", "gray");
                                            } else if ($("#u_pwd").val() != $("#repw").val()) {
                                                $(".repw").html("비밀번호가 일치하지않습니다");
                                                $(".repw").css("color", "gray");
                                            } else if ($("#u_pwd").val() != "" && $("#repw").val() == "") {
                                                $(".repw").html("");
                                            } else if ($("#u_pwd").val() == "" && $("#repw").val() != "") {
                                                $(".repw").html("");
                                            }
                                        });


                                        //이름 유효성검사 진행중 10/08
                                        $("#u_nickName").on("input", function () {
                                            var regex = /[가-힣]{2,}/;
                                            var result = regex.exec($("#u_nickName").val());
                                            var result_empty = $("#u_nickName").val() == "";
                                            if (result != null) {
                                                $(".u_nickName").html("");
                                            } else if (result_empty) {
                                                $(".u_nickName").html("");
                                            } else if (result == null) {
                                                $(".u_nickName").html("한글로 2글자 이상 작성해주세요.");
                                                $(".u_nickName").css("color", "gray");
                                            }
                                        });

                                        //회원가입 버튼 눌렀을 때, 빈칸 있으면 다시 유효성 검사 진행    
                                        $("#signupbtn").on("click", function () {
                                            var id = $("#id").val();
                                            var pw = $("#u_pwd").val();
                                            var name = $("#u_nickName").val();
                                            var email = $("#email").val();

                                            //var idregex = /^[A-Za-z\d]{8,15}$/;
                                            var pwregex = /^[A-Za-z\d]{8,15}$/;
                                            var nameregex = /[가-힣]{2,}/;
                                            var emailregex = /.+@[a-z]+(\.[a-z]+){1,2}$/;



                                            //var idregexc = idregex.exec(id);
                                            //if (idregexc == null) {
                                            //    alert("아이디 양식을 다시 확인해주세요");
                                            //     return;
                                            //}

                                            var pwregexc = pwregex.exec(pw);
                                            if (pwregexc == null) {
                                                alert("비밀번호 양식을 다시 확인해주세요");
                                                return;
                                            }

                                            var nameregexc = nameregex.exec(name);
                                            if (nameregexc == null) {
                                                alert("이름 양식을 다시 확인해주세요");
                                                return;
                                            }

                                            var emailregexc = emailregex.exec(email);
                                            if (emailregexc == null) {
                                                alert("이메일 양식을 다시 확인해주세요");
                                                return;
                                            }
                                            
                                            
                                            var checkRule = $("#defaultCheck1").is(':checked') && $("#defaultCheck2").is(':checked') && $("#defaultCheck3").is(':checked');
											if(checkRule == true){
												$("#signform").submit();
	                                            alert("회원가입 성공");
											} else {
												alert('필수약관 동의를 모두 체크해주세요');
												return;
											}
											              
                                        })
                                    })

                                    //---동의 체크--------------------------------------------------------------------------------------
                                    const ChkAll = document.querySelector('input[name=agree_all]');

                                    ChkAll.addEventListener('change', (e) => {
                                        let agreeChk = document.querySelectorAll('input[name=agree]');
                                        for (let i = 0; i < agreeChk.length; i++) {
                                            agreeChk[i].checked = e.target.checked;
                                        }
                                    });
             
                                    //---동의 체크--------------------------------------------------------------------------------------

                                    
                                    function GoHome() {
										location.href='http://localhost:8088/trip/';
									}
                                 
                                </script>

                    </body>

                    </html>