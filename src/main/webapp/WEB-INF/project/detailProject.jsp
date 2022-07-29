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
    <title>Detail Project</title>
    <!-- for Bootstrap CSS -->
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/detailProject.css">
    <link rel="stylesheet" href="/css/nav.css"> 
    <!-- For any Bootstrap that uses JS or jQuery-->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	<jsp:include page="/WEB-INF/background.jsp"></jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/nav.jsp"></jsp:include>
	<div class="container-fluid">
		<main class="container">
			<div class="row">
				<img src="${project.getImage()}" alt="${project.getTitle()}" height="auto"/>
			</div>
			<div class="row info">
				<h1><c:out value="${project.getTitle()}"/></h1>
				<p><c:out value="${project.getCaption()}"/></p>
				<p><c:out value="${project.getContent()}"/></p>
			</div>
			<div class="row">
				<h4>Other Projects From Same User</h4>
			</div>
			<div class="row project_list">
				<div class="list">
					<div class="row">
						<div id="overlay"></div>
					</div>
					<div class="row">
						<c:forEach var="project" items="${projects}">
							<div class="col-sm-6 col-lg-4 mt-1">
								<div class="card">
									<a href="/project/${project.id}/detail">
										<img class="card-img-top" src="${project.getImage()}" alt="${project.getTitle()}"  width="290" height="290"/>
									</a>
									<div class="card-body flex-column justify-content-between">
										<h3 class="card-title">Title: <c:out value="${project.getTitle()}"/></h3>
										<p class="card-text"><c:out value="${project.getCaption()}"/></p>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
			<div class="row">
				<h4>Comments</h4>
			</div>
		</main>
	</div>
	<script type="text/javascript">
		const overlay = document.querySelector("#overlay")
		const list = document.querySelector(".list")
		$('#overlay').hover(function() {
			overlay.innerHTML = '<p><b>Extend</b></p>'
		}, function () {
			overlay.innerHTML = ''
		})
		$('#overlay').click(function() {
			overlay.style.display = 'none'
			list.style.height = 'auto'
		})
	</script>
</body>
</html>