<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table class="table table-success">
	<tbody>
		<tr>
			<td>아이디</td>
			<td>${member.id}</td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td>${member.pwd}</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>${member.name}</td>
		</tr>
		<tr>
			<td>나이</td>
			<td>${member.age}</td>
		</tr>
	</tbody>
	</table>
</body>
</html>