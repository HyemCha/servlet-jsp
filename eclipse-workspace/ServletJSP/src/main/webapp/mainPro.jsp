<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*, javax.sql.*, javax.naming.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="display:flex;">
	<div>
		메인입니다.
	</div>
	<div>
<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		if(!id.isEmpty()&&!pwd.isEmpty()){
			%>
				<div style="cursor:pointer; background-color:pink;">
					로그아웃
				</div>
			<%
			pageContext.forward("login.jsp");
		}else{
			%>
				<div style="cursor:pointer; background-color:pink;">
					로그인
				</div>
			<%
			pageContext.forward("login.jsp");
		}
		
		
%>
	</div>
</div>
</body>
</html>