<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%= "JSP 문법으로 화면에 출력"%>
	
	<%
	Date d = new Date();
	int year = d.getYear() + 1900;
	int month = d.getMonth() + 1;
	int day = d.getDate();
	String hi = "Hello";
	%>
	
	<%= "오늘은 " + year + "년 " + month + "월 " + day + "일 입니다." %>

</body>
</html>