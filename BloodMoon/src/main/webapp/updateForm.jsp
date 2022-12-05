<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*, javax.naming.*"%>
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
	<%
		Connection con = null;
		
		InitialContext ic = new InitialContext();
		DataSource ds = (DataSource)ic.lookup("java:comp/env/jdbc/mydb");
		con = ds.getConnection();
		
		String sessionId = (String)session.getAttribute("session_id");
		
		String sql = "select * from member where id = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, sessionId);
		ResultSet rs = ps.executeQuery();
		
		if (rs.next()){
			String id = rs.getString("id");
			String pwd = rs.getString("passwd");
			String name = rs.getString("name");
			String mail = rs.getString("mail");			
	%>
	<div>
		<h3>회원 정보 수정</h3>
		<form action="updatePro.jsp" method="post">
			Id<br><input class="text" type="text" name="id" value="<%=id%>"/><br/>
			비밀번호<br><input class="text" type="password" name="pwd" value="<%=pwd%>"/><br/>
			이름<br><input class="text" type="text" name="name" value="<%=name%>"/><br/>
			메일<br><input class="text" type="text" name="mail" value="<%=mail%>"/><br/>
			<input id="submitBtn" type="submit" value="저장"/>
			<input id="resetBtn" type="button" onclick="location.href='delete.jsp'" value="화원탈퇴"/>
		</form>
		<%} else{
			response.sendRedirect("main.jsp");
		}%>
	</div>
	
</body>
</html>