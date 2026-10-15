<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:if test="${param.ejecutar eq '1' and not empty param.parametro}">
	<c:catch var="errorConversion">
		<fmt:parseNumber var="valor" value="${param.parametro}" integerOnly="true" />
	</c:catch>
</c:if>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Ejercicio 6: c:catch</title>
	<c:url var="estiloUrl" value="/css/estilo.css" />
	<link rel="stylesheet" href="<c:out value='${estiloUrl}' />">
</head>
<body>
	<header id="encabezado">
		<a class="brand" href="<c:url value='/index.jsp' />"><span class="brand-mark" aria-hidden="true">J</span><span>Práctica JSTL</span></a>
		<nav aria-label="Navegación principal"><a class="btn" href="<c:url value='/index.jsp' />">Inicio</a><a class="btn" href="<c:url value='/ejercicios2/' />">Ejercicios JSTL 2</a></nav>
	</header>
	<main class="exercise-page">
		<h1>Ejercicio 6: captura con c:catch</h1>
		<p>Intenta convertir distintos parámetros a un número. <code>c:catch</code> captura el error para que la página pueda continuar.</p>
		<form class="exercise-form exercise-form-inline" method="post">
			<input type="hidden" name="ejecutar" value="1">
			<button class="action-button" type="submit" name="parametro" value="prueba">Enviar “prueba”</button>
			<button class="action-button" type="submit" name="parametro" value="1234">Enviar “1234”</button>
			<button class="action-button" type="submit">No enviar parámetro</button>
		</form>
		<c:if test="${param.ejecutar eq '1'}">
			<section class="result-card" aria-live="polite">
				<c:choose>
					<c:when test="${not empty errorConversion}">
						<p class="message message-error" role="alert">Se produjo un error al convertir el parámetro “<c:out value='${param.parametro}' />”.</p>
						<p><c:out value="${errorConversion.message}" /></p>
					</c:when>
					<c:when test="${empty param.parametro}"><p>No se recibió ningún parámetro para convertir.</p></c:when>
					<c:otherwise><p>Valor recibido: <strong><c:out value="${valor}" /></strong></p></c:otherwise>
				</c:choose>
			</section>
		</c:if>
	</main>
	<footer><p>Derechos reservados || Paula Andrea Hurtado Vega &amp; James Ricardo Amaya Cardenas</p></footer>
</body>
</html>
