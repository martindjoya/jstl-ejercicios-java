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
	<title>Ejercicio 2: datos con JSTL</title>
	<c:url var="estiloUrl" value="/css/estilo.css" />
	<link rel="stylesheet" href="<c:out value='${estiloUrl}' />">
</head>
<body>
	<header id="encabezado">
		<a class="brand" href="<c:url value='/index.jsp' />"><span class="brand-mark" aria-hidden="true">J</span><span>Práctica JSTL</span></a>
		<nav aria-label="Navegación principal"><a class="btn" href="<c:url value='/index.jsp' />">Inicio</a><a class="btn" href="<c:url value='/ejercicios2/' />">Ejercicios JSTL 2</a></nav>
	</header>
	<main class="exercise-page">
		<h1>Ejercicio 2: datos de una persona</h1>
		<p>Envía los datos de una persona y usa <code>c:out</code> para imprimir los parámetros recibidos.</p>
		<form class="exercise-form" method="post">
			<label for="nombre">Nombre</label>
			<input id="nombre" name="nombre" type="text" value="<c:out value='${nombre}' />" required>
			<label for="apellido1">Primer apellido</label>
			<input id="apellido1" name="apellido1" type="text" value="<c:out value='${apellido1}' />" required>
			<label for="apellido2">Segundo apellido</label>
			<input id="apellido2" name="apellido2" type="text" value="<c:out value='${apellido2}' />" required>
			<button class="action-button" type="submit">Enviar información</button>
		</form>
		<c:if test="${pageContext.request.method eq 'POST' and (empty nombre or empty apellido1 or empty apellido2)}">
			<p class="message message-error" role="alert">Completa todos los campos antes de enviar.</p>
		</c:if>
		<c:if test="${pageContext.request.method eq 'POST' and not empty nombre and not empty apellido1 and not empty apellido2}">
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
