<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Alterar Medalhas</title>
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
    <!-- Barra superior com os menus de navegação -->
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
        <h3 class="page-header">Alterar Dados</h3>
        <form action="controller.do" method="post">
            <!-- area de campos do form -->
            <input type="hidden" name="id" value="${olimpiada.id }">
           <div class="row">
				<div class="form-group col-md-12">
					<label for="nomePais">Nome do País:</label> <input type="text"
						class="form-control" name="nomePais" id="nomePais" required
						maxlength="100" placeholder="Nome do país" value="${olimpiada.nomePais }">
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-3">
					<label for="ouro">Ouro</label> <input type="number"
						class="form-control" name="ouro" id="ouro" min="1" max="100"
						maxlength="15" placeholder="Medalha(s) de ouro" value="${olimpiada.ouro }">
				</div>
			</div>
				<div class="row">
					<div class="form-group col-md-3">
						<label for="prata">Prata</label> <input type="number"
							class="form-control" name="prata" id="prata" required
							maxlength="100" min="1" max="100"
							placeholder="Medalha(s) de prata" value="${olimpiada.prata }">
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-3">
						<label for="bronze">Bronze</label> <input type="number"
							class="form-control" name="bronze" id="bronze" required
							maxlength="100" min="1" max="100"
							placeholder="Medalha(s) de bronze" value="${olimpiada.bronze }">
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-3">
						<label for="nomeModalidade">Modalidade</label> <input type="text"
							class="form-control" name="nomeModalidade" id="nomeModalidade"
							required maxlength="100" placeholder="Digite a modalidade" value="${olimpiada.nomeModalidade }">
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-3">
						<label for="idAno">Ano</label> <input type="number"
							class="form-control" name="idAno" id="idAno" min="1896"
							max="2018" step="2" required maxlength="100"
							placeholder="Ano" value="${olimpiada.idAno }">
					</div>
				</div>

            <hr />
            <div id="actions" class="row">
                <div class="col-md-12">
                    <button onclick="return alert('País incluído com sucesso!');" type="submit" class="btn btn-primary" name="command" value="AlterarMedalhas">Salvar</button>
                    <a href="VisualizarMedalhas.jsp" class="btn btn-secondary">Cancelar</a>
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