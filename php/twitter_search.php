<form method="post">
	<p>Search <input type="text" name="term" /> <input type="submit"/></p>
</form>

<?php
	$input = $_POST['term'];
	$whitelist = array('ndfootball', 'FightingIrishND', 'NotreDameCFB', 'KeithArnoldNBC', 'uhnd');
	$api = 'http://search.twitter.com/search.json?q=';
	foreach ($whitelist as $i) {
		$results = file_get_contents($api . $i);
		$json = json_decode($results);
		foreach ($json->{'results'} as $r) {
			$text = $r->{'text'};
			$text = preg_replace("/([\w]+:\/\/[\w-?&;#~=\.\/\@]+[\w\/])/i","<a href=\"$1\" target=\"_blank\">$1</a>", $text);
			if (preg_match("/$input/i", $text)) {
				print "<p><strong>" . $i . "</strong> - " . $text . "</p>";
			}
		}
	}
?>
