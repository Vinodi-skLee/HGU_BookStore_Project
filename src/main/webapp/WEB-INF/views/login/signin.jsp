<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
</head>
<body>
	<h1>회원가입</h1>
	<form method="post" action="signinok">
		<table id="signin">
			<tr><td>아이디</td><td><input type="text" name="userid" /></td></tr>
			<tr><td>비밀번호</td><td><input type="text" name="password" /></td></tr>
			<tr><td>닉네임</td><td><input type="text" name="username" /></td></tr>
		</table>
		<br><br><button type="submit">회원 등록하기</button>
	</form>
</body>
</html>