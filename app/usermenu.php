<?php
	if (!isset($usrname) or !isset($pasw)) {
		header( "Location: http://localhost/Projekt-RWA/testnav.php" );
	} elseif (empty($usrname) or empty($pasw)) {
		header( "Location: http://localhost/Projekt-RWA/testnav.php" );
	} else { 
		$user = $_POST['usrname'];
		$pass = $_POST['pasw'];
		
		$fhandler = fopen("users.txt", 'r');
		$nasao = false;
		while ($line = fgets ($fhandler)) {
			if ($line!==FALSE){
				if ((strrpos($line, $user)!==FALSE) && (strrpos($line, $pass)!==FALSE)) {
					$nasao=true; 
					break;
				}
			}
		}
		if ($nasao){
			$time = time();
			session_start();
			$_SESSION['user'] = $user;
			$_SESSION['time'] = $time;
			header( "Location: Obrazac1.php" );
		} else 
			echo 'Nepostojeci username i/ili password.';
	}
?> 
<!doctype html>
<head>
	<title>User</title>
</head>
<body>
	<header>
	<h1>Timeline: </h1></header>
	<div>
		<div>
			<header>Your events:</header>
			<ul>
				<li>Event 1: -||- </li>
				<li>Event 2: -||- </li>
				<li>Event 3: -||- </li>
			</ul>
		</div>
			
		<div>
		</div>
	</div>
	<footer></footer>
</body>