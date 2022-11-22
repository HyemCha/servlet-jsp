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
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="m" class="member.Member" />
<jsp:setProperty property="*" name="m"/>

<%
	Connection con = null;
	PreparedStatement ps = null;
	
	InitialContext ic = new InitialContext();
	DataSource ds = (DataSource)ic.lookup("java:comp/env/jdbc/mydb");
	con = ds.getConnection();
	
	String sql = "insert into member values(?, ?, ?, ?)";
	ps = con.prepareStatement(sql);
	ps.setString(1, m.getId());
	ps.setString(2, m.getPwd());
	ps.setString(3, m.getName());
	ps.setString(4, m.getMail());
	// select빼고는 다 executeUpdate
	int a = ps.executeUpdate();
	
	if(a == 1){
		RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
		rd.forward(request, response);		
	}else{
		%>
			<script>
				alert("회원가입 정상적으로 수행되지 않았습니다");
				history.go(-1);
			</script>
		<%
	}
%>
</body>
</html>