<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	%>
	
	<sql:setDataSource var="dataSource" 
		url="jdbc:mysql://localhost:3306/JSPBookDB" 
		driver="com.mysql.jdbc.Driver" 
		user="root" 
		password="toor"/>
		
	<sql:update var="resultSet" dataSource="${dataSource}">
		update member set name=? where id=? and passwd=?
		<sql:param value="<%=name%>"></sql:param>
		<sql:param value="<%=id%>"></sql:param>
		<sql:param value="<%=passwd%>"></sql:param>
	</sql:update>
	
	<c:import var="url" url="sql01.jsp"></c:import>
	${url}	
</body>
</html>