<%@ page language="java" contentType="text/html; " pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta author="Misael Nascimento">
<!-- Folhas de Estilo boostap 4-->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<!--Minha  Folhas de Estilo -->
<link rel="stylesheet" href="css/myStylesheet.css" type="text/css">

<!-- ícones fontawesome-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">

<title>Mardellí - Para mulheres Marcantes, Lindas e elegantes</title>
</head>

<body>
	<header>
		<a href="produtoController">CADASTRAR NOVO PRODUTO</a>
		<!-- -->
		<div id="conteudoModalLogin" class="modal fade">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content text-center">
					<!-- Modal Titulo -->
					<div class="modal-header">
						<p>Entre para continuar aproveitando as ofertas da Mardellí</p>
						<button class="close" data-dismiss="modal" aria-label="Fechar">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>

					<!--Modal Conteudo -->
					<div class="modal-body text-center">
						<form class="form-signin">
							<img class="mb-2" src="img/Logo1.png" width="150px">
							<h1 class="mb-1">Login</h1>
							<input type="email" name="email" class="form-control"
								placeholder="Digite seu e-mail" required autofocus> <input
								type="password" name="senha" class="form-control"
								placeholder="Digite sua senha" required>

							<div class="checkbox mb-3">
								<label><input type="checkbox" name="lembrar">
									Manter Conectado</label>
							</div>
							<input type="submit" name="enviar" value="Entrar"
								class="btn btn-primary btn-lg btn-block">
						</form>
					</div>

					<!-- Modal Rodapé -->
					<div class="modal-footer">
						<p>ou conecte-se com</p>
						<button type="button" class="btn btn-light">
							<img src="img/Produtos/googleLogin.png" width="40px">
						</button>
						<button type="button" class="btn btn-light">
							<img src="img/Produtos/facebookLogin.png" width="40px">
						</button>
					</div>
					<div class="row">
						<a class="col-6 btn btn-link">Não Consegue entrar?</a> <a
							class="col-6 btn btn-link" href="criarConta.html">Criar uma
							Conta</a>
					</div>
				</div>
			</div>
		</div>


		<div id="topo">
			<!-- logo-->
			<div class="topo1">
				<a href="index.html"> <img src="img/Logo1.png"
					alt="Logo Mardellí">
				</a>
			</div>
			<!--Pesquisa-->
			<div class="topo2">
				<div class="navbar">
					<form class="form-inline" action="">
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Tudo o que você precisa" size="70">
							<div class="input-group-append">
								<a href="#"> <span class="input-group-text"> <i
										class="fas fa-search"></i>
								</span></a>
							</div>
						</div>
					</form>
				</div>
			</div>
			<!-- Login-->
			<div>
				<table class="topo3">
					<tbody>
						<tr>
							<th><a href="#"><i class="fas fa-user-circle"></i></a></th>
							<th><a href="#" class="">Olá Visitante </a></th>
							<th><a href="#"><i class="fas fa-shopping-cart col-3"></i></a></th>
							<th></th>
						</tr>
						<tr>
							<th></th>
							<th></a> <a href="#" data-toggle="modal"
								data-target="#conteudoModalLogin">Entrar</a> <a
								href="criarConta.html" class="">Cadastrar</a></th>
						</tr>
					</tbody>
				</table>
			</div>
			<!--Menu-->
			<div class="nav-bar menu" id="menu">

				<nav>
					<ul class="nav">

						<li class="nav-item dropdown"><a class="nav-link" href="#"
							id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"> <i
								class="fas fa-bars"></i> Departamentos
						</a>
							<div class="dropdown-menu"
								aria-labelledby="navbarDropdownMenuLink">
								<a class="dropdown-item" href="#">DEPARTAMENTO 1</a> <a
									class="dropdown-item" href="#">DEPARTAMENTO 2</a> <a
									class="dropdown-item" href="#">DEPARTAMENTO 3</a>
							</div></li>
						<li><a class="nav-link" href="#"> Sapatilhas </a></li>
						<li><a class="nav-link" href="#"> Tênis </a></li>
						<li><a class="nav-link" href="#"> Bolsas </a></li>
						<li><a class="nav-link" href="#"> Maquiagem </a></li>
						<li><a class="nav-link" href="#"> Biquinis </a></li>
						<li><a class="nav-link" href="#"> Relógios </a></li>
						<li><a class="nav-link" href="#"> Tal mãe | Tal Filha </a></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>

	<section class="section-1">
		<form method="GET" action="indexController">
			<c:forEach var="p" items="${produto}">
				<div class="card-group coluna-prodt-1">

					<div class="card" style="width: 18rem;">
						<img class="card-img-top" src="img/Produtos/p1.jpg" alt="">
						<div class="card-body text-center">
							<h5 class="card-title">${p.nome}</h5>
							<p class="card-text">${p.descricao}</p>
							<a href="indexController.jsp" class="btn btn-primary">R$
								${p.valor}</a>
						</div>
					</div>

				</div>
			</c:forEach>
		</form>

		<!-- 
		<div class="card-group coluna-prodt-2">

			<div class="card" style="width: 18rem;">
				<img class="card-img-top" src="img/Produtos/p5.jpg" alt="">
				<div class="card-body text-center">
					<h5 class="card-title">Sapatilha</h5>
					<p class="card-text">Lorem ipsum dolor sit amet consectetur
						adipisicing elit. Possimus voluptatum in quibusdam...</p>
					<a href="especificacoesProduto.html" class="btn btn-primary">R$
						49,99</a>
				</div>
			</div>

		</div>
		 -->
	</section>


	<footer>

		<!-- Copyright -->
		<div class="footer-copyright text-center py-3 text-light bg-dark">
			&copy; 2019 Copyright <a
				href="https://linkedin.com/in/misael-nascimento-57681659 ">
				Misael Nascimento </a>
		</div>
		<!-- Copyright -->


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