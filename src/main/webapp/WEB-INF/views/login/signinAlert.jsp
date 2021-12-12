<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.mycom.spring4.user.UserDAO,com.mycom.spring4.user.UserVO"%>

<% request.setCharacterEncoding("utf-8"); %>

<script>
	alert('${msg}');
	location.href='../';
</script>
