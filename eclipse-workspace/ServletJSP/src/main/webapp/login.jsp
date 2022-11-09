<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
<style>
	
	input#submitBtn{
		width: 120px;
		height:30px;
		background-color: skyblue;
		border : 0px;
	}
	input#resetBtn{
		width: 120px;
		height: 30px;
		color: white;
		background-color: lightgray;
		border: 0px;
	}
</style>
</head>
<body>
	<% 
		String msg = (String)request.getAttribute("msg");
		if(msg == null)
			msg = "";
	%>
	<%= msg %>
	<h3>회원 정보</h3>
	<form action="loginPro.jsp" method="post">
		Id : <input type="text" name="id"/><br/>
		비밀번호 : <input type="password" name="pwd"/><br/>
		<input class="submitBtn" type="submit" value="로그인"/>
		<input class="resetBtn" type="reset" value="취소"/>
	</form>
</body>
</html>