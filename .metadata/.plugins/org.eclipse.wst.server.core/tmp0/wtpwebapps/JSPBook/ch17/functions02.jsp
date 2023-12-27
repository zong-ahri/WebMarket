<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
	<c:set var="texts" value="${fn:split('Hello, Java Server Pages!', ' ')}"></c:set>
	<c:forEach var="i" begin="0" end="${fn:length(texts)-1}">
		<p> text[${i}] = ${texts[i]}
	</c:forEach>
	<p> <c:out value="${fn:join(texts, '-')}"></c:out>
</body>
</html>