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
	 			<button type="button" class="btn btn-primary w-50" onclick="switchForm(this)">Edit</button>
	 		</c:if>
		</div>
	</div>
 	<div class="row info" id="display-info" style="display: flex">
 		<div class="col-12 col-sm-4">
 			<h1>Info</h1>
	 		<p>
	 			<c:if test="${profileUser.linkedin != ' '}">
	 				<i class="fa-brands fa-linkedin"></i>
	 				<c:out value="${profileUser.linkedin}"/>
	 			</c:if>
	 		</p>
	 		<p>
	 			<c:if test="${profileUser.github != ' '}">
			 		<i class="fa-brands fa-github"></i>
			 		<c:out value="${profileUser.github}"/>
	 			</c:if>
	 		</p>
	 		<p>
	 			<c:if test="${profileUser.email != ' '}">
		 			<i class="fa-solid fa-envelope"></i>
		 			<c:out value="${profileUser.email}"/>
	 			</c:if>
	 		</p>
 		</div>
	 	<div class="col-12 col-sm-8">
	 		<h1>About</h1>
	 		<c:if test="${profileUser.about != ' '}">
		 		<p>
		 			<c:out value="${profileUser.about}"/>
		 		</p>
	 		</c:if>
	 	</div>
	</div>
	<div class="row info" id="form-info" style="display: none">
 		<div class="col-12">
 			<h1>Info</h1>
 			<form id="input-form">
		 		<div class="form-group row">
			 		<label class="col-form-label col-sm-1">
			 			<i class="fa-brands fa-linkedin fa-2x"></i>
			 		</label>
			 		<div class="col-sm-11">
				 		<input type="text" id="linkedin" class="form-control" value="${profileUser.linkedin}"/>
			 		</div>
		 		</div>
		 		<div class="form-group row">
		 			<label class="col-form-label col-sm-1">
			 			<i class="fa-brands fa-github fa-2x"></i>
		 			</label>
		 			<div class="col-sm-11">
		 				<input type="text" id="github" class="form-control" value="${profileUser.github}"/>
		 			</div>
		 		</div>
 			</form>
 		</div>
	 	<div class="col-12">
	 		<h1>About</h1>
	 		<textarea id="aboutMe" class="form-control" rows="3" placeholder="About..."></textarea>
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
	function switchForm(ele) {
		if(ele.innerText === "Edit") {
			ele.innerText = "Save"
			$("#form-info").css("display", "flex")
			$("#display-info").css("display", "none")
			ele.removeAttribute("form")
			ele.removeAttribute("type")
		} else if(ele.innerText === "Save"){
			ele.setAttribute("form", "input-form")
			ele.setAttribute("type", "submit")
			ele.innerText = "Edit"
			$("#form-info").css("display", "none")
			$("#display-info").css("display", "flex")
			location.reload(true)
		}
	}
	
	$("#input-form").submit(function(e) {
		e.preventDefault()
		let information = {}
		information["linkedin"] = $("#linkedin").val()
		information["github"] = $("#github").val()
		information["aboutMe"] = $("#aboutMe").val()
		$.ajax({
			type: "PATCH",
			contentType: "application/json",
			url: "/user/info",
			data: JSON.stringify(information),
			dataType: 'json'
		})
	})
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