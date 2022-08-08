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
    <title>User Page</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/userPage.css">
    <link rel="stylesheet" href="/css/nav.css"> 
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <jsp:include page="background.jsp"></jsp:include>
</head>
<body>
	 <jsp:include page="/WEB-INF/nav.jsp"></jsp:include>
 
 <div class="container">
	<div class="row d-flex align-items-center">
		<div class="col">
 			<h1><c:out value="${profileUser.first_name}" /></h1>
		</div>
		<div class="col d-flex justify-content-end">
	 		<c:if test= "${profileUser == user}">
	 			<button type="button" class="btn btn-primary w-50">Edit</button>
	 		</c:if>
		</div>
	</div>
 	<div class="row info">
 		<div class="col-12 col-sm-3">
 			<h1>Info</h1>
	 		<p><i class="fa-brands fa-linkedin"></i>LinkedIn</p>
	 		<p><i class="fa-brands fa-github"></i>GitHub</p>
	 		<p><i class="fa-solid fa-envelope"></i>Email</p>
 		</div>
	 	<div class="col-12 col-sm-9">
	 		<h1>About</h1>
	 		<textarea class="form-control" rows="3" placeholder="About..."></textarea>
	 	</div>
	</div>
 </div>
	<%-- <div class="parent">
		<div class="child">
			<c:forEach var="project" items="${projects}">
					<div class="card">
				<a href="/project/${project.id}/detail">
							<img class="card-img" src="${project.getImage()}" alt="${project.getTitle()}"  width="290" height="290"/>
						<div class="card-img-overlay flex-column justify-content-between" style="display:none">
							<h3 class="card-title"> <c:out value="${project.getTitle()}"/></h3>
							<p class="card-text"><c:out value="${project.getCaption()}"/></p>
						</div>
				</a>
					</div>
			</c:forEach>
		</div>
	</div> --%>
 
<!--  
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
    --> 
    <script type="text/javascript">
	$( document ).ready(function() {
	    
	    // Function to change the nav-bar on scroll
	    $(window).scroll(function(){
	        ($(window).scrollTop() >= 100) ? (
	            $('.fixed-nav-bar').addClass('scrolled'),
	            $('.the-bass').addClass('scrolled')
	        ) : (
	            $('.fixed-nav-bar').removeClass('scrolled'),
	            $('.the-bass').removeClass('scrolled')
	        );
	    });
	    
	    // Drop Down Function
	    $('#menuButton').on('change', function(){
	        ($('#menuButton').is(':checked')) ? (
	            $('.the-bass').addClass('dropped')
	        ) : (
	            $('.the-bass').removeClass('dropped')
	        );
	    });
	    
	});
	
	// hover over
	 $(".card").hover(function() {
         $(this).find("div").css("display", "flex");
     },
     function(){
         $(this).find("div").css("display", "none");
     })
	</script>
</body>
</html>