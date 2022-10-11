<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>웹 서버 환경 설정</h2>
	<ul style="list-style:none;">
		<li>jdk 다운 => JAVA_HOME, classpath, path</li>
		<li>Tomcat 다운 => CATALINA_HOME, path</li>
		<li>eclipse ee 셋업</li>
		<li>dynamic web project 생성</li>
		<li>webapp 설정</li>
		<li>index.jsp 생성</li>
	</ul>
	
	<%
		for(int i=0; i<10; i++){
			out.print("안녕하세요<br/>");
		}
	%>
	<%="나는 일반적인 브라우저 출력 스크립트" %>
</body>
</html>