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
   
if(!empty($_POST['vat'])) {

        foreach($_POST['vat'] as $value){
            $client_VAT = $value;
        }
}

$csql = "SELECT *
		FROM client as c
		WHERE client_VAT = '$client_VAT'";
$crows = $conn->query($csql);
$crow = $crows->fetch_array();

$asql = "SELECT a.VAT_doctor, a.date_timestamp, a.appointment_description
		FROM client as c, appointment as a
		WHERE client_VAT = '$client_VAT'
		AND client_VAT = a.VAT_client	
		ORDER BY a.date_timestamp DESC";
$arows = $conn->query($asql);
?>

<h2>Client: </h2>
</br>
<table class="table">
  <thead>
    <tr>
    <th scope="col">VAT</th>
    <th scope="col">Name</th>
    <th scope="col">Birth-Date</th>
	<th scope="col">Address(Street, City, Zip)</th>
	<th scope="col">Gender</th>
	<th scope="col">Age</th>

   </tr>
  </thead>
  <tbody>
	<tr> 
	<td><?php echo $crow['client_VAT']; ?></td> 
	<td><?php echo $crow['client_name']; ?></td> 
	<td><?php echo $crow['client_birth_date']; ?></td> 
	<td><?php echo $crow['client_street']; echo " , "; echo $crow['client_city']; echo " , "; echo $crow['client_zip']; ?></td> 
	<td><?php echo $crow['client_gender']; ?></td> 
	<td><?php echo $crow['client_age']; ?></td>
	</tr>
  </tbody>
</table>

<?php echo("<h2>Appointments: </h2>");
 if(mysqli_num_rows($arows) > 0): ?>
<table class="table">
  <thead>
    <tr>
    <th scope="col">Vat_Doctor</th>
    <th scope="col">Date</th>
    <th scope="col">Description</th>

   </tr>
  </thead>
  <tbody>
 
 <?php 

 foreach ($arows as $row): ?>
 
	<tr> 
	<td><?php echo $row['VAT_doctor']; ?></td> 
	<td><?php echo $row['date_timestamp']; ?></td> 
	<td><?php echo $row['appointment_description']; ?></td> 
	</tr>
 <?php endforeach; ?>
 
 </tbody>
</table>
<?php
else :
	echo("<p>No Appointment found </p>");
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
