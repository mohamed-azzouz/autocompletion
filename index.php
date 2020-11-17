<?php
session_start();

require 'class/bdd.php';

$bdd = new bdd();


$bdd->connect();

?>

<!DOCTYPE html>
<html>
<head>
	<title>AutoCompletion</title>
	
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript" src="js/autocompletion.js"></script>
	<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
</head>
<body>
	<main id="mainIndex">
		
		
		<section id="formSearchBar">
			<form method="post" action="" autocomplete="off">
				<input type="search" name="searchBar" id="searchBar" placeholder="Joueur">
				<input type="submit" name="search" value="Rechercher">
				<div id="player"></div>
			</form>
			<?php
			if (isset($_POST['search'])) 
			{
				
				header('location:recherche.php?search='.$_POST["searchBar"].'');
			}
			?>
		</section>
		

		<br/>
		<br/>
		

	</main>

</body>
</html>


