<html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
$client_name = $_REQUEST['client_name'];
$client_street = $_REQUEST['client_street'];
$csql = "SELECT *
		FROM client AS c
		WHERE
		(CASE
			WHEN '$client_VAT' = '' THEN  c.client_name LIKE '%$client_name%' AND c.client_street LIKE '%$client_street%'
			ELSE '$client_VAT' = c.client_VAT	AND c.client_name LIKE '%$client_name%' AND c.client_street LIKE '%$client_street%'
		END)";


echo("<h2>Clinic Clients: </h2>");
$crows = $conn->query($csql);
$c_rows = $crows->rowCount();
if ($crows == FALSE)
{
	$info = $conn->errorInfo();
	echo("<p>Error: {$info[2]}</p>");
	exit();
}
if($c_rows > 0): ?>

<form action="selected_client.php" method="post">
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
 
 <?php foreach ($crows as $row): 
	$vat = $row['client_VAT']; ?>
	<tr> 
	<td><?php echo $row['client_VAT']; ?></td> 
	<td><a href="client_page.php?client_VAT=<?php echo $vat ?>"> <?php echo $row['client_name']?></a></td>
	<td><?php echo $row['client_birth_date']; ?></td> 
	<td><?php echo $row['client_street']; echo " , "; echo $row['client_city']; echo " , "; echo $row['client_zip']; ?></td> 
	<td><?php echo $row['client_gender']; ?></td> 
	<td><?php echo $row['client_age']; ?></td>
	</tr>
 <?php endforeach;?>
  </tbody>
</table>
 </form>

 <?php 
 echo("<h2>New Client: </h2>");?>
 
<form action="create_client.php" method="post">
	<p><input type="submit" value="Create"/></p>
</form>
<?php
 else: 
 echo("<p>No client found. Click to create new</p>");?>
 
<form action="create_client.php" method="post">
	<p><input type="submit" value="Create"/></p>
</form>
  <?php endif;
  $conn->close();?>

 </body>
</html>
