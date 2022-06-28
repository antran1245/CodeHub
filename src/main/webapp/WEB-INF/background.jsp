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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">   
    <link rel="stylesheet" href="/css/background.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<section>
	<div class="row">
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
	</div>
	<div class="row">
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
	</div>
	<div class="row">
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
	</div>
	<div class="row">
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
	</div>
	<div class="row">
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
	</div>
	<div class="row">
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
	</div>
	<div class="row">
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
	</div><div class="row">
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
	</div>
	<div class="row">
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
	</div>
	<div class="row">
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
	</div>
	<div class="row">
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
	</div>
	<div class="row">
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
	</div>
	<div class="row">
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
	</div>
	<div class="row">
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
	</div>
	<div class="row">
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
	</div>
	<div class="row">
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
	</div>
	<div class="row">
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
	</div>
	<div class="row">
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
	</div>
	<div class="row">
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
	</div>
	<div class="row">
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
	</div>
	<div class="row">
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
	</div>
	<div class="row">
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
	</div>
	<div class="row">
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
	</div>
	<div class="row">
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
		<div>
			<i class="fa-solid fa-frog"></i>
			<i class="fa-solid fa-shuttle-space"></i>
			<i class="fa-solid fa-burger"></i>
			<i class="fa-solid fa-fish-fins"></i>
			<i class="fa-solid fa-martini-glass-citrus"></i>
			<i class="fa-solid fa-cake-candles"></i>
			<i class="fa-solid fa-face-grin-hearts"></i>
			<i class="fa-solid fa-jedi"></i>
			<i class="fa-solid fa-helicopter"></i>
			<i class="fa-solid fa-ban"></i>
			<i class="fa-solid fa-biohazard"></i>
			<i class="fa-solid fa-bomb"></i>
			<i class="fa-solid fa-car-burst"></i>
			<i class="fa-solid fa-bong"></i>
			<i class="fa-solid fa-chess"></i>
			<i class="fa-solid fa-hat-wizard"></i>
			<i class="fa-solid fa-ice-cream"></i>
			<i class="fa-solid fa-skull-crossbones"></i>
			<i class="fa-solid fa-star-of-david"></i>
			<i class="fa-solid fa-snowman"></i>
		</div>	
	</div>
</section>
	
   
</body>
</html>