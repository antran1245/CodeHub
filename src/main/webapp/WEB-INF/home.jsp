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
    <link rel="stylesheet" href="/css/home.css"> 
    <link rel="stylesheet" href="/css/nav.css"> 
    <!-- For any Bootstrap that uses JS or jQuery-->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="background.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/nav.jsp"></jsp:include>
 
	<div class="parent">
		<div class="child">
			<c:forEach var="project" items="${projects}">
				<div class="card" onclick="detail(${project.getId()})">
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
	
	// hover over
	 $(".card").hover(function() {
         $(this).find("div").css("display", "flex");
     },
     function(){
         $(this).find("div").css("display", "none");
     })
     function detail(id) {
		location.href="/project/"+id+"/detail"
	}
	</script>
</body>
</html>