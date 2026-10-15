<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Prácticas JSTL</title>
	<c:url var="estiloUrl" value="/css/estilo.css" />
	<link rel="stylesheet" href="<c:out value='${estiloUrl}' />">
</head>
<body>
	<header id="encabezado">
		<a class="brand" href="#inicio">
			<span class="brand-mark" aria-hidden="true">J</span>
			<span>Práctica JSTL</span>
		</a>
		<nav aria-label="Navegación principal">
			<a class="btn" href="#inicio">Inicio</a>
			<a class="btn" href="#practicas">Prácticas</a>
		</nav>
	</header>

	<main id="ejercicios">
		<h1 id="inicio">Prácticas JSTL</h1>
		<p class="exercise-intro">Selecciona una colección de ejercicios.</p>
		<div id="practicas" class="landing-actions">
			<c:url var="ejerciciosUrl" value="/ejercicios/" />
			<a class="landing-button" href="<c:out value='${ejerciciosUrl}' />">Ejercicios JSTL</a>
			<c:url var="ejercicios2Url" value="/ejercicios2/" />
			<a class="landing-button" href="<c:out value='${ejercicios2Url}' />">Ejercicios JSTL 2</a>
		</div>
	</main>

	<footer>
		<p>Derechos reservados || Paula Andrea Hurtado Vega &amp; James Ricardo Amaya Cardenas</p>
	</footer>
</body>
</html>
