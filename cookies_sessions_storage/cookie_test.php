<?php
	if (isset($_COOKIE['name'])) {
		echo "<h1>The name stored in the cookie is " . $_COOKIE['name'] . "</h1>\n";
	}
	else {
		setcookie("name", "Blinky");
		setcookie("phrase", "Get some hot zima soup in the Dagobah System");
		echo "<h1>No cookie was found!</h1>\n";
	}
?>
