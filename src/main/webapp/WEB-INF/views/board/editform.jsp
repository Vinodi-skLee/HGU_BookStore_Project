<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.mycom.spring3.board.BoardDAO,com.mycom.spring3.board.BoardVO"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 수정</title>
</head>
<body>
	<h1>게시물 수정</h1>
	<form:form commandName="boardVO" method="post" action="../editok">
		<form:hidden path="seq"/>
		<table id="edit">
			<tr><td>전공</td><td><form:input path="major" /></td></tr>
			<tr><td>책 제목</td><td><form:input path="title" /></td></tr>
			<tr><td>저자</td><td><form:input path="writer" /></td></tr>
			<tr><td>출판사</td><td><form:input path="publish" /></td></tr>
			<tr><td>가격</td><td><form:input path="price" /></td></tr>
			<tr><td>카톡아이디</td><td><form:input path="id" /></td></tr>
			<tr><td>진행 상황</td><td><form:input path="progress" /></td></tr>
			<tr><td>책 상태 설명</td><td><form:textarea cols="50" rows="5" path="content" /></textarea></td></tr>
		</table>
		<input type="submit" value="수정하기" /> 
		<input type="button" value="취소하기" onclick="history.back()" />
	</form:form>
</body>
</html>