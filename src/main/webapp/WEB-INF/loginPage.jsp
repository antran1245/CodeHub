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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"> <!-- change to match your file/naming structure -->
    <link rel="stylesheet" href="/css/login.css" />
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
				<h2>Register</h2>

				<form:form method="post" action="/reg" modelAttribute="newUser">
					<div class="mb-3">
						<form:label path="first_name" class="form-label">First Name: </form:label>
						<form:input path="first_name" class="form-control"/>
						<form:errors path="first_name" class="text-danger"/>
					</div>
					<div class="mb-3">
						<form:label path="last_name" class="form-label">Last Name: </form:label>
						<form:input path="last_name" class="form-control"/>
						<form:errors path="last_name" class="text-danger"/>
					</div>
					<div class="mb-3">
						<form:label path="email" class="form-label">Email: </form:label>
						<form:input type="email" path="email" class="form-control"/>
						<form:errors path="email" class="text-danger"/>
					</div>
					<div class="mb-3">
						<form:label path="password" class="form-label">Password: </form:label>
						<form:input type="password" path="password" class="form-control"/>
						<form:errors path="password" class="text-danger"/>
					</div>
					<div class="mb-3">
						<form:label path="confirmPassword" class="form-label">Confirm Password: </form:label>
						<form:input type="password" path="confirmPassword" class="form-control"/>
						<form:errors path="confirmPassword" class="text-danger"/>
					</div>
					<button type="submit" class="btn btn-primary">Sign Up</button>
				</form:form>
			</div>
			<div class="col form-box p-3 m-2">
				<h2>Log in</h2>
				<form:form method="post" action="/login" modelAttribute="newLogin">
					<div class="mb-3">
						<form:label path="email" class="form-label">Email: </form:label>
						<form:input type="email" path="email" class="form-control"/>
						<form:errors path="email" class="text-danger"/>
					</div>
					<div class="mb-3">
						<form:label path="password" class="form-label">Password: </form:label>
						<form:input type="password" path="password" class="form-control"/>
						<form:errors path="password" class="text-danger"/>
					</div>
					<button type="submit" class="btn btn-primary">Log in</button>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>