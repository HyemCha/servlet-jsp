<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:import url="B.jsp" var="b"/>
${b}
	<%
		ArrayList<String> book = new ArrayList<>();
		book.add("처음해보는 jsp&servlet");
		book.add("물고기는 존재하지 않는다.");
		book.add("React.js");
		book.add("Spring Boot");
		book.add("JavaScript");
		book.add("python");
		book.add("django");
	%>
	<c:set var="list" value="<%=book %>"/>
	<c:forEach var="i" items="${list}" >
		${i}<br>
	</c:forEach>
	
	<c:forEach var="i" begin="2" end="9">
		<c:forEach var="j" begin="1" end="9">
			${i}<br>
		</c:forEach>
	</c:forEach>
	<c:forTokens var="a" items="나/너아/아ㅓ/니ㅏ" delims="/">
		${a}
	</c:forTokens>
</body>
</html>