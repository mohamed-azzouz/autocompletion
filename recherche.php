<?php

session_start();

require 'class/bdd.php';

$bdd = new bdd();


$bdd->connect();


if (isset($_GET['search'])) 
{
	$search = $_GET['search'] ;
}
else
{
	header('location:index.php');
}

$playerSearch = $bdd->execute("SELECT * FROM nbaPlayer WHERE nom LIKE '$search%'")

?>

<!DOCTYPE html>
<html>
<head>
	<title>Recherche</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript" src="js/autocompletion.js"></script>
</head>
<?php
include "navBar.php";

?>
<body>
	<main id="mainRecherche">
		
		<section id="searchPlayer">
			<?php
			if (!empty($playerSearch)) 
			{
				foreach ($playerSearch as $player) 
				{?>
					
					<div id="players">
						<img src="photoPlayer/<?php echo $player[3]; ?>" width="100"> 
						<br>
						<?php echo "<a href='element.php?id=$player[0]'>".$player[1]."</a><br/>"."<br>"."Equipe : ".$player[2]; ?>			
					</div>

					

				<?php
				}		
			}

			?>
		</section>
	</main>

</body>
</html>