<html>
 <body>
<?php
 $host = "localhost";
 $user = "root";
 $pass = "proj_part3";
 $db = "proj_part2";
 $dsn = "mysql:host=$host;dbname=$db";

 /*$host = "db.tecnico.ulisboa.pt";
 $user = "ist187077";
 $pass = "qrtr9733";
 $dsn = "mysql:host=$host;dbname=$user";*/

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

$sql = "insert into appointment values ('$VAT_doctor', '$VAT_client', '$date_timestamp', '$appointment_description');";
?>
	<form action="client.php" method="post">
<?php if ($conn->query($sql) == TRUE): ?>

	<h2>Appointment inserted:</h2>
	<p>Doctor:<?php echo $VAT_doctor ?></p>
	<p>Client:<?php echo $VAT_client ?></p>
	<p>Date:<?php echo $date_timestamp ?></p>
	<p>Description:<?php echo $appointment_description ?></p>

<?php else :
    echo "Error: " . $sql . "<br>" ;
endif;
?>
	 <p><input type="submit" value="Go to search"/></p>
	</form>

 </body>
</html>