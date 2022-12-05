<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
<style>
	input.text{
		border: 1px solid #888;
		border-radius:10px;
		width: 200px;
		height: 25px;
		padding: 2px;
		margin:10px;
	}
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
		Id<br><input class="text" type="text" name="id"/><br/>
		비밀번호<br><input class="text" type="password" name="pwd"/><br/>
		<input id="submitBtn" type="submit" value="로그인"/>
		<input id="resetBtn" type="reset" value="취소"/>
	</form>
</body>
</html>