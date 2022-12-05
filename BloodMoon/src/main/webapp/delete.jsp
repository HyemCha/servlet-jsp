<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*, javax.naming.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
</style>
</head>
<body>
	<%
	InitialContext ic = new InitialContext();
	DataSource ds = (DataSource) ic.lookup("java:comp/env/jdbc/mydb");
	Connection con = ds.getConnection();

	String id = (String) session.getAttribute("session_id");
	String sql = "delete from member where id = ?";
	PreparedStatement ps = con.prepareStatement(sql);

	ps.setString(1, id);

	int a = ps.executeUpdate();
	if (a == 1) {
		session.invalidate();
		%>
		<script>
			alert("정상적으로 탈퇴되었습니다. 메인페이지로 이동합니다");
			location.href="main.jsp"
		</script>
		<%
	} else {
		%>
		<script>
			alert("탈퇴 실패하였습니다. 이전페이지로 이동합니다");
			history.go(-1)
		</script>
		<%
	}
	%>
</body>
</html>