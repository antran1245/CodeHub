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
<!--  <a href="/home" class="logo">CodeHub</a>		
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
				</ul>-->
				
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
        	<div class="drop-down-item"><a href="/login"><span>Login/ Sign Up</span></a></div>
    	</div>
    	<div class="rela-block drop-down-container">
        	<div class="drop-down-item"><a href="/home"><span>Profile</span></a></div>
    	</div>
</div>
 
	<div class="parent">
		<div class="child">
			<c:forEach var="project" items="${projects}">
				<div class="card">
					<img class="card-img" src="${project.getImage()}" alt="${project.getTitle()}"  width="290" height="290"/>
					<div class="card-img-overlay flex-column justify-content-between" style="display:none">
						<h3 class="card-title"> <c:out value="${project.getTitle()}"/></h3>
						<p class="card-text"><c:out value="${project.getCaption()}"/></p>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	
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