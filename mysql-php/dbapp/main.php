<?php
	session_start();
	if ($_SESSION['login'] == null)
	{
		header("Location: index.php");
		exit;
	}
	require_once('templates/header.tpl');
	print "<h4 align=\"right\"><a href=\"logout.php\">Logout</a></h4>\n";
	print "<h3>Welcome!</h3>\n";
	require_once('templates/footer.tpl');
?>
