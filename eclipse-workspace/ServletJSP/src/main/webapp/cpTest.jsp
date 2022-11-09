<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mysql DB 접속 테스트</title>
</head>
<body>
	<%
		InitialContext ic = new InitialContext();
		DataSource ds = (DataSource) ic.lookup("java:comp/env/jdbc/mydb");
		// 1. JDBC 드라이버 로딩
		// Class.forName("com.mysql.jdbc.Driver");
		// 2. DB 접속
		//String url = "jdbc:mysql://localhost:3306/mydb";
		// Connection conn = DriverManager.getConnection(url, "root", "1234");
		Connection conn = ds.getConnection();
		// 3. SQL문 실행을 위한 객체 생성
		String sql = "select * from test";
		PreparedStatement ps = conn.prepareStatement(sql);
		// 4. SQL문 실행
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()){
			String id = rs.getString("id");
			String pwd = rs.getString("pwd");
			String name = rs.getString("name");
			int age = rs.getInt("age");
			out.println(id + " " + pwd + " " + name + " " + age + "<br>");
		}
		
		rs.close();
		ps.close();
		conn.close();
	%>
</body>
</html>