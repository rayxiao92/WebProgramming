<?php
	$players = array();
	// Database connection values
	$myUserName = "webapps";
	$myPassword = "iddqdiddqd";
	$myDatabase = "game";
	$myHost = "localhost";

	// Connect to database; mysql_connect() returns database handle
	$dbh = mysql_connect($myHost, $myUserName, $myPassword) or die ('I cannot connect to the database because: ' . mysql_error());

	// Choose database
	mysql_select_db($myDatabase) or die("Unable to select database");

	// Specify and run query
	$myQuery = "SELECT handle, email_address, gold_amount, karma, hp, mp, skill_level FROM players WHERE active = 1";
	$myResult = mysql_query($myQuery);

	// Get the rows / records / results
	while ($row = mysql_fetch_array($myResult)) {
		array_push($players, array($row['handle'], $row['email_address'], $row['gold_amount'], $row['karma'], $row['hp'], $row['mp'], $row['skill_level']));
	}

	// Remember to close the database handle
	mysql_close($dbh);
?>

<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<title>MMORPG Players</title>
</head>

<body>
	<table border="1">
		<tr>
			<th>handle</th>
			<th>email</th>
			<th>gold</th>
			<th>karma</th>
			<th>hp</th>
			<th>mp</th>
			<th>skill</th>
		</tr>
		<?php
			foreach ($players as $p) {
				echo "<tr>\n";
				for ($i = 0; $i < count($p); $i++) {
					echo "<td>" . $p[$i] . "</td>\n";
				}
				echo "</tr>\n";
			}
		?>
	</table>
</body>
</html>

