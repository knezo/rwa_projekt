<!doctype html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8">
		<title>Prijava benda/izvođača</title>
		<style>
			input {
				margin-top: 25px;
			}
			
			hr {
				margin-top: 25px;
				color: blue;
			}
		</style>
	</head>
	<body>
		<form action="apl.php" method="POST">
			<b>Korisničko ime: </b><input type="text" name="username" required> <br>
			<b>Lozinka: </b><input type="password" name="lozinka" required> <br>
		</form>
		<hr>
		<?php
			if($_GET["odabir"] == "bend") {
				echo "<form id="."'regBend'".">";
				echo"<b>Naziv benda/izvođača: </b> <input type="."'text'"." name="."'band_name'"." required> <br>";
				echo "<b>Žanr benda/izvođača: </b><input type="."'text'"." name="."'zanr'"." required> <br>";
				echo"<input type="."'submit'"."><br>";
				echo"</form>";	
			} 
		?>	
	</body>