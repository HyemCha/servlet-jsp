<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*, javax.sql.*, javax.naming.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
</style>
</head>
<body>
	<%request.setCharacterEncoding("UTF-8"); %>
	<jsp:useBean id="m" class="join.Test"/>
	<jsp:setProperty property="*" name="m"/>
	<%
		if(m.getName() == null || m.getPwd() == null){
			%>
				<script>
					alert("아이디 또는 비밀번호가 입력되지 않았습니다.");
					history.go(-1);
				</script>
			<%
		}
	%>
	<%
		//Class.forName("com.mysql.jdbc.Driver");
		//String url = "jdbc:mysql://localhost:3306/mydb";
		//Connection conn = DriverManager.getConnection(url, "root", "1234");
		InitialContext ic = new InitialContext();
		DataSource sd = (DataSource) ic.lookup("java:comp/env/jdbc/mydb");
		Connection conn = sd.getConnection();
		String sql = "insert into test values(?,?,?,?)";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, m.getId());
		ps.setString(2, m.getPwd());
		ps.setString(3, m.getName());
		ps.setInt(4, m.getAge());
		
		int a = ps.executeUpdate();
		System.out.println("a : " + a);
		
		ps.close();
		conn.close();
		
		//로그인페이지로 리디렉트
		if (a==0){%>
			<script type="text/javascript">
				alert("회원가입 정보가 잘못되었습니다.");
				history.go(-1);
			</script>
		<%
		}else{
			pageContext.forward("login.jsp");
			// response.sendRedirect("login.jsp");
		}
	%>
</body>
</html>