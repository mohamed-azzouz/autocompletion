<nav class="topnav">
	<a class="active" href="index.php">Home</a>
	
	<div class="search-container">
		<form method="post" action="">
			<input type="text" name="searchBar" id="searchBar1" placeholder="Joueur" autocomplete="off">
			<input type="submit" name="search" value="Recherche">
		</form>
		<?php
			if (isset($_POST['search'])) 
			{
				
				header('location:recherche.php?search='.$_POST["searchBar"].'');
			}
			?>
	</div>
</nav>
	<div id="player1"></div>