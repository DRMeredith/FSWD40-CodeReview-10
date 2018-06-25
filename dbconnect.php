<?php
// this will avoid mysql_connect() deprecation error.
error_reporting( ~E_DEPRECATED & ~E_NOTICE );


define('DBHOST', 'localhost');
define('DBUSER', 'Sassy');
define('DBPASS', 'pipthe100');
define('DBNAME', 'cr10_dan_meredith_biglibrary');

$conn = mysqli_connect(DBHOST,DBUSER,DBPASS,DBNAME);


if ( !$conn ) {
 die("Connection failed : " . mysqli_error());
}


?>