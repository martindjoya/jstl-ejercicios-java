<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="variableDePagina" scope="page">Esta información se guarda en la página.</c:set>
<c:set var="variableDeSesion" scope="session">Esta información se guarda en la sesión.</c:set>
<c:set var="variableDeAplicacion" scope="application">Esta información se guarda en la aplicación.</c:set>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Ejercicio 3: alcances de c:set</title>
	<c:url var="estiloUrl" value="/css/estilo.css" />
	<link rel="stylesheet" href="<c:out value='${estiloUrl}' />">
</head>
<body>
	<header id="encabezado">
		<a class="brand" href="<c:url value='/index.jsp' />"><span class="brand-mark" aria-hidden="true">J</span><span>Práctica JSTL</span></a>
		<nav aria-label="Navegación principal"><a class="btn" href="<c:url value='/index.jsp' />">Inicio</a><a class="btn" href="<c:url value='/ejercicios2/' />">Ejercicios JSTL 2</a></nav>
	</header>
	<main class="exercise-page">
		<h1>Ejercicio 3: alcances de c:set</h1>
		<p><code>c:set</code> guarda valores en distintos alcances disponibles para las páginas JSP.</p>
		<section class="result-card" aria-label="Variables por alcance">
			<p>Alcance de página: <strong><c:out value="${variableDePagina}" /></strong></p>
			<p>Alcance de sesión: <strong><c:out value="${variableDeSesion}" /></strong></p>
			<p>Alcance de aplicación: <strong><c:out value="${variableDeAplicacion}" /></strong></p>
		</section>
	</main>
	<footer><p>Derechos reservados || Paula Andrea Hurtado Vega &amp; James Ricardo Amaya Cardenas</p></footer>
</body>
</html>
