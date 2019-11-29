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

if(!empty($_POST['doc_vat'])) {

        foreach($_POST['doc_vat'] as $value){
            $VAT_doctor = $value;
        }
}
$VAT_client = $_REQUEST['client_VAT'];
$date_timestamp = $_REQUEST['date_timestamp'];
$appointment_description = $_REQUEST['descp'];


$sql = "insert into appointment values ('$VAT_doctor', '$VAT_client', '$date_timestamp', '$appointment_description');";

if ($conn->query($sql) == TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
?>

 <form action="client.php" method="post">
 <p><input type="submit" value="Go to search"/></p>
 </form>

 </body>
</html>