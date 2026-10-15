<%-- =========================================================
     CONFIGURACIÓN DE LA PLANTILLA
     Se conserva en las páginas que usen esta estructura.
     ========================================================= --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title><c:out value="${empty titulo ? 'Mi sitio' : titulo}" /></title>
	<c:url var="estiloUrl" value="/css/estilo.css" />
	<link rel="stylesheet" href="<c:out value='${estiloUrl}' />">
</head>
<body>
	<%-- =========================================================
	     BASE COMPARTIDA: encabezado y navegación.
	     Mantén esta sección igual para conservar la estructura
	     común entre las páginas.
	     ========================================================= --%>
	<header>
		<h1><c:out value="${empty nombreSitio ? 'Mi sitio' : nombreSitio}" /></h1>
	</header>

	<nav aria-label="Navegación principal">
		<c:url var="inicioUrl" value="/index.jsp" />
		<c:url var="ejerciciosUrl" value="/ejercicios/" />
		<a href="<c:out value='${inicioUrl}' />">Inicio</a>
		<a href="<c:out value='${ejerciciosUrl}' />">Ejercicios</a>
	</nav>

	<%-- =========================================================
	     CONTENIDO PROPIO DE CADA PÁGINA.
	     Crea un archivo JSP para el contenido específico y asígnalo
	     a contenidoPagina desde la página que incluya esta plantilla.
	     Esta zona carga ese archivo dentro del diseño compartido.
	     ========================================================= --%>
	<main>
		<h2><c:out value="${empty titulo ? 'Página interna' : titulo}" /></h2>
		<%-- Define contenidoPagina como una ruta JSP relativa a esta plantilla. --%>
		<c:choose>
			<c:when test="${not empty contenidoPagina}">
				<jsp:include page="${contenidoPagina}" />
			</c:when>
			<c:otherwise>
				<p>El contenido de esta página se mostrará aquí.</p>
			</c:otherwise>
		</c:choose>
	</main>

	<%-- BASE COMPARTIDA: pie de página común para todas las páginas. --%>
	<footer>
		<small>&copy; <c:out value="${empty nombreSitio ? 'Mi sitio' : nombreSitio}" /></small>
	</footer>
</body>
</html>
