<html>
 <body>
<?php
/*$dbhost = "localhost";
 $dbuser = "root";
 $dbpass = "proj_part3";
 $db = "proj_part2";
 $conn = new mysqli($dbhost, $dbuser, $dbpass,$db) or die("Connect failed: %s\n". $conn -> error);*/
 $host = "db.tecnico.ulisboa.pt";
 $user = "ist18707";
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
$client_VAT = $_REQUEST['client_vat'];
$client_name = $_REQUEST['client_name'];
$client_birth_date = $_REQUEST['client_birth_date'];
$client_street = $_REQUEST['client_street'];
$client_city = $_REQUEST['client_city'];
$client_zip = $_REQUEST['client_zip'];
$client_gender = $_REQUEST['client_gender'];
$client_age = $_REQUEST['client_age'];

$sql = "insert into client values ('$client_VAT', '$client_name', '$client_birth_date', '$client_street', '$client_city', '$client_zip', '$client_gender', '$client_age');";

if ($conn->query($sql) == TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>

 <form action="client.php" method="post">
 <p><input type="submit" value="Go to search"/></p>
 </form>

 </body>
</html>