<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.mycom.spring3.board.BoardDAO,com.mycom.spring3.board.BoardVO"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail Page</title>
<style>
/*@import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap'); */
@import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700;800&display=swap');
body {
	background-color: rgb(253, 251, 223);
}
h1 {
	text-align: left;
	font-family: 'Nanum Gothic', sans-serif;
	font-weight: bold;
	margin-left: 20pt;
}

section {
	text-align: left;
	font-family: 'Nanum Gothic', sans-serif;
	align-self: center;
	margin-left: 20pt;
}
</style>
<script>
	//BoardVO one = ${one};
</script>
</head>
<body>
		<h1>${one.title}</h1>
		<section>
			<p>${one.major} ㆍ ${one.progress}</p>
			<td><img src="../../img/${one.photo}" width="220" /></td><br><br>
			<div id="major">Major : ${one.major}</div><br>
			<div id="title">Title : ${one.title}</div><br>
			<div id="writer">Writer : ${one.writer}</div><br>
			<div id="publish">Publish : ${one.publish}</div><br>
			<div id="content">Content : ${one.content}</div><br>
			<div id="price">Price : ${one.price}</div><br>
			<div id="id">Kakaotalk ID : ${one.id}</div>
		</section>
</body>
</html>