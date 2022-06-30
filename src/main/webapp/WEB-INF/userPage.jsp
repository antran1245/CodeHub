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
    <title>Swag Muney Ghang Ghang</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/userPage.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<jsp:include page="background.jsp"></jsp:include>
</head>
<body>
	<div class="container">
		<header class="row">
				<h1 class="heading-text">CodeHub</h1>
		</header>
		<div class="row">
			<div class="col form-box p-3 m-2">
				<h2>About me</h2>
				<button type="submit" class="btn btn-primary">edit</button>
			</div>
		</div>
		<div class="row row-cols-2 row-cols-md-2 g-4">
			<c:forEach var="project" items="${user.getProjects()}">
				<div class="col">
					<div class="card">
						<img src="${project.getImage()}" alt="${project.getTitle()}" />
						<div class="card-body">
							<h5 class="card-title"><c:out value="${project.getTitle()}"/></h5>
							<p class="card-text"><c:out value="${project.getCaption()}"/></p>
							<p class="card-text"><c:out value="${project.getContent()}"/></p>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
   </div>
</body>
</html>