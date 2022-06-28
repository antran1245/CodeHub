<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <!-- for Bootstrap CSS -->
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/style.css"> <!-- change to match your file/naming structure -->
    <!-- For any Bootstrap that uses JS or jQuery-->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="background.jsp"></jsp:include>
	<div class="container-fluid p-0">
		<nav class="navbar navbar-light bg-light justify-content-around p-0">
			<a class="navbar-brand m-0" href=""><h1><b>CodeHub</b></h1></a>
			
			<div class="d-flex justify-content-end" id="navbarContent">
				<ul class="navbar-nav mx-1 d-flex justify-content-end flex-row">
					<li class="nav-item mx-1">
						<a class="btn btn-outline-primary" href="/project/new">Create a Post</a>
					</li>
					<li class="nav-item">
						<a class="btn btn-outline-primary" href="/login">Login/Sign Up</a>
					</li>
				</ul>
				<form class="form-inline d-flex">
					<input class="form-control mr-sm-2" type="search" placeholder="Search"/>
					<button class="btn btn-outline-success my-2 my-sm-0 mx-1" type="submit">Search</button>
				</form>
			</div>
		</nav>
		<div id="dashboard" class="container">
			<div class="row">
				<h2><b>Projects</b></h2>
			</div>
		</div>
	</div>
</body>
</html>