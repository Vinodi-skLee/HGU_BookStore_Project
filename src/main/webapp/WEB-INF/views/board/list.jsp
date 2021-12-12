<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.mycom.spring3.board.BoardDAO,com.mycom.spring3.board.BoardVO,java.util.*"%>
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
	<h1>자유게시판</h1>
	<div id="username"></div>
	<table id="list" width="90%">
        <tr>
            <th>No</th>
            <th>학부</th>
            <th>책 사진</th>
            <th>내용</th>
            <th>거래상태</th>
            <th></th>

        </tr>
		<c:forEach items="${list}" var="u">
            <tr>
                <td>${u.seq}</td>
                <td>${u.major}</td>
                <td><img src="../img/dm.jpg" width="150"/></td>
                <!--<img src="../img/me.jpg" width="300"/>-->
                <td style="text-align: left;">
                	<br>책 제목 : ${u.title}
                    <br><br>저자 : ${u.writer}<br>
                    <br>출판사 : ${u.publish}<br>
                    <br>가격 : ${u.price}<br>
                    <br>카톡아이디 : ${u.id}<br>
                    <br>게시일자 : ${u.regdate}
                </td>
                <td>${u.progress}</td>
                <td style="align-items:flex-end;">
                    <button type="button" id="detailbutton" onclick="location.href='detail/${u.seq}'">상세보기</button><br><br>
                    <button type="button" id="editbutton" onclick="location.href='editform/${u.seq}'">수정</button><br><br>
                    <button type="button" id="deletebutton" onclick="location.href='javascript:delete_ok('${u.seq}')'">삭제</button>
                </td>
            </tr>
        </c:forEach>
	</table>
	<br/><button type="button" onclick="location.href='add'">새글쓰기</button>
</body>
</html>