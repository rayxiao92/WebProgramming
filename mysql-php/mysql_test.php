<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<title>MySQL PHP Test</title>
</head>

<body>
        <table name="Foo" width="300" border="1" cellspacing="0">
                <tr>
                        <th>ID</th>
                        <th>Phrase</th>
                </tr>
                <?php
                        $myUserName = "webapps";
                        $myPassword = "iddqdiddqd";
                        $myDatabase = "test";
                        $myHost = "localhost";
                        $dbh = mysql_connect($myHost, $myUserName, $myPassword) or die ('I cannot connect to the database because: ' . mysql_error());
                        mysql_select_db($myDatabase) or die("Unable to select database");
                        $myQuery = "SELECT * FROM foo";
                        $myResult = mysql_query($myQuery);
                        while ($myRow = mysql_fetch_array($myResult)) {
                                print "<tr><td>$myRow[id]</td><td>$myRow[phrase]</td></tr>\n";
                        }
                        mysql_close($dbh);
                ?>
        </table>
</body>
</html>
