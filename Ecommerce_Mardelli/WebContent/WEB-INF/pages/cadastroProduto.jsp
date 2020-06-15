<%@ page language="java" contentType="text/html; " pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html">
<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta author="Misael Nascimento">
<!-- Folhas de Estilo boostap 4-->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<link rel="stylesheet" href="css/myStylesheet.css" type="text/css">
<!-- Ã­cones fontawesome-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">

<title>MardellÃ­ - Para mulheres Marcantes, Lindas e elegantes</title>
</head>

<body>
	<header>
		<div id="topo">
			<!-- logo-->
			<div class="topo1">
				<a href="index.jsp"> <img src="img/Logo1.png"
					alt="Logo MardellÃ­">
				</a>
			</div>
			<!--Pesquisa-->
			<!-- Login-->
			<!--Menu-->

		</div>
	</header>

	<section id="novoProduto"
		class="container bg-light text-dark border sectionNovoProdt">

		<form method="POST" action="produtoController">
			<table class="table table-hover table-striped">
				<thead class="thead-dark">
					<tr>
						<th>Nome do Produto</th>
						<th>Descrição</th>
						<th>Qtd. Estoque</th>
						<th>valor</th>
						<th>Desconto</th>
						<th>Ações</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<c:forEach var="p" items="${produto}">
							<tr>
								<td>${p.nome}</td>
								<td>${p.descricao}</td>
								<td>${p.qtd_estoque}</td>
								<td>${p.valor}</td>
								<td>${p.desconto}</td>
								<td><a href="produtoController?acao=excluir&id=${p.id}"><i class="fas fa-trash-alt"></i></a>
									<a href="produtoController?acao=editar&id=${p.id}"><i class="fas fa-edit"></i></a></td>

							</tr>
						</c:forEach>
					</tr>
				</tbody>
			</table>
			<br>
			<hr>

			<h3>Cadastro de produtos</h3>
			<font color="#dc143c"><h3>${msg}</h3></font> <label>Nome do
				produto</label> <input name="nome" value="${nome}" class="form-control"
				id="nomeProdt" type="text" /><br> <label>Descrição</label>
			<textarea name="descricao" value="${descricao}" class="form-control"
				id="descricaoProdt" rows="3"></textarea>
			<div class="row">
				<div class="col-4">
					<label>Quantidade</label> <input name="qtd_estoque"
						value="${qtd_estoque}" class="form-control col-4" id="Quantidade"
						type="number" /><br>
				</div>
				<div class="col-4">
					<label>Valor</label> <input name="valor" value="${valor}"
						class="form-control col-4" id="valor" type="number" /><br>
				</div>
				<div class="col-4">
					<label>Desconto</label> <input name="desconto" value="${desconto}"
						class="form-control col-4" id="desconto" type="text" /><br>
				</div>
			</div>
			<div>
				<button class="btn btn-primary btn-sm" onclick="">Cancelar</button>
				<button class="btn btn-primary btn-sm" onclick="" value="salvar">Salvar</button>
			</div>
		</form>
	</section>

	<footer>
		<!-- Copyright -->
		<div class="footer-copyright text-center py-3 text-light bg-dark">
			&copy; 2019 Copyright <a
				href="https://linkedin.com/in/misael-nascimento-57681659 ">
				Misael Nascimento </a>
		</div>
		<!-- Copyright -->
		<script src="js/cadastrar.js"></script>
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
			integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
			crossorigin="anonymous"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
			integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
			crossorigin="anonymous"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
			integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
			crossorigin="anonymous"></script>
	</footer>
</body>

</html>