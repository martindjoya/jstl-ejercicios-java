<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="nombre" value="${param.nombre}" />
<c:set var="apellido1" value="${param.apellido1}" />
<c:set var="apellido2" value="${param.apellido2}" />
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Ejercicio 2: c:set</title>
	<c:url var="estiloUrl" value="/css/estilo.css" />
	<link rel="stylesheet" href="<c:out value='${estiloUrl}' />">
</head>
<body>
	<header id="encabezado">
		<a class="brand" href="<c:url value='/index.jsp' />"><span class="brand-mark" aria-hidden="true">J</span><span>Práctica JSTL</span></a>
		<nav aria-label="Navegación principal"><a class="btn" href="<c:url value='/index.jsp' />">Inicio</a><a class="btn" href="<c:url value='/index.jsp#ejercicios' />">Ejercicios</a></nav>
	</header>
	<main class="exercise-page">
		<h1>Ejercicio 2: guardar datos con c:set</h1>
		<p>Ingresa los datos personales. La etiqueta <code>c:set</code> los guarda en variables para imprimirlos con JSTL.</p>
		<form class="exercise-form" method="post">
			<label for="nombre">Nombre</label>
			<input id="nombre" name="nombre" type="text" value="<c:out value='${nombre}' />" required>
			<label for="apellido1">Primer apellido</label>
			<input id="apellido1" name="apellido1" type="text" value="<c:out value='${apellido1}' />" required>
			<label for="apellido2">Segundo apellido</label>
			<input id="apellido2" name="apellido2" type="text" value="<c:out value='${apellido2}' />" required>
			<button class="action-button" type="submit">Guardar e imprimir</button>
		</form>
		<c:if test="${not empty param.nombre and not empty param.apellido1 and not empty param.apellido2}">
			<section class="result-card" aria-live="polite">
				<h2>Imprimiendo parámetros con JSTL</h2>
				<p>Nombre: <strong><c:out value="${nombre}" /></strong></p>
				<p>Primer apellido: <strong><c:out value="${apellido1}" /></strong></p>
				<p>Segundo apellido: <strong><c:out value="${apellido2}" /></strong></p>
			</section>
		</c:if>
	</main>
	<footer><p>Derechos reservados || Paula Andrea Hurtado Vega &amp; James Ricardo Amaya Cardenas</p></footer>
</body>
</html>
