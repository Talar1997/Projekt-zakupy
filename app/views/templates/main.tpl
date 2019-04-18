<!doctype html>
<html lang="pl">
<head>
	<title>{$page_title}</title>
	<meta charset="utf-8">
	<meta name="viewport"    content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Sprawdź otwarte sklepy w twojej okolicy w niedziele. Bądź częścią społeczności, dodawaj nowe obiekty, zdobywaj reputacje!">
	<meta name="author"      content="Adam Talarczyk">

	<link rel="stylesheet" type="text/css" href="{$conf->styles}/alertify.css">
	<link rel="stylesheet" type="text/css" href="{$conf->styles}/idcard.css" >

	<!--Style z gotowca-->
	<link rel="shortcut icon" href="{$conf->images}/gt_favicon.png">
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="{$conf->styles}/bootstrap.min.css">
	<link rel="stylesheet" href="{$conf->styles}/font-awesome.min.css">
	<link rel="stylesheet" href="{$conf->styles}/bootstrap-theme.css" media="screen" >
	<link rel="stylesheet" href="{$conf->styles}/main.css">

	<script type="text/javascript" src="{$conf->scripts}/alertify.js"></script>
</head>
<body>
	<div class="home">
		<!-- Fixed navbar -->
		<div class="navbar navbar-inverse navbar-fixed-top headroom" >
			<div class="container">
				<div class="navbar-header">
					<!-- Button for smallest screens -->
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
					<a class="navbar-brand" href="{$conf->action_root}main">Zakupy w niedziele</a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav pull-right">
						<li class="active"><a href="{$conf->action_root}main">Strona główna</a></li>
						{if !core\RoleUtils::inRole("logged")}
							<li><a href="{$conf->action_root}login">Zaloguj</a></li>
							<li><a class="btn" href="{$conf->action_root}register">Rejestracja</a></li>
						{/if}
						{if core\RoleUtils::inRole("logged")}
							<li class="dropdown">
								<a class="dropdown-toggle btn" data-toggle="dropdown">Narzędzia <b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="{$conf->action_root}xxx">Panel główny</a></li>
									<li><a href="{$conf->action_root}xxx">Szukaj sklepu</a></li>
									<li><a href="{$conf->action_root}xxx">Dodaj sklep</a></li>
									<li><a href="{$conf->action_root}xxx">Ranking użytkowników</a></li>
									<li><a href="{$conf->action_root}xxx">Mój profil</a></li>
									{if core\RoleUtils::inRole("admin")}
										<li class="divider"></li>
										<li><a href="{$conf->action_root}yyy">Moderuj sklepy</a></li>
										<li><a href="{$conf->action_root}yyy">Moderuj użytkowników</a></li>
										<li><a href="{$conf->action_root}yyy">Zgłoszenia</a></li>
										<li><a href="{$conf->action_root}test">Debuger</a></li>
										<li class="divider"></li>
									{/if}
									<li><a href="{$conf->action_root}logout">Wyloguj</a></li>
								</ul>
							</li>
						{/if}
					</ul>
				</div><!--/.nav-collapse -->
			</div>
		</div>
		<!-- /.navbar -->
	</div>

	<!-- Head -->
	{block name=head}{/block}

	<!-- Intro -->
	{block name=intro}{/block}

	<!-- Jumbotron -->
	{block name=jumbotron}{/block}

	{block name=generated}{/block}

	<footer id="footer" class="top-space">
		<div class="footer1">
			<div class="container">
				<div class="row">

					<div class="col-md-3 widget">
						<h3 class="widget-title">Kontakt</h3>
						<div class="widget-body">
							<a href="mailto:#">Adam.Talarczyk@hotmail.com</a><br><br/>

							<a href="https://github.com/Talar1997">https://github.com/Talar1997</a> <br/> <br/>

							<p>Programowanie Aplikacji Webowych, grupa 3</p>
						</div>
					</div>

					<div class="col-md-3 widget">

					</div>

					<div class="col-md-6 widget">
						<h3 class="widget-title">O projekcie</h3>
						<div class="widget-body">
							<p>Projekt stworzony na potrzeby zajęć Języki programowania dynamicznych stron internetowych oraz Projektowanie bazodanowych aplikacji webowych. Wykorzystane zasoby: Framework PHP Amelia - http://amelia-framework.kudlacik.eu/, Smarty - https://www.smarty.net/, Medoo - https://medoo.in/, Alertify.js - https://alertifyjs.com/, Szablon HTML - https://www.gettemplate.com/</p>
						</div>
					</div>

				</div> <!-- /row of widgets -->
			</div>
		</div>

		<div class="footer2">
			<div class="container">
				<div class="row">

					<div class="col-md-6 widget">
						<div class="widget-body">
							<p class="simplenav">
								<a href="{$conf->action_root}main">Strona Główna</a> |
								{if !core\RoleUtils::inRole("logged")}
									<a href="{$conf->action_root}login">Zaloguj</a> |
									<a href="{$conf->action_root}register">Zarejestruj</a>
								{/if}
								{if core\RoleUtils::inRole("logged")}
									<a href="{$conf->action_root}logout">Wyloguj</a>
								{/if}
							</p>
						</div>
					</div>

					<div class="col-md-6 widget">
						<div class="widget-body">
							<p class="text-right">
								Copyright &copy; 2019, Adam Talarczyk. Designed by <a href="http://gettemplate.com/" rel="designer">gettemplate</a>
							</p>
						</div>
					</div>

				</div> <!-- /row of widgets -->
			</div>
		</div>

	</footer>

	{block name=alerts}
			{if $msgs->isError()}
				<script type="text/javascript">
				{foreach $msgs->getMessages() as $msg}
					alertify.error("{$msg->text}");
				{/foreach}
				</script>
			{/if}

			{if $msgs->isInfo()}
				<script type="text/javascript">
					{foreach $msgs->getMessages() as $msg}
					alertify.success("{$msg->text}");
					{/foreach}
				</script>
			{/if}
	{/block}

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="{$conf->scripts}/headroom.min.js"></script>
	<script src="{$conf->scripts}/jQuery.headroom.min.js"></script>
	<script src="{$conf->scripts}/template.js"></script>
</body>
</html>
