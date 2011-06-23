<?php
	require_once('templates/header.tpl');
	if (isset($_GET['error'])) {
		echo "<p class=\"error\">Incorrect login!</p>\n";
	}
?>

	<form method="post" action="login.php">
		<p>Login <input type="text" name="login" size="15" maxlength="15"></p>
		<p>Password <input type="password" name="password" size="15"></p>
		<p><input type="submit" value="Submit"> <input type="reset"></p>
 	</form>

<?php
	require_once('templates/footer.tpl');
?>
