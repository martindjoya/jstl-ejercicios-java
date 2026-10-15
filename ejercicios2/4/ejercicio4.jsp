<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Ejercicio 4: c:if</title>
	<c:url var="estiloUrl" value="/css/estilo.css" />
	<link rel="stylesheet" href="<c:out value='${estiloUrl}' />">
</head>
<body>
	<header id="encabezado">
		<a class="brand" href="<c:url value='/index.jsp' />"><span class="brand-mark" aria-hidden="true">J</span><span>Práctica JSTL</span></a>
		<nav aria-label="Navegación principal"><a class="btn" href="<c:url value='/index.jsp' />">Inicio</a><a class="btn" href="<c:url value='/ejercicios2/' />">Ejercicios JSTL 2</a></nav>
	</header>
	<main class="exercise-page">
		<h1>Ejercicio 4: validación con c:if</h1>
		<p>Completa los datos de la persona. Cada condición <code>c:if</code> informa si falta un dato obligatorio.</p>
		<form class="exercise-form" method="post">
			<label for="nombre">Nombre</label>
			<input id="nombre" name="nombre" type="text" value="<c:out value='${param.nombre}' />">
			<label for="apellido1">Primer apellido</label>
			<input id="apellido1" name="apellido1" type="text" value="<c:out value='${param.apellido1}' />">
			<label for="apellido2">Segundo apellido</label>
			<input id="apellido2" name="apellido2" type="text" value="<c:out value='${param.apellido2}' />">
			<button class="action-button" type="submit">Enviar información</button>
		</form>
		<c:if test="${pageContext.request.method eq 'POST' and empty param.nombre}">
			<p class="message message-error" role="alert">Error: Nombre obligatorio.</p>
		</c:if>
		<c:if test="${pageContext.request.method eq 'POST' and empty param.apellido1}">
			<p class="message message-error" role="alert">Error: Primer apellido obligatorio.</p>
		</c:if>
		<c:if test="${pageContext.request.method eq 'POST' and empty param.apellido2}">
			<p class="message message-error" role="alert">Error: Segundo apellido obligatorio.</p>
		</c:if>
		<c:if test="${pageContext.request.method eq 'POST' and not empty param.nombre and not empty param.apellido1 and not empty param.apellido2}">
			<section class="result-card" aria-live="polite">
				<h2>Datos de la persona</h2>
				<p>Nombre: <strong><c:out value="${param.nombre}" /></strong></p>
				<p>Primer apellido: <strong><c:out value="${param.apellido1}" /></strong></p>
				<p>Segundo apellido: <strong><c:out value="${param.apellido2}" /></strong></p>
			</section>
		</c:if>
	</main>
	<footer><p>Derechos reservados || Paula Andrea Hurtado Vega &amp; James Ricardo Amaya Cardenas</p></footer>
</body>
</html>
