<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.mycom.spring3.board.BoardDAO,com.mycom.spring3.board.BoardVO"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Post</title>
</head>
<body>
	<h1>Edit Post</h1>
	<form:form commandName="boardVO" action="../editok" method="post">
	<form:hidden path="seq"/>
		<table id="edit">
			<tr><td>Major</td><td><form:select path="major"><optgroup label="전공"><option value="GLS">GLS</option><option value="어문">어문</option><option value="경경">경경</option><option value="법">법</option><option value="컴케">컴케</option><option value="공시">공시</option><option value="기계">기계</option><option value="콘디">콘디</option><option value="생명">생명</option><option value="전전">전전</option><option value="상사">상사</option><option value="ICT">ICT</option></optgroup><optgroup label="교양"><option value="교양">교양</option><option value="기타">기타</option></optgroup></form:select></td></tr>
			<tr><td>Title</td><td><form:input path="title" /></td></tr>
			<tr><td>Writer</td><td><form:input path="writer" /></td></tr>
			<tr><td>Publish</td><td><form:input path="publish" /></td></tr>
			<tr><td>Price</td><td><form:input path="price" /></td></tr>
			<tr><td>Content</td><td><form:textarea cols="50" rows="5" path="content" /></td></tr>
			<tr><td>Photo</td><td><form:input type="file" path="photo" /></td></tr>
			<tr><td>Kakaotalk ID</td><td><form:input path="id" /></td></tr>
			<tr><td>Progress</td><td><form:input path="progress" /></td></tr>
		</table>
		<input type="submit" value="OK"/>
		<input type="button" value="Cancel" onclick="history.back()" />
	</form:form>
</body>
</html>