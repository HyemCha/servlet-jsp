<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prifix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="balance" value="123456.789"/>
<fmt:formatNumber type="currency" value="${balance}" maxIntegerDigits="3"/>
<fmt:formatNumber type="number" value="${balance}" maxIntegerDigits="3"/>
<fmt:formatNumber type="number" value="${balance}" maxFractionDigits="3"/>
<fmt:formatNumber type="number" value="${balance}" groupingUsed="false"/>
<fmt:formatNumber type="percent" value="${balance}" maxIntegerDigits="3"/>
<fmt:formatNumber type="percent" value="${balance}" maxIntegerDigits="10"/>
<fmt:formatNumber type="number" value="${balance}" pattern="###.###E0"/>
</body>
</html>