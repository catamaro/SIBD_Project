<html>
 <body>
<?php
 $dbhost = "localhost";
 $dbuser = "root";
 $dbpass = "proj_part3";
 $db = "proj_part2";
 $conn = new mysqli($dbhost, $dbuser, $dbpass,$db) or die("Connect failed: %s\n". $conn -> error);
 

if(!empty($_POST['doc_vat'])) {

        foreach($_POST['doc_vat'] as $value){
            $VAT_doctor = $value;
        }
}
$VAT_client = $_REQUEST['client_VAT'];
$date_timestamp = $_REQUEST['date_timestamp'];
$appointment_description = $_REQUEST['descp'];


$sql = "insert into appointment values ('$VAT_doctor', '$VAT_client', '$date_timestamp', '$appointment_description');";

if ($conn->query($sql) === TRUE) {
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