<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.bean.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8R">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="hb" class="com.bean.HelloBean"></jsp:useBean>
<jsp:setProperty property="*" name="hb"/>
<%-- <jsp:setProperty property="number" name="hb"/>
<jsp:setProperty property="phone" name="hb"/> --%>

	<h3>자바 빈즈로 폼 데이터 몽당 한꺼번에 받아서 처리</h3>
	**** 이름 : <jsp:getProperty property="name" name="hb"/> <br>
	**** 학번 : <jsp:getProperty property="number" name="hb"/> <br>
	**** 전번 : <jsp:getProperty property="phone" name="hb"/> <br>
</body>
</html>