<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>�� ���� ȯ�� ����</h2>
	<ul style="list-style:none;">
		<li>jdk �ٿ� => JAVA_HOME, classpath, path</li>
		<li>Tomcat �ٿ� => CATALINA_HOME, path</li>
		<li>eclipse ee �¾�</li>
		<li>dynamic web project ����</li>
		<li>webapp ����</li>
		<li>index.jsp ����</li>
	</ul>
	
	<%
		for(int i=0; i<10; i++){
			out.print("�ȳ��ϼ���<br/>");
		}
	%>
	<%="���� �Ϲ����� ������ ��� ��ũ��Ʈ" %>
</body>
</html>