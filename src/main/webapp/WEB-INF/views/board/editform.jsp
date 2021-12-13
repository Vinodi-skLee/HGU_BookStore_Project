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
	<form:form commandName="boardVO" method="post" action="../editok">
		<form:hidden path="seq"/>
		<table id="edit">
			<tr><td>Major</td><td><form:input path="major" /></td></tr>
			<tr><td>Title</td><td><form:input path="title" /></td></tr>
			<tr><td>Writer</td><td><form:input path="writer" /></td></tr>
			<tr><td>Publish</td><td><form:input path="publish" /></td></tr>
			<tr><td>Price</td><td><form:input path="price" /></td></tr>
			<tr><td>Content</td><td><form:textarea cols="50" rows="5" path="content" /></textarea></td></tr>
			<tr><td>Photo</td><td><form:input type="file" path="photo" /></td></tr>
			<tr><td>Kakaotalk ID</td><td><form:input path="id" /></td></tr>
			<tr><td>Progress</td><td><form:input path="progress" /></td></tr>
		</table>
		<input type="submit" value="OK" /> 
		<input type="button" value="Cancle" onclick="history.back()" />
	</form:form>
</body>
</html>