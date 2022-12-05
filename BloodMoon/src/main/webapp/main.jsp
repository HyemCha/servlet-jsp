<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link >
</head>
<body>
<%
	String s_id = (String)session.getAttribute("session_id");

	
%>

    <nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-color: #e3f2fd;">
  <div class="container-fluid">
    <a class="navbar-brand" href="main.jsp">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-link active" aria-current="page" href="main.jsp">Home</a>
    <%
    if(s_id != null){ // 인증된 회원
		%>  
        <a class="nav-link" href="logout.jsp">로그아웃</a>
        <a class="nav-link" href="updateForm.jsp">내 정보 수정</a>
      
		<%
	} else{
		%>
		<a class="nav-link" href="joinForm.jsp">회원가입</a>
        <a class="nav-link" href="login.jsp">로그인</a>
		<%
	}
    %>
	    </div>
	    </div>
	  </div>
	</nav>
</body>
</html>