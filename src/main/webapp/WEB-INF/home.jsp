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
				<ul>
					<li>
						<a href="/project/new">Create a Post</a>
					</li>
					<li>
						<a href="/login">Login/Sign Up</a>
					</li>
					<li>
						<form>
						<input type="search" placeholder="Search"/>
						<button type="submit">Search</button>
						</form>
					</li>
				</ul>
		</header>
		
		
	</div>
	<script type="text/javascript">
		window.addEventListener("scroll", function(){
			var header = document.querySelector("header");
			header.classList.toggle("sticky", window.scrollY > 0);
		})
	</script>
</body>
</html>