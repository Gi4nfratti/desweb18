<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-BR">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Projeto Olimpíada</title>
<link rel="shortcut icon" href="img/medalha.jpg" type="image/x-icon">

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
						class="btn btn-primary pull-right h2">Novo Quadro de Medalhas</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Container Principal -->

	<header class="masthead text-center text-white">

		<div id="main" class="container">
			<form action="controller.do" method="post">
				<div class="table-responsive col-md-12">
					<div  class="col-md-6">
						<div class="input-group h2">
							<input name="data[search]" class="form-control" id="search" type="hidden" placeholder="Pesquisar Medalhas (deixe vazio para trazer todos)">
							<span class="input-group-btn">
							
								<button class="btn btn-primary" type="submit" name="command" value="ListarOlimpiadaBuscar">
									
									<span class="glyphicon glyphicon-search">Atualizar lista</span>
								</button>
							</span>
						</div>
					</div>
					<table class="table table-striped" cellspacing="0" cellpadding="0">
						<thead>
							<tr>
								<th>ID</th>
								<th>Ouro</th>
								<th>Prata</th>
								<th>Bronze</th>
								<th>Nome da Modalidade</th>
								<th>Nome do País</th>
								<th>Ano</th>
								<th class="actions">Ações</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="olimpiada" items="${lista }">
								<tr>
									<td>${olimpiada.id }</td>
									<td>${olimpiada.ouro }</td>
									<td>${olimpiada.prata }</td>
									<td>${olimpiada.bronze }</td>
									<td>${olimpiada.nomeModalidade }</td>
									<td>${olimpiada.nomePais }</td>
									<td>${olimpiada.idAno }</td>
									<td class="actions">
										<a class="btn btn-info btn-xs"
										href="controller.do?command=EditarMedalhas&id=${olimpiada.id }">Editar</a>
										<a class="btn btn-danger btn-xs" href="controller.do?command=ExcluirMedalhas&id=${olimpiada.id }" onclick="return confirm('Você tem certeza que quer excluir este país e suas medalhas?');">Excluir</a>
									</td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
				<!-- /#list -->

                
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
	<script type="text/javascript">
                $("#delete-modal").on('show.bs.modal', function(event) {
                    var button = $(event.relatedTarget); //botao que disparou a modal
                    var recipient = button.data('olimpiada');
                    $("#id_excluir").val(recipient);
                });
            </script>
            
</body>

</html>