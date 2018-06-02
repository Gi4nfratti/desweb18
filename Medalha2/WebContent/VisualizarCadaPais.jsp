<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="model.Olimpiada"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

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
<title>Visualizar País e Medalhas</title>
<link rel="shortcut icon" href="img/medalha.jpg" type="image/x-icon">
</head>

<body>

	<!-- NavBar -->
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
						class="btn btn-primary pull-right h2">Novo Quadro de Medalhas</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>


	<!-- Container Principal -->
	<header class="masthead text-white">
		<div id="main" class="container">
			<h1 class="page-header">
				<u>Visualizar País # ${olimpiada.id}</u>
			</h1>
			<table class="table table-striped" cellspacing="0" cellpadding="0">
						<thead>
							<tr>
								
								<th>Nome do País</th>
								<th>Modalidade</th>
								<th>Medalhas de Ouro</th>
								<th>Medalhas de Prata</th>
								<th>Medalhas de Bronze</th>
								<th>Ano</th>
							</tr>
						</thead>
						<tbody>
							
								<tr>
									<td>${olimpiada.nomePais }</td>
									<td>${olimpiada.nomeModalidade }</td>
									<td>${olimpiada.ouro }</td>
									<td>${olimpiada.prata }</td>
									<td>${olimpiada.bronze }</td>
									<td>${olimpiada.idAno }</td>
								</tr>

						</tbody>
					</table>
            <div id="actions" class="row">
                <div class="col-md-12">
                    <a href="VisualizarMedalhas.jsp"
						class="btn btn-primary">Voltar</a>
                </div>
            </div>
            </form>
        </div>
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