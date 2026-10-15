<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Ejercicio 6: c:forEach</title>
	<c:url var="estiloUrl" value="/css/estilo.css" />
	<link rel="stylesheet" href="<c:out value='${estiloUrl}' />">
</head>
<body>
	<header id="encabezado">
		<a class="brand" href="<c:url value='/index.jsp' />"><span class="brand-mark" aria-hidden="true">J</span><span>Práctica JSTL</span></a>
		<nav aria-label="Navegación principal"><a class="btn" href="<c:url value='/index.jsp' />">Inicio</a><a class="btn" href="<c:url value='/index.jsp#ejercicios' />">Ejercicios</a></nav>
	</header>
	<main class="exercise-page">
		<h1>Ejercicio 6: c:forEach</h1>
		<p>El ciclo recorre del 1 al 24 en incrementos de 2 e informa la primera y la quinta iteración.</p>
		<section class="result-card">
			<h2>Uso de c:forEach</h2>
			<ol class="iteration-list">
				<c:forEach begin="1" end="24" step="2" var="numero" varStatus="estado">
					<li>
						<c:out value="${numero}" />
						<c:if test="${estado.first}"><strong> — Estoy en uno</strong></c:if>
						<c:if test="${estado.count eq 5}"><strong> — Estoy en la iteración número 5</strong></c:if>
					</li>
				</c:forEach>
			</ol>
		</section>
	</main>
	<footer><p>Derechos reservados || Paula Andrea Hurtado Vega &amp; James Ricardo Amaya Cardenas</p></footer>
</body>
</html>
