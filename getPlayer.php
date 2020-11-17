<?php
session_start();

require 'class/bdd.php';

$bdd = new bdd();


$bdd->connect();

if (!empty($_POST['key'])) 
{
	$_POST["key"] = htmlspecialchars($_POST["key"]);
	$recherche = $_POST["key"];

	if (isset($recherche))
	{
		$recherche = strtolower($recherche);

		
		$player = $bdd->execute("SELECT * FROM nbaPlayer WHERE nom LIKE '$recherche%' ");

		if (!empty($player)) 
			{?>

				<?php
				foreach ($player as $name) 
					{?>
						<div id="listPlayer">
							<a href='element.php?id=<?php echo $name[0]; ?>'><?php echo $name[1];?></a><br/>  
						</div>
						<?php	
					}



				}

			}
		}

		?>