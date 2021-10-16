<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="modifyInfo.do" method="post">
	<input  hidden="${member.u_id }" name="u_id" value="${member.u_id }"/>
		<table border="1">
			<tr>
				<th>닉네임</th>
				<td><input type="text" name="u_nickName" value="${member.u_nickName}"/></td>
				<th>비밀번호</th>
				<td><input type="password" name="u_pwd" /></td>
				<th>비밀번호 확인</th>
				<td><input type="password" /></td>
				<th>이메일</th>
				<td><input type="email" name="u_email" value="${member.u_email}" /></td>
			</tr>
		</table>
				<input type="submit" value="수정" />
	</form>
</body>
</html>