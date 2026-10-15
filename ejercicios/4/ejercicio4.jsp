<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Ejercicio 4: c:choose</title>
	<c:url var="estiloUrl" value="/css/estilo.css" />
	<link rel="stylesheet" href="<c:out value='${estiloUrl}' />">
</head>
<body>
	<header id="encabezado">
		<a class="brand" href="<c:url value='/index.jsp' />"><span class="brand-mark" aria-hidden="true">J</span><span>Práctica JSTL</span></a>
		<nav aria-label="Navegación principal"><a class="btn" href="<c:url value='/index.jsp' />">Inicio</a><a class="btn" href="<c:url value='/index.jsp#ejercicios' />">Ejercicios</a></nav>
	</header>
	<main class="exercise-page">
		<h1>Ejercicio 4: c:choose, c:when y c:otherwise</h1>
		<p>Selecciona tu lenguaje de programación favorito para evaluar distintas condiciones.</p>
		<form class="exercise-form" method="post">
			<label for="lenguaje">¿Cuál es tu lenguaje de programación favorito?</label>
			<select id="lenguaje" name="lenguaje" required>
				<option value="">Seleccionar un lenguaje</option>
				<option value="Java" ${param.lenguaje eq 'Java' ? 'selected' : ''}>Java</option>
				<option value="C++" ${param.lenguaje eq 'C++' ? 'selected' : ''}>C++</option>
				<option value="Perl" ${param.lenguaje eq 'Perl' ? 'selected' : ''}>Perl</option>
			</select>
			<button class="action-button" type="submit">Enviar</button>
		</form>
		<c:if test="${not empty param.lenguaje}">
			<section class="result-card" aria-live="polite">
				<h2>Resultado</h2>
				<c:choose>
					<c:when test="${param.lenguaje eq 'Java'}"><p>El rey de los lenguajes orientados a objetos: <strong>Java</strong>.</p></c:when>
					<c:when test="${param.lenguaje eq 'C++'}"><p>Un lenguaje de propósito general: <strong>C++</strong>.</p></c:when>
					<c:when test="${param.lenguaje eq 'Perl'}"><p>Un lenguaje versátil para procesar texto: <strong>Perl</strong>.</p></c:when>
					<c:otherwise><p>Selecciona Java, C++ o Perl.</p></c:otherwise>
				</c:choose>
			</section>
		</c:if>
	</main>
	<footer><p>Derechos reservados || Paula Andrea Hurtado Vega &amp; James Ricardo Amaya Cardenas</p></footer>
</body>
</html>
