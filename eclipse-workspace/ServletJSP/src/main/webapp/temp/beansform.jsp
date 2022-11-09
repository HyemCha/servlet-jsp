<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
	<h3>회원 정보</h3>
	<form action="beansPro.jsp" method="get">
		이름 : <input type="text" name="name"/><br/>			
		학번 : <input type="text" name="sumber"/><br/>
		전화 : <input type="password" name="phone"/><br/>
		<input type="submit" value="전송"/>
		<input type="reset" value="지우기"/>
	</form>
</body>
</html>