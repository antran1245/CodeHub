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
    <link rel="stylesheet" href="/css/userPage.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <jsp:include page="background.jsp"></jsp:include>
</head>
<body>
	 <div class="fixed-nav-bar">		
				<div class="logo"><span>CodeHub</span></div>
    				<input type="checkbox" id="menuButton" />
    					<label for="menuButton" class="menu-button-label">
        					<div class="white-bar"></div>
        					<div class="white-bar"></div>
        					<div class="white-bar"></div>
        					<div class="white-bar"></div>
    					</label>				
	</div>
	
<div class="the-bass">
    	<div class="rela-block drop-down-container">
        	<div class="drop-down-item"><a href="/project/new"><span>Create</span></a></div>
    	</div>
    	<div class="rela-block drop-down-container">
    		<c:choose>
	    		<c:when test="${empty user}">
	    			<div class="drop-down-item"><a href="/login"><span>Login/ Sign Up</span></a></div>
	    		</c:when>
	    		<c:otherwise>
		        	<div class="drop-down-item"><a href="/logout"><span>Logout</span></a></div>
	    		</c:otherwise>
    		</c:choose>
    	</div>
    	<div class="rela-block drop-down-container">
        	<div class="drop-down-item"><a href="/user"><span>Profile</span></a></div>
    	</div>
</div>
 
 
 <div class="all">

 	<div class="info">
 		<h1>Links</h1>
 		<p><i class="fa-brands fa-linkedin"></i>LinkedIn</p>
 		<p><i class="fa-brands fa-github"></i>GitHub</p>
 		<p><i class="fa-solid fa-envelope"></i>Email</p>
 		
 
 	</div>
 	<div class="about">
 		<h1>About</h1>
 		<textarea placeholder="About..."></textarea>
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