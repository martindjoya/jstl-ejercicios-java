<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="textoDelimitado" value="${empty param.delimText ? 'Estoy en uno,3,5,7,9,11,13,15,17,19,21,23' : param.delimText}" />
<c:set var="delimitador" value="${empty param.delim ? ',' : param.delim}" />
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Ejercicio 8: c:forTokens</title>
	<c:url var="estiloUrl" value="/css/estilo.css" />
	<link rel="stylesheet" href="<c:out value='${estiloUrl}' />">
</head>
<body>
	<header id="encabezado">
		<a class="brand" href="<c:url value='/index.jsp' />"><span class="brand-mark" aria-hidden="true">J</span><span>Práctica JSTL</span></a>
		<nav aria-label="Navegación principal"><a class="btn" href="<c:url value='/index.jsp' />">Inicio</a><a class="btn" href="<c:url value='/ejercicios2/' />">Ejercicios JSTL 2</a></nav>
	</header>
	<main class="exercise-page">
		<h1>Ejercicio 8: separación con c:forTokens</h1>
		<p>Ingresa un texto y su delimitador. <code>c:forTokens</code> separa la cadena y muestra cada token.</p>
		<form class="exercise-form" method="post">
			<label for="delimText">Texto delimitado</label>
			<input id="delimText" name="delimText" type="text" value="<c:out value='${textoDelimitado}' />" required>
			<label for="delim">Delimitador</label>
			<input id="delim" name="delim" type="text" value="<c:out value='${delimitador}' />" required>
			<button class="action-button" type="submit">Separar tokens</button>
		</form>
		<section class="result-card" aria-live="polite">
			<h2>Tokens</h2>
			<ol class="iteration-list">
				<c:forTokens items="${textoDelimitado}" delims="${delimitador}" var="token">
					<li><c:out value="${token}" /></li>
				</c:forTokens>
			</ol>
		</section>
	</main>
	<footer><p>Derechos reservados || Paula Andrea Hurtado Vega &amp; James Ricardo Amaya Cardenas</p></footer>
</body>
</html>
