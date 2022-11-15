<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="t" class="join.Test" />
<jsp:setProperty property="*" name="t" />
<c:set target="<%=t %>" property="pwd" value="1111" />
<c:set target="<%=t %>" property="name" value="The Secret" />
<c:set target="<%=t %>" property="id" value="hyemin" />
<c:set target="<%=t %>" property="age" value="111"/>

id<br>${t.id}
pwd<br>${t.pwd}
name<br>${t.name}
age<br>${t.age}

<c:if test="${t.age > 19 }">
	성년입니다.
</c:if>

<c:choose>
	<c:when test="${t.age >=20 }">adult</c:when>
	<c:when test="${t.age >=17 }">고등학생</c:when>
	<c:when test="${t.age >=14 }">중학생</c:when>
	<c:when test="${t.age >=8 }">초등학생</c:when>
	<c:otherwide>미취학 아동</c:otherwide>
</c:choose>

 
<%-- <c:set var="name" value="gildong" />
<c:out value="${name}" /><br>
<c:remove var="name" />
<c:out value="${name}" /> --%>

<!-- t를 member의 값으로 설정 -->
<%-- <% request.setAttribute("member", t); %>
<jsp:forward page="C.jsp" /> --%>
</body>
</html>