<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Ejercicios JSTL 2</title>
	<c:url var="estiloUrl" value="/css/estilo.css" />
	<link rel="stylesheet" href="<c:out value='${estiloUrl}' />">
</head>
<body>
	<header id="encabezado">
		<a class="brand" href="<c:url value='/index.jsp' />"><span class="brand-mark" aria-hidden="true">J</span><span>Práctica JSTL</span></a>
		<nav aria-label="Navegación principal">
			<a class="btn" href="<c:url value='/index.jsp' />">Inicio</a>
			<a class="btn" href="<c:url value='/ejercicios/' />">Ejercicios JSTL</a>
		</nav>
	</header>
	<main id="ejercicios">
		<h1>Ejercicios JSTL 2</h1>
		<p class="exercise-intro">Selecciona un ejercicio para abrir su página independiente.</p>
		<div class="exercise-grid">
			<c:url var="ejercicio1Url" value="/ejercicios2/1/ejercicio1.jsp" />
			<a class="exercise-card" href="<c:out value='${ejercicio1Url}' />"><h2>Ejercicio 1</h2><p>Impresión de datos con c:out</p></a>
			<c:url var="ejercicio2Url" value="/ejercicios2/2/ejercicio2.jsp" />
			<a class="exercise-card" href="<c:out value='${ejercicio2Url}' />"><h2>Ejercicio 2</h2><p>Formulario e impresión de parámetros</p></a>
			<c:url var="ejercicio3Url" value="/ejercicios2/3/ejercicio3.jsp" />
			<a class="exercise-card" href="<c:out value='${ejercicio3Url}' />"><h2>Ejercicio 3</h2><p>Alcances de variables con c:set</p></a>
			<c:url var="ejercicio4Url" value="/ejercicios2/4/ejercicio4.jsp" />
			<a class="exercise-card" href="<c:out value='${ejercicio4Url}' />"><h2>Ejercicio 4</h2><p>Validación condicional con c:if</p></a>
			<c:url var="ejercicio5Url" value="/ejercicios2/5/ejercicio5.jsp" />
			<a class="exercise-card" href="<c:out value='${ejercicio5Url}' />"><h2>Ejercicio 5</h2><p>Selección de lenguaje con c:choose</p></a>
			<c:url var="ejercicio6Url" value="/ejercicios2/6/ejercicio6.jsp" />
			<a class="exercise-card" href="<c:out value='${ejercicio6Url}' />"><h2>Ejercicio 6</h2><p>Captura de errores con c:catch</p></a>
			<c:url var="ejercicio7Url" value="/ejercicios2/7/ejercicio7.jsp" />
			<a class="exercise-card" href="<c:out value='${ejercicio7Url}' />"><h2>Ejercicio 7</h2><p>Iteración y estado con c:forEach</p></a>
			<c:url var="ejercicio8Url" value="/ejercicios2/8/ejercicio8.jsp" />
			<a class="exercise-card" href="<c:out value='${ejercicio8Url}' />"><h2>Ejercicio 8</h2><p>Separación de texto con c:forTokens</p></a>
			<c:url var="sqlUrl" value="/ejercicios/8/ejercicio8.jsp" />
			<a class="exercise-card" href="<c:out value='${sqlUrl}' />"><h2>SQL con JSTL</h2><p>Inserción y consulta de registros</p></a>
		</div>
	</main>
	<footer><p>Derechos reservados || Paula Andrea Hurtado Vega &amp; James Ricardo Amaya Cardenas</p></footer>
</body>
</html>
