<html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

 <body>
<?php

$host = "localhost";
$user = "root";
$pass = "";
$db = "SIBD";
$dsn = "mysql:host=$host;dbname=$db";

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


$csql = $conn->prepare("SELECT *
		FROM client as c
		WHERE client_VAT = :client_VAT");

$csql->bindParam(':client_VAT',	 $client_VAT);
$csql->execute();
$crow =  $csql->fetchAll();

$asql = $conn->prepare("SELECT date_timestamp, VAT_doctor
        FROM appointment 
        WHERE VAT_client = :client_VAT
        GROUP BY date_timestamp");


$asql->bindParam(':client_VAT',	 $client_VAT);
$asql->execute();
$arows =  $asql->fetchAll();

$a_count = $asql->rowCount();

?>
<h2>Client Information: </h2>
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
	<td><?php echo $crow[0]['client_VAT']; ?></td> 
	<td><?php echo $crow[0]['client_name']; ?></td> 
	<td><?php echo $crow[0]['client_birth_date']; ?></td> 
	<td><?php echo $crow[0]['client_street']; echo " , "; echo $crow[0]['client_city']; echo " , "; echo $crow[0]['client_zip']; ?></td> 
	<td><?php echo $crow[0]['client_gender']; ?></td> 
	<td><?php echo $crow[0]['client_age']; ?></td>
	</tr>
  </tbody>
</table>
</br></br>


<div class="row" style="margin:0">
<?php if($a_count > 0): ?>
<div class="col-6"><h2>Previous appointments:</h2>
<div class="table table-striped" style="overflow-y: auto; max-height: 300px;">
<table class="table">
  <thead>
    <tr>
    <th scope="col">Vat_Doctor</th>
    <th scope="col">Date</th>
    <th scope="col"></th>
    <th scope="col"></th>
   </tr>
  </thead>
  <tbody>
 
 <?php foreach ($arows as $row): 
    $vat_doctor = $row['VAT_doctor'];
    $date = $row['date_timestamp'];?>
	<tr> 
	<td><?php echo $vat_doctor; ?></td> 
	<td><?php echo $date; ?></td> 
    <td><a href="appointment_details.php?date_timestamp=<?php echo $date?>&VAT_doctor=<?php echo $vat_doctor?>">See more</a></td>
    <td>
    <?php
    $consverifsql = $conn->prepare( "SELECT c.VAT_doctor
                    FROM consultation AS c, appointment AS a 
                    WHERE a.date_timestamp = :date_timestamp AND a.VAT_doctor = :vat_doctor 
                    AND c.date_timestamp = a.date_timestamp AND c.VAT_doctor = a.VAT_doctor");

	$consverifsql->bindParam(':date_timestamp',	 $date);
	$consverifsql->bindParam(':vat_doctor',	 $vat_doctor);
	$consverifsql->execute();

    $consrows = $consverifsql->rowCount(); 

    if ($consrows == 0){ ?>
    <a href="create_consultation.php?date_timestamp=<?php echo $row['date_timestamp']?>&VAT_doctor=<?php echo $row['VAT_doctor']?>">Register consultation</a>
    <?php }
    else if ($consrows > 0) {?>
        <a href="update_consultation.php?date_timestamp=<?php echo $row['date_timestamp']?>&VAT_doctor=<?php echo $row['VAT_doctor']?>">Update consultation</a>
    <?php } ?>
    </td>
	</tr>
 <?php endforeach; ?>
 
 </tbody>
</table>
</div>
</div>
<?php
else :
	echo("<div class=\"col-6\"><h2 >Previous appointments:</h2>
			<p>No appointment found </p>
			</div>
			</div>");
endif;

$consql = $conn->prepare("SELECT c.date_timestamp, c.VAT_doctor
           FROM consultation AS c, appointment AS a
           WHERE a.VAT_client = :client_VAT AND a.VAT_doctor = c.VAT_doctor 
           AND a.date_timestamp = c.date_timestamp
           GROUP BY c.date_timestamp");

		$consql->bindParam(':client_VAT', $client_VAT);
		$consql->execute();

		$conrows =  $consql->fetchAll();

        $concount = $consql->rowCount();
        ?>

<?php if($concount > 0): ?>
<div class="col-6"><h2 >Previous consultations:</h2>
<div class="table table-striped">
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
</div>
   </div>
   </div>
<?php
else :
	echo("<div class=\"col-6\"><h2 >Previous consultations:</h2>
			<p>No consultation found </p>
			</div>
			</div>");
endif;?>

</br></br>
<h2>New Appointment: </h2>
<form action="mark_appointment.php" method="post">
  <input hidden type="text" name="client_VAT" value= "<?php echo $client_VAT;?>"/>
  <div class="col-4">
  <div class="form-group">
      <input type="date" class="form-control" name="date">
  </div>
  </div>
  <div class="col-4">
  <div class="form-group">
      <input type="time" step='3600' class="form-control" min="09:00" max="16:00" name ="time" required> <small>Office hours are 9am to 5pm</small>
  </div>
  </div>
	</br>
	<p><input type="submit" class="btn btn-info" value="Next"/></p>
</form>
 </body>
</html>
