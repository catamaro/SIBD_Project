<html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 
 <style>
 
 table {
  display: block;
  height: 250px;
  overflow-y: scroll;
}

 </style>
 
 <body>
<?php
 /*$dbhost = "localhost";
 $dbuser = "root";
 $dbpass = "proj_part3";
 $db = "proj_part2";
 $conn = new mysqli($dbhost, $dbuser, $dbpass,$db) or die("Connect failed: %s\n". $conn -> error);*/
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

$csql = "SELECT *
		FROM client as c
		WHERE client_VAT = '$client_VAT'";
$crows = $conn->query($csql);
$crow = $crows->fetch();

$asql = "SELECT date_timestamp, VAT_doctor
        FROM appointment 
        WHERE VAT_client = '$client_VAT'
        GROUP BY date_timestamp";
$arows = $conn->query($asql);
$a_count = $arows->rowCount();
?>

<h2>Client: </h2>
</br>
 <form action="insert_client.php" method="post">
 <p>Client_VAT: <input readonly type="text" name="client_vat"  value= "<?php echo $crow['client_VAT'];?>" /></p>
 <p>Client Name: <input readonly type="text" name="client_name" value= "<?php echo $crow['client_name'];?>" /></p>
 <p>Client Birth-Date: <input readonly type="date" name="client_birth_date" value= "<?php echo $crow['client_birth_date'];?>" /></p>
 <p>Client Street: <input readonly type="text" name="client_street" value= "<?php echo $crow['client_street'];?>" /></p>
  <p>Client City: <input readonly type="text" name="client_city" value= "<?php echo $crow['client_city'];?>" /></p>
 <p>Client Zip: <input readonly type="text" name="client_zip" value= "<?php echo $crow['client_zip'];?>" /></p>
 <p>Client Gender: <input readonly type="text" name="client_gender" value= "<?php echo $crow['client_gender'];?>" /></p>
 <p>Client Age: <input readonly type="text" name="client_age" value= "<?php echo $crow['client_age'];?>" /></p>
 <p><input type="submit" value="Edit"/>                             </p>
 </form>

<?php
if ($arows == FALSE)
{
    $info = $conn->errorInfo();
    echo("<p>Error: {$info[2]}</p>");
    exit();
}
echo("<h2>Previous appointments:</h2>");
 if($a_count > 0): ?>
<table class="table">
  <thead>
    <tr>
    <th scope="col">Vat_Doctor</th>
    <th scope="col">Date</th>
    <th scope="col"></th>
   </tr>
  </thead>
  <tbody>
 
 <?php 

 foreach ($arows as $row): ?>
	<tr> 
	<td><?php echo $row['VAT_doctor']; ?></td> 
	<td><?php echo $row['date_timestamp']; ?></td> 
    <td><a href="appointment_details.php?date_timestamp=<?php echo $row['date_timestamp']?>&VAT_doctor=<?php echo $row['VAT_doctor']?>">See more</a></td>

	</tr>
 <?php endforeach; ?>
 
 </tbody>
</table>
<?php
else :
	echo("<p>No Appointment found </p>");
endif;

$consql = "SELECT c.date_timestamp, c.VAT_doctor
           FROM consultation AS c, appointment AS a
           WHERE a.VAT_client = '$client_VAT' AND a.VAT_doctor = c.VAT_doctor 
           AND a.date_timestamp = c.date_timestamp
           GROUP BY c.date_timestamp";
        $conrows = $conn->query($consql);
        $concount = $conrows->rowCount();
        if ($conrows == FALSE)
        {
            $info = $conn->errorInfo();
            echo("<p>Error: {$info[2]}</p>");
            exit();
        }

echo("<h2>Previous consultations:</h2>");
 if($a_count > 0): ?>
<table class="table">
  <thead>
    <tr>
    <th scope="col">Vat_Doctor</th>
    <th scope="col">Date</th>
    <th scope="col"></th>
   </tr>
  </thead>
  <tbody>
  <?php
  foreach ($conrows as $row): ?>
	<tr> 
	<td><?php echo $row['VAT_doctor']; ?></td> 
	<td><?php echo $row['date_timestamp']; ?></td> 
    <td><a href="consultation_details.php?date_timestamp=<?php echo $row['date_timestamp']?>&VAT_doctor=<?php echo $row['VAT_doctor']?>">See more</a></td>
    </tr>
    <?php endforeach; ?>
 
 </tbody>
</table>
<?php
else :
	echo("<p>No Consultation found </p>");
endif;

echo("<h2>New Appointment: </h2>");?>
<form action="mark_appointment.php" method="post">
	<input hidden type="text" name="client_VAT" value= "<?php echo $crow['client_VAT'];?>"/>
	<input type="date" name="date">
	<input type="time" min="09:00" max="17:00" name ="time" required> <small>Office hours are 9am to 5pm</small>

	</br>
	<p><input type="submit" value="Next"/></p>
</form>
 </body>
</html>
