<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="./resources/css/bootstrap.min.css">
<script type="text/javascript" src="./resources/js/validation.js"></script>
<meta charset="UTF-8">
<title>상품 등록</title>
</head>
<body>
	<fmt:setLocale value='<%= request.getParameter("language") %>'/>
	<fmt:bundle basename="bundle.message">
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3"><fmt:message key="title"></fmt:message></h1>
		</div>
	</div>
	<div class="container">
		<div class="text-right">
			<a href="?language=ko">Korean</a>|<a href="?language=en">English</a>
			<a href="logout.jsp" class="btn btn-sm btn-success pull-right">logout</a>
		</div>
		<form action="./processAddProduct.jsp" name="newProduct" class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-group row">	
				<label class="col-sm-2"><fmt:message key="productId"></fmt:message></label>
				<div class="col-sm-3">
					<input type="text" id="productId" name="productId" class="form-control">
				</div>
			</div>
			<div class="form-group row">	
				<label class="col-sm-2"><fmt:message key="pname"></fmt:message></label>
				<div class="col-sm-3">
					<input type="text" id="name" name="name" class="form-control">
				</div>
			</div>
			<div class="form-group row">	
				<label class="col-sm-2"><fmt:message key="unitPrice"></fmt:message></label>
				<div class="col-sm-3">
					<input type="text" id="unitPrice" name="unitPrice" class="form-control">
				</div>
			</div>
			<div class="form-group row">	
				<label class="col-sm-2"><fmt:message key="description"></fmt:message></label>
				<div class="col-sm-5">
					<textarea name="description" class="form-control" rows="2" cols="50"></textarea>
				</div>
			</div>
			<div class="form-group row">	
				<label class="col-sm-2"><fmt:message key="manufacturer"></fmt:message></label>
				<div class="col-sm-3">
					<input type="text" name="manufacturer" class="form-control">
				</div>
			</div>
			<div class="form-group row">	
				<label class="col-sm-2"><fmt:message key="category"></fmt:message></label>
				<div class="col-sm-3">
					<input type="text" name="category" class="form-control">
				</div>
			</div>
			<div class="form-group row">	
				<label class="col-sm-2"><fmt:message key="unitsInStock"></fmt:message></label>
				<div class="col-sm-3">
					<input type="text" id="unitsInStock" name="unitsInStock" class="form-control">
				</div>
			</div>
			<div class="form-group row">	
				<label class="col-sm-2"><fmt:message key="condition"></fmt:message></label>
				<div class="col-sm-5">
					<input type="radio" name="condition" value="New"><fmt:message key="condition_New"></fmt:message>
					<input type="radio" name="condition" value="Old"><fmt:message key="condition_Old"></fmt:message>
					<input type="radio" name="condition" value="Refurbished"><fmt:message key="condition_Refurbished"></fmt:message>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="productImage"></fmt:message></label>
				<div class="col-sm-5">
					<input type="file" name="productImage" class="form-control">
				</div>
			</div>
			<div class="form-group row">	
				<div class="col-sm-offset-2 col-sm-10">
					<input type="button" class="btn btn-primary" value='<fmt:message key="button"></fmt:message>' onclick="CheckAddProduct()">
				</div>
			</div>
		</form>
	</div>
	</fmt:bundle>
</body>
</html>