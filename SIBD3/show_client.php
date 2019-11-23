<html>
 <body>
<?php
 $dbhost = "localhost";
 $dbuser = "root";
 $dbpass = "proj_part3";
 $db = "proj_part2";
 $conn = new mysqli($dbhost, $dbuser, $dbpass,$db) or die("Connect failed: %s\n". $conn -> error);
   
$client_VAT = $_REQUEST['client_vat'];
$client_name = $_REQUEST['client_name'];
$client_street = $_REQUEST['client_address'];
$date_timestamp = $_REQUEST['date_appointment'];
$csql = "SELECT *
		FROM client as c
		WHERE client_vat LIKE '%$client_VAT%'
		AND c.client_name LIKE '%$client_name%'
		AND c.client_street LIKE '%$client_street%'";
echo("<h2>Clients found:</h2>");
$crows = $conn->query($csql);
echo("<p>$csql</p>");
foreach ($crows as $row){
	echo $row['client_name'] ."<br>\n";
}

$dsql = "SELECT DISTINCT employee_name
		FROM employee as e INNER JOIN appointment as a
		ON e.employee_VAT = a.VAT_doctor";

echo("<h2>Doctor found:</h2>");
echo("<p>$dsql</p>");
$drows = $conn->query($dsql);

foreach ((array)$drows as $row){
	echo $row['employee_name'] ."<br>\n";
}
 $conn = null;
?>
 </body>
</html>
