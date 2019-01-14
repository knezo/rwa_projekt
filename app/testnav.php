
	<!doctype html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8">
		<title>Navigation</title>
	</head>
	<body>
<?php
	$servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "organizacija_nastupa";

    // Stvaranje konekcije na bazu
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Provjera uspjesnosti spajanja na bazu
    if ($conn->connect_error) {
        die("Uspostavljanje konekcije na bazu nije uspjelo: ". $conn->connect_error);
    } 

    $sql = "SELECT * FROM BEND";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $result = $stmt->get_result();

    //  Provjera ima li rezultata
    if ($result->num_rows > 0) {
        // Printanje rezultata
        while($row = $result->fetch_array()) {
			echo "</br>";
            echo "Bend num." . $row[0]. " - Ime benda: " . $row[1]. " " ."<a href="."index.html"."> Link na stranicu </a>". "<br>";
        }
    } else {
        echo "Nema rezultata";
    }

    //  Zatvaranje konekcije
    $stmt->close();
?>
</body>