
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-BR">
<head>

<link rel="shortcut icon" href="img/medalha.jpg" type="image/x-icon">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

	 <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	<!-- Custom fonts for this template -->
<link
	href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/one-page-wonder.css" rel="stylesheet">

<body>
	<!DOCTYPE html>
<html lang="pt-br">


<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Incluir Medalhas</title>


</head>

<body>
	<!-- Navigation -->
	<nav
		class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">		
        	<img src="img/medalha.jpg" width="100" heigth="100" alt="Projeto - Medalhas">
	<div class="container">
		<a class="navbar-brand" href="index.jsp">Página Inicial</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a href="IncluirMedalhas.jsp"
					class="btn btn-primary pull-right h2">Novo Quadro de Medalhas</a></li>
			</ul>
		</div>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a href="VisualizarMedalhas.jsp"
					class="btn btn-primary pull-right h2">Visualizar Quadro de Medalhas</a></li>
			</ul>
		</div>
	</div>
	</nav>


	<!-- Container Principal -->

	<header class="masthead text-center text-white">
	<div id="main" class="container">
		<h3 class="page-header">Incluir Medalhas</h3>
		<!-- Formulario para inclusao de clientes -->
		<form action="controller.do" method="post">
			<!-- area de campos do form -->
			<div class="row">
				<div class="form-group col-md-12">
					<label for="nomePais">Nome do País:</label> <input type="text"
						class="form-control" name="nomePais" id="nomePais" required
						maxlength="100" placeholder="Nome do país">
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-3">
					<label for="ouro">Ouro</label> <input type="number"
						class="form-control" name="ouro" id="ouro" min="1" max="100"
						maxlength="15" placeholder="Medalha(s) de ouro">
				</div>
			</div>
				<div class="row">
					<div class="form-group col-md-3">
						<label for="prata">Prata</label> <input type="number"
							class="form-control" name="prata" id="prata" required
							maxlength="100" min="1" max="100"
							placeholder="Medalha(s) de prata">
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-3">
						<label for="bronze">Bronze</label> <input type="number"
							class="form-control" name="bronze" id="bronze" required
							maxlength="100" min="1" max="100"
							placeholder="Medalha(s) de bronze">
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-3">
						<label for="nomeModalidade">Modalidade</label> <input type="text"
							class="form-control" name="nomeModalidade" id="nomeModalidade"
							required maxlength="100" placeholder="Digite a modalidade">
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-3">
						<label for="idAno">Ano</label> <input type="number"
							class="form-control" name="idAno" id="idAno" min="1896"
							max="2018" step="2" required maxlength="100"
							placeholder="Ano">
					</div>
				</div>

				<hr />
				<div id="actions" class="row">
					<div class="col-md-12">
						<button onclick="return alert('País incluído com sucesso!');" type="submit" class="btn btn-primary" name="command"
							value="CriarMedalhas">Salvar</button>
						<a href="index.jsp" class="btn btn-secondary">Cancelar</a>
					</div>
				</div>
		</form>
	</div>
	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	</header>
	<!-- Footer -->
	<footer class="footerss">
		<div class="footerss text-center py-3">
			<small><figure class="gif"> 
            <img src="img/medalhas.gif" width="50" height="50">
      </figure>&copy; André Gianfratti RA: 817114511</small>
		</div>
	</footer>
</body>

</html>