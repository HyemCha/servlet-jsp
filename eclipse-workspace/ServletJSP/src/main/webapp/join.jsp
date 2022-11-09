<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div{
		margin: 50px auto;
	}
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
	<div>
		<h3>회원 가입</h3>
		<form action="joinPro.jsp" method="post">
			Id : <input class="text" type="text" name="id"/><br/>
			비밀번호 : <input class="text" type="password" name="pwd"/><br/>
			이름 : <input class="text" type="text" name="name"/><br/>
			나이 : <input class="text" type="text" name="age"/><br/>
			<input id="submitBtn" type="submit" value="회원가입"/>
			<input id="resetBtn" type="reset" value="취소"/>
		</form>
	</div>
	
</body>
</html>