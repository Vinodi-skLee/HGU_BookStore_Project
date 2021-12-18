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
			<tr><td>Major</td><td><select name="major"><optgroup label="전공"><option value="GLS">GLS</option><option value="어문">어문</option><option value="경경">경경</option><option value="법">법</option><option value="컴케">컴케</option><option value="공시">공시</option><option value="기계">기계</option><option value="콘디">콘디</option><option value="생명">생명</option><option value="전전">전전</option><option value="상사">상사</option><option value="ICT">ICT</option></optgroup><optgroup label="교양"><option value="교양">교양</option><option value="기타">기타</option></optgroup></select></td></tr>
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