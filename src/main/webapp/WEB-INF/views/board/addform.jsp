<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Post</title>
</head>
<body>
	<h1>New Post</h1>
	<form action="addok" method="post">
		<table id="add">
			<tr><td>Major</td><td><input type="text" name="major" /></td></tr>
			<tr><td>Title</td><td><input type="text" name="title" /></td></tr>
			<tr><td>Writer</td><td><input type="text" name="writer" /></td></tr>
			<tr><td>Publish</td><td><input type="text" name="publish" /></td></tr>
			<tr><td>Price</td><td><input type="text" name="price" /></td></tr>
			<tr><td>Content</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
			<tr><td>Photo</td><td><input type="file" name="photo" /></td></tr>
			<tr><td>Kakaotalk ID</td><td><input type="text" name="id" /></td></tr>
			<tr><td>Progress</td><td><input type="text" name="progress" /></td></tr>
			
		</table>
		<button type="button" onclick="location.href='list'">View All List</button>
		<button type="submit">Submit</button>
	</form>
</body>
</html>