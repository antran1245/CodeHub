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
    <link rel="stylesheet" href="/css/style.css"> <!-- change to match your file/naming structure -->
    <link rel="stylesheet" href="/css/nav.css"> 
    <!-- For any Bootstrap that uses JS or jQuery-->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <jsp:include page="/WEB-INF/background.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="/WEB-INF/nav.jsp"></jsp:include>
	<div class="container">
		<header>Add a project</header>
		<div class="row">
			<div class="col-6">
				<form:form method="post" modelAttribute="editProject" action="/project/${project.getId()}/edit">
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
						<form:textarea path="content"></form:textarea>
						<form:errors class="text-danger" path="content"/>
					</div>
					<div class="mb-4">
						<button class="btn btn-primary" type="submit">Submit</button>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>