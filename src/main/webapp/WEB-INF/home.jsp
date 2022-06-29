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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">   
    <link rel="stylesheet" href="/css/home.css"> <!-- change to match your file/naming structure -->
    <!-- For any Bootstrap that uses JS or jQuery-->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="background.jsp"></jsp:include>

	<div>
		<header>
				<a href="/home" class="logo">CodeHub</a>		
				<ul class="navbar-nav mx-1 d-flex justify-content-end flex-row">
					<li class="nav-item mx-1">
						<a class="btn btn-outline-primary" href="/project/new">Create a Post</a>

					</li>
					<li>
						<a href="/login">Login/Sign Up</a>
					</li>
					<li>
						<form>
							<div class="input-group">
								<input type="search" placeholder="Search" class="form-control" placeholder="Search"/>
								<button type="submit" class="btn btn-primary input-group-append">
									<i class="fa-solid fa-magnifying-glass"></i>
								</button>
							</div>
						</form>
					</li>
				</ul>
		</header>
		
	</div>
	<div class="container">
	<div class="project-overlay">
		<div class="row d-flex justify-content-evenly">
			<c:forEach var="project" items="${projects}">
				<div class="col-5 card bg-dark text-white my-4">
					<img class="card-img" src="${project.getImage()}" alt="${project.getTitle()}"  width="auto" height="300"/>
					<div class="card-img-overlay flex-column justify-content-between" style="display:none">
						<h3 class="card-title">Title: <c:out value="${project.getTitle()}"/></h3>
						<p class="card-text"><c:out value="${project.getCaption()}"/></p>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	</div>
	<script type="text/javascript">
		window.addEventListener("scroll", function(){
			var header = document.querySelector("header");
			header.classList.toggle("sticky", window.scrollY > 0);
		})
		$(document).ready(function() {
			$(".card").hover(function(){
				$(this).find("div").css("display", "flex");
			}, function() {
				$(this).find("div").css("display", "none");
			})
		})
	</script>
</body>
</html>