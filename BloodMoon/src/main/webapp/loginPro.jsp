<%@page import="javax.naming.InitialContext"%>
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
	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		if(id.isEmpty() || pwd.isEmpty()){
			if(id.isEmpty() && pwd.isEmpty())
				request.setAttribute("msg", "ID와 PASSWD는 필수입력사항이니 반드시 입력하세요.");
			else if(id.isEmpty())
				request.setAttribute("msg", "ID는 필수입력사항이니 반드시 입력하세요.");
			else if(pwd.isEmpty()){
				request.setAttribute("msg", "PASSWD는 필수 입력사항이니 반드시 입력하세요.");
				
			}
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
			return;
		}
		else{
			// cp연결
			InitialContext ic = new InitialContext();
			DataSource sd = (DataSource) ic.lookup("java:comp/env/jdbc/mydb");
			Connection conn = sd.getConnection();
			String sql = "select passwd from member where id=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()){
				if (rs.getString("passwd").equals(pwd)){
					session.setAttribute("session_id", id);
					out.println("verified id&passwd ");
					pageContext.forward("main.jsp");
				}else{
					out.print("your id and pwd are not matched");
					pageContext.forward("login.jsp");
				}
			}else{
				out.print("your id deosn't exist");
				pageContext.forward("login.jsp");
			}
		}
	%>
	
	
</body>
</html>