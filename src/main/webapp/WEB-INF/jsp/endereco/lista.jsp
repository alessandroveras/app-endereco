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
		<h2>Cadastramento de Endereços</h2>

		<c:if test="${not empty mensagem}">
			<div class="alert alert-success">
				<strong>Confirmação!</strong> ${mensagem}
			</div>
		</c:if>

		<form action="/endereco" method="get">
			<button type="submit" class="btn btn-primary">Novo</button>
		</form>

		<hr>
		<c:if test="${not empty enderecos}">
			<h4>Total de Endereços: ${enderecos.size()}</h4>

			<table class="table table-striped">
				<thead>
					<tr>
						<th>ID</th>
						<th>CEP</th>
						<th>Logradouro</th>
						<th>Complemento</th>
						<th>Bairro</th>
						<th>Localidade</th>
						<th>UF</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="endereco" items="${enderecos}">
						<tr>
							<td>${endereco.id}</td>
							<td>${endereco.cep}</td>
							<td>${endereco.logradouro}</td>
							<td>${endereco.complemento}</td>
							<td>${endereco.bairro}</td>
							<td>${endereco.localidade}</td>
							<td>${endereco.uf}</td>
							<td><a href="/endereco/${endereco.id}/excluir">excluir</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>

		<c:if test="${empty enderecos}">
			<h4>Não existem enderecos cadastrados!!!</h4>
		</c:if>

	</div>
</body>
</html>