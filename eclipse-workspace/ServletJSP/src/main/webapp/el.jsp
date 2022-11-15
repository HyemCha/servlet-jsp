<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	Literalse : ${"Literals" }
	<br> Operators : ${5>3 }
	<br> Implicit Objects : ${header["host"]}
	<br> Implicit Objects : ${header.host}
	<hr>
	${header}
</body>
</html>