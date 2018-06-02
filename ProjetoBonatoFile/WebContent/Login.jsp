<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
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
		<div class="container">		
        	<img src="img/medalha.jpg" width="100" heigth="100" alt="Projeto - Medalhas">
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
      	
       <!-- Formulario de Login -->
        <form action="controller.do" method="post">
				<div class="form-group">
					<div class="input-group col-md-12">
					   <h3>Login</h3>
					   </div>
				</div>
				<div class="form-group">
					<div class="input-group col-md-3">
					   <div class="input-group-addon"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span></div> 
					   <input type="email" name="username" id="username" class="form-control" maxlength="60" placeholder="E-mail" required/>
					</div>
				</div>
				<div class="form-group">
					<div class="input-group col-md-3">
					   <div class="input-group-addon"><span class="glyphicon glyphicon-option-horizontal" aria-hidden="true"></span></div> 
					   <input type="password" name="passwd" id="passwd" class="form-control" placeholder="Senha" required/>
					</div>
				</div>
				<div class="form-group">
				<span class="input-group col-md-3">
					<button type="submit" class="btn btn-primary" name="command" value="FazerLogin">Ok</button>
				</span>
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