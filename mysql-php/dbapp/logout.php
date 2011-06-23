<?php
	session_start();
	if ($_SESSION['login'] == null)
	{
		header("Location: index.php");
		exit;
	}
	session_destroy();
	require_once('templates/header.tpl');
?>

	<h4>You have successfully logged out of the system.</h4>
	<h4><a href="index.php">Return to login</a></h4>

<?php
	require_once('templates/footer.tpl');
?>
