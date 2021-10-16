<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>footer</title>
<style>
*{margin:0; padding: 0;}
#footerDiv01>p{margin: 5px; color: #dbdbdb; font-size: 90%;}
#footerDiv02>a{color: #dbdbdb;}
#footerDiv02>a:hover{cursor:pointer; color: white;}
</style>
</head>
<body>
<div style="clear:both; width: 100%; height: 350px; background-color: gray; margin-top:30px; position: relative;">
    <div style="height: 50px; box-shadow: 0px 0px 3px;">
        <div id="footerDiv02" style="margin:auto; width: 1000px; line-height: 50px; color: #dbdbdb;"><a href="<%=request.getContextPath()%>/board/introduce.do">회사소개</a> | <a href="<%=request.getContextPath()%>/board/perinfo.do">개인정보처리방침</a> | <a href="<%=request.getContextPath()%>/board/agreeFoot.do">이용약관</a> | <a href="<%=request.getContextPath()%>/board/tripAgreeFoot.do">여행약관</a></div>
    </div>
    <div style="margin:auto; width: 1000px; height: 280px;">
        <div id="footerDiv01" style="margin-top:20px;">
            <p>One Trillion </p>
            <p>조장 : 오현성, 조원 : 한보영, 이희연, 김태현, 용상현, 장진광 </p>
            <p>사업자등록번호 000-00-000000 | 관광사업자등록증번호 제2021-0001000호</p>
            <p>통신판매업신고번호 제2021-금천구-000사업자 정보확인</p>
            <p>대표전화 0000-0000 | 이메일 master@0000.com</p>
            <p>영업배상책임보험가입 총 20억원, 한국관광협회중앙회 여행공제회 공제영업보증가입 10억원, 공제기획여행보증가입 5억원
            개별 항공권, 단품 및 일부 여행상품에 대하여 판매중개자로서 통신판매의 당사자가 아닙니다.
            따라서 해당 상품의 상품·거래정보 및 거래 등에 대하여 책임을 지지 않습니다.</p>
            <p>항공권 또는 항공권이 포함된 상품의 경우, 표시되는 상품요금은 세금 및 예상 유류할증료가 포함된 가격이며</p>
            <p>유류할증료는 유가 및 환율 등에 따라 변동될 수 있습니다.</p>
            <p>©tour. All Rights Reserved. 장진광 개머싰엌ㅋ</p>
        </div>
    </div>
</div>
</body>
</html>