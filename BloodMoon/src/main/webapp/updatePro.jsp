<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*, javax.naming.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="m" class="member.Member" />
<jsp:setProperty property="*" name="m" />
	<%
	InitialContext ic = new InitialContext();
	DataSource ds = (DataSource)ic.lookup("java:comp/env/jdbc/mydb");
	Connection con = ds.getConnection();
	
	String sql = "update member set passwd=?, name=?, mail=? where id=?";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, m.getPwd());
	ps.setString(2, m.getName());
	ps.setString(3, m.getMail());
	ps.setString(4, m.getId());
	
	int a = ps.executeUpdate();
	if(a==1){
		%>
			<script>
				alert("회원정보 수정 완료! 메인페이지로 go")
				location.href = "main.jsp"
			</script>
		<%
	}else{
		%>
			<script>
				alert("회원정보 수정 실패!")
				history.go(-1)
			</script>
		<%
	}
	%>
</body>
</html>