<html>
 <body>
<?php
 //$dbhost = "localhost";
 //$dbuser = "root";
 //$dbpass = "proj_part3";
 //$db = "proj_part2";
 //$conn = new mysqli($dbhost, $dbuser, $dbpass,$db) or die("Connect failed: %s\n". $conn -> error);
 $host = "db.tecnico.ulisboa.pt";
 $user = "ist187077";
 $pass = "qrtr9733";
 $dsn = "mysql:host=$host;dbname=$user";

 try{
	 $conn = new PDO($dsn, $user, $pass);
 }
 catch(PDOException $exception){
	 echo("<p>Error: ");
	 echo($exception->getMessage());
	 echo("</p>");
	 exit();
 }

$client_VAT = $_REQUEST['client_VAT'];
$client_name = $_REQUEST['client_name'];
$client_street = $_REQUEST['client_address'];
$date_timestamp = $_REQUEST['date_appointment'];
$csql = "SELECT client_VAT, client_name
		FROM client 
		WHERE client_VAT LIKE '%$client_VAT%'
		AND client_name LIKE '%$client_name%'
		AND client_street LIKE '%$client_street%'";

$crows = $conn->query($csql);
if ($crows == FALSE)
{
	$info = $conn->errorInfo();
	echo("<p>Error: {$info[2]}</p>");
	exit();
}
echo("<h2>Clients found:</h2>");
foreach ($crows as $row){
	$c_VAT = $row['client_VAT'];
	$c_name = $row['client_name'];
	echo("<br><a href=\"show_appointments.php?client_VAT=");
	echo($c_VAT);
	echo("\">$c_name</a></br>\n");
}

$dsql = "SELECT DISTINCT employee_name
		FROM employee as e INNER JOIN appointment as a
		ON e.employee_VAT = a.VAT_doctor";

echo("<h2>Doctor found:</h2>");
$drows = $conn->query($dsql);

foreach ((array)$drows as $row){
	echo $row['employee_name'] ."<br>\n";
}
 $conn = null;
?>
 </body>
</html>
