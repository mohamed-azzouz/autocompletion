<?php
session_start();

require 'class/bdd.php';

$bdd = new bdd();


$bdd->connect();

if (isset($_GET['id'])) 
{
	$idPlayer = $_GET['id'];	
}
else
{
	header('location:index.php');
}


$getPlayer = $bdd->execute("SELECT * FROM nbaPlayer WHERE id ='$idPlayer'");



?>

<!DOCTYPE html>
<html>
<head>
	<title>Player</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript" src="js/autocompletion.js"></script>
</head>
<?php
include "navBar.php";

?>

<body>
	<main id="mainElement">
		
		<section id="infoPlayer">
		
			<div>
				<table id="getPlayer">
				

					<tbody>
						<tr>
							<td></td>
							<td><img src="photoPlayer/<?php echo $getPlayer[0][1].".jpg"  ?>" width="100"></td>
						</tr>
						<tr>
							<td>Nom</td>
							<td><?php echo $getPlayer[0][1]; ?></td>
						</tr>

						<tr>
							<td>Equipe</td>
							<td>
								<img src="equipeNba/<?php echo $getPlayer[0][2].".png" ?>" width="50">
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</section>
	</main>

</body>
</html>