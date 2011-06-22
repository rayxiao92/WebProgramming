<?php
	session_start();
	$_SESSION['name'] = 'Blinky';
	echo "<h1>Hello " . $_SESSION['name'] . ". Your session ID is " . session_id() . "</h1>\n";
?>
