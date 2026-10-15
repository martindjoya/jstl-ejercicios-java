<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Ejercicio 1: c:out | JSTL 2</title>
	<c:url var="estiloUrl" value="/css/estilo.css" />
	<link rel="stylesheet" href="<c:out value='${estiloUrl}' />">
</head>
<body>
	<header id="encabezado">
		<a class="brand" href="<c:url value='/index.jsp' />"><span class="brand-mark" aria-hidden="true">J</span><span>Práctica JSTL</span></a>
		<nav aria-label="Navegación principal"><a class="btn" href="<c:url value='/index.jsp' />">Inicio</a><a class="btn" href="<c:url value='/ejercicios2/' />">Ejercicios JSTL 2</a></nav>
	</header>
	<main class="exercise-page">
		<h1>Ejercicio 1: impresión con c:out</h1>
		<p><code>c:out</code> imprime una cadena literal o evalúa una expresión EL.</p>
		<section class="result-card" aria-label="Resultado del ejercicio">
			<p>Cadena de caracteres: <strong><c:out value="1+2+3" /></strong></p>
			<p>Suma de valores: <strong><c:out value="${1+2+3}" /></strong></p>
		</section>
	</main>
	<footer><p>Derechos reservados || Paula Andrea Hurtado Vega &amp; James Ricardo Amaya Cardenas</p></footer>
</body>
</html>
