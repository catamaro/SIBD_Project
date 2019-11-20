<html>
 <body>
<?php
$host = "db.tecnico.ulisboa.pt";
$user = "ist187074";
$pass = "rxmm7788";
$dsn = "mysql:host=$host;dbname=$user";
try
{
$connection = new PDO($dsn, $user, $pass);
}
catch(PDOException $exception)
{
echo("<p>Error: ");
echo($exception->getMessage());
echo("</p>");
exit();
}
$client_VAT = $_REQUEST['client_vat'];
$client_name = $_REQUEST['client_name'];
$client_street = $_REQUEST['client_address'];
$sql = "SELECT * FROM client";
echo("<p>$sql</p>");
$nrows = $connection->query($sql);
foreach ($nrows as $row){
	print $row['client_name'];
	print "\n";
}
 $connection = null;
?>
 </body>
</html>
