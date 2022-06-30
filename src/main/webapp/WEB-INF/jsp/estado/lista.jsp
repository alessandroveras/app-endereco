<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AppEndereco</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp" />

	<div class="container mt-3">
		<h2>Cadastramento de Estados</h2>

		<c:if test="${not empty mensagem}">
			<div class="alert alert-success">
				<strong>Confirmação!</strong> ${mensagem}
			</div>
		</c:if>

		<hr>
		<c:if test="${not empty estados}">
			<h4>Total de Estados: ${estados.size()}</h4>

			<table class="table table-striped">
				<thead>
					<tr>
						<th>ID</th>
						<th>SIGLA</th>
						<th>NOME</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="estado" items="${estados}">
						<tr>
							<td>${estado.id}</td>
							<td>${estado.sigla}</td>
							<td>${estado.nome}</td>
							<td><a href="/estados/${estado.id}/municipios">Municipios</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>

		<c:if test="${empty estados}">
			<h4>Não existem estados cadastrados!!!</h4>
		</c:if>

	</div>
</body>
</html>