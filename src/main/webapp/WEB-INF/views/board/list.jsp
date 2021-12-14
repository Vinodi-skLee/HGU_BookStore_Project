<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.mycom.spring3.board.BoardDAO,com.mycom.spring3.board.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>
 <style>
        /*@import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap'); */
        @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700;800&display=swap');
        h1 {
            text-align:  center;
            font-family: 'Nanum Gothic', sans-serif;
            font-weight: bold;
        }

        #list {
            font-family: 'Nanum Gothic', sans-serif;;
            border-collapse: collapse;
            width: 100%;
        }

        #list td, #list th {
            border: 1px solid rgb(224, 222, 210);
            padding: 8px;
            text-align: center;
        }

        #list tr:nth-child(even){background-color: #f4f5e2;}
        
        #list tr:hover {background-color: rgb(253, 251, 223);}
        
        #list th {
            font-size: 10pt;
            padding-top: 10px;
            padding-bottom: 10px;
            text-align: center;
            background-color: #f3ae46;
            color: rgb(54, 52, 20);
        }

        #detailbutton, #editbutton, #deletebutton{
            color: black;
            background-color: burlywood;
            font-size: 14pt;
            font-weight: bold;
            border: 2px solid rgb(97, 71, 38);
            border-radius: 10px;
        }
        
        
      </style>
	<script>
		function delete_ok(id) {
			var a = confirm("정말로 삭제하겠습니까?");
			if (a)
				location.href = 'deleteok/' + id;
		}
	</script>
</head>
<body>
	<h1>Handong Market</h1>
	<div id="username"></div>
	<table id="list" width="90%">
        <tr>
            <th>No</th>
            <th>Major</th>
            <th>Book Image</th>
            <th>Content</th>
            <th>Progress</th>
            <th></th>
        </tr>
		<c:forEach items="${list}" var="u">
            <tr>
                <td>${u.seq}</td>
                <td>${u.major}</td>
                <td><img src="../img/${u.photo}" width="150"/></td>
                <td style="text-align: left;">
                	<br>Title : ${u.title}<br>
                    <br>Writer : ${u.writer}<br>
                    <br>Publish : ${u.publish}<br>
                    <br>Price : ${u.price}<br>
                    <br>Kakaotalk ID : ${u.id}<br>
                    <br>Regdate : ${u.regdate}
                </td>
                <td>${u.getProgress()}</td>
                <td style="align-items:flex-end;">
                    <button type="button" id="detailbutton" onclick="location.href='detail/${u.seq}'">DETAIL</button><br><br>
                    <button type="button" id="editbutton" onclick="location.href='editform/${u.seq}'">EDIT</button><br><br>
                    <button type="button" id="deletebutton" onclick="location.href='javascript:delete_ok(${u.seq})'">DEL</button>
                </td>
            </tr>
        </c:forEach>
	</table>
	<br/><button type="button" onclick="location.href='add'">New Post</button>
</body>
</html>