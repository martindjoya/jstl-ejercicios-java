<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ include file="/WEB-INF/jspf/conexion.jspf" %>
<c:set var="nombres" value="${param.nombres}" />
<c:set var="apellido1" value="${param.apellido1}" />
<c:set var="apellido2" value="${param.apellido2}" />
<c:set var="edad" value="${param.edad}" />
<c:catch var="errorSQL">
	<c:if test="${param.enviado eq '1' and not empty nombres and not empty apellido1 and not empty apellido2 and not empty edad}">
		<sql:update dataSource="${conexionEmpleados}" var="filasInsertadas">
			INSERT INTO empleados (nombres, apellido1, apellido2, edad) VALUES (?, ?, ?, ?)
			<sql:param value="${nombres}" />
			<sql:param value="${apellido1}" />
			<sql:param value="${apellido2}" />
			<sql:param value="${edad}" />
		</sql:update>
	</c:if>
	<sql:query var="empleados" dataSource="${conexionEmpleados}">
		SELECT id, nombres, apellido1, apellido2, edad FROM empleados ORDER BY id
	</sql:query>
</c:catch>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Ejercicio 8: SQL JSTL</title>
	<c:url var="estiloUrl" value="/css/estilo.css" />
	<link rel="stylesheet" href="<c:out value='${estiloUrl}' />">
</head>
<body>
	<header id="encabezado">
		<a class="brand" href="<c:url value='/index.jsp' />"><span class="brand-mark" aria-hidden="true">J</span><span>Práctica JSTL</span></a>
		<nav aria-label="Navegación principal"><a class="btn" href="<c:url value='/index.jsp' />">Inicio</a><a class="btn" href="<c:url value='/index.jsp#ejercicios' />">Ejercicios</a></nav>
	</header>
	<main class="exercise-page">
		<h1>Ejercicio 8: SQL con JSTL</h1>
		<p>El formulario inserta los datos en la tabla <code>empleados</code> mediante <code>sql:update</code>; <code>sql:query</code> consulta e imprime los registros. La aplicación está conectada a la base local <code>empleados</code> en el puerto <code>3307</code>.</p>
		<form class="exercise-form" method="post">
			<input type="hidden" name="enviado" value="1">
			<label for="nombres">Nombre</label>
			<input id="nombres" name="nombres" type="text" value="<c:out value='${nombres}' />" required>
			<label for="apellido1">Primer apellido</label>
			<input id="apellido1" name="apellido1" type="text" value="<c:out value='${apellido1}' />" required>
			<label for="apellido2">Segundo apellido</label>
			<input id="apellido2" name="apellido2" type="text" value="<c:out value='${apellido2}' />" required>
			<label for="edad">Edad</label>
			<input id="edad" name="edad" type="number" min="0" max="150" value="<c:out value='${edad}' />" required>
			<button class="action-button" type="submit">Guardar y consultar</button>
		</form>
		<c:if test="${param.enviado eq '1' and (empty nombres or empty apellido1 or empty apellido2 or empty edad)}">
			<p class="message message-error" role="alert">Completa todos los campos antes de enviar.</p>
		</c:if>
		<c:if test="${not empty errorSQL}">
			<p class="message message-error" role="alert">No se pudo consultar la base de datos. Verifica que MySQL esté iniciado en el puerto <code>3307</code>, que hayas ejecutado <code>empleados.sql</code> y que las credenciales de <code>WEB-INF/jspf/conexion.jspf</code> sean correctas.</p>
			<details>
				<summary>Detalle técnico</summary>
				<p><c:out value="${errorSQL.message}" /></p>
			</details>
		</c:if>
		<c:if test="${param.enviado eq '1' and empty errorSQL and filasInsertadas eq 1}">
			<p class="message message-success" role="status">Registro guardado correctamente.</p>
		</c:if>
		<c:if test="${empty errorSQL}">
			<section class="result-card">
				<h2>Registros de empleados</h2>
				<div class="table-scroll">
					<table>
						<thead><tr><th>Id</th><th>Nombre</th><th>Primer apellido</th><th>Segundo apellido</th><th>Edad</th></tr></thead>
						<tbody>
							<c:forEach var="empleado" items="${empleados.rows}">
								<tr>
									<td><c:out value="${empleado.id}" /></td>
									<td><c:out value="${empleado.nombres}" /></td>
									<td><c:out value="${empleado.apellido1}" /></td>
									<td><c:out value="${empleado.apellido2}" /></td>
									<td><c:out value="${empleado.edad}" /></td>
								</tr>
							</c:forEach>
							<c:if test="${empty empleados.rows}">
								<tr><td colspan="5">No hay registros para mostrar.</td></tr>
							</c:if>
						</tbody>
					</table>
				</div>
			</section>
		</c:if>
	</main>
	<footer><p>Derechos reservados || Paula Andrea Hurtado Vega &amp; James Ricardo Amaya Cardenas</p></footer>
</body>
</html>
