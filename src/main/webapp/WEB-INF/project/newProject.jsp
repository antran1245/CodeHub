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
    <title>New Project</title>
    <!-- for Bootstrap CSS -->
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/newProject.css"> <!-- change to match your file/naming structure -->
    <!-- For any Bootstrap that uses JS or jQuery-->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <jsp:include page="/WEB-INF/background.jsp"></jsp:include>
</head>
<body>
<header class="top">
			<div class="an">
			
					<a href="/"><span>CodeHub</span></a>
			</div>
			<div class="tran">
					<p> right</p>
			</div>
		</header>
	<div class="container">
				<div class="pageName">Add Project</div>
		<div class="row">
			<div class="form-box">
				<form:form method="post" modelAttribute="newProject" action="/project/new" enctype="multipart/form-data">
					<div class="mb-4">
						<form:label class="form-label" path="title"><b>Title</b></form:label>
						<form:input class="form-control" path="title"/>
						<form:errors class="text-danger" path="title"/>
					</div>
					<div class="mb-4">
						<form:label class="form-label" path="caption"><b>Caption (Optional)</b></form:label>
						<form:input class="form-control" path="caption"/>
						<form:errors class="text-danger" path="caption"/>
					</div>
					<div class="mb-4">
						<form:label class="form-label" path="content"><b>Content</b></form:label>
						<form:textarea class="form-control" path="content"></form:textarea>
						<form:errors class="text-danger" path="content"/>
					</div>
					<div class="mb-4">
						<form:label class="form-label" path="file"><b>Upload Image</b> (10MB max)</form:label>
						<form:input class="form-control" type="file" path="file" onChange="checkFileSize(this)"/>
					</div>
					<div class="mb-4 row">
					<div class="col">
							<a class="w-100 btn btn-outline-danger" href="/">Cancel</a>
						</div>
						<div class="col">
							<button class="w-100 btn btn-primary" type="submit">Submit</button>
						</div>						
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="/js/form.js"></script>
</body>
</html>