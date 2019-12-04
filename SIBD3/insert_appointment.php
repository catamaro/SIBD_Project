<html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

 <body>
<?php

/*$host = "localhost";
$user = "root";
$pass = "";
$db = "SIBD";
$dsn = "mysql:host=$host;dbname=$db";*/

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

$VAT_doctor = $_REQUEST['doc_vat'];
$VAT_client = $_REQUEST['client_VAT'];
$date_timestamp = $_REQUEST['date_timestamp'];
$appointment_description = $_REQUEST['descp'];

$sql = $conn->prepare("insert into appointment values (:VAT_doctor, :VAT_client, :date_timestamp, :appointment_description);");


$sql->bindParam(':VAT_doctor',	 $VAT_doctor);
$sql->bindParam(':VAT_client',  $VAT_client);
$sql->bindParam(':date_timestamp',$date_timestamp);
$sql->bindParam(':appointment_description',$appointment_description);

?>
	<form action="client.php" method="post">
<?php if ($sql->execute()): ?>

	<h2>Appointment inserted:</h2>
	<p>Doctor:<?php echo $VAT_doctor ?></p>
	<p>Client:<?php echo $VAT_client ?></p>
	<p>Date:<?php echo $date_timestamp ?></p>
	<p>Description:<?php echo $appointment_description ?></p>

<?php else :
    echo "Error: " . $sql . "<br>" ;
endif;
?>
	 <p><input type="submit" class="btn btn-info" value="Go to search"/></p>
	</form>

 </body>
</html>