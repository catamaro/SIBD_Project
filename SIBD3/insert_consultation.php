<html>
    <body>
    <?php
         $host = "localhost";
		 $user = "root";
		 $pass = "";
		 $db = "SIBD";
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
        
        $vat_doctor = $_REQUEST['vat_doctor'];
        $date = $_REQUEST['date'];
        $s = $_REQUEST['s'];
        $o = $_REQUEST['o'];
        $a = $_REQUEST['a'];
        $p = $_REQUEST['p'];
        $sql = "INSERT INTO consultation VALUES ('$vat_doctor', '$date', '$s', '$o', '$a', '$p')";
?>
	<form action="client.php" method="post">
<?php if ($conn->query($sql) == TRUE): ?>

	<h2>Consultation inserted:</h2>
	<p>Doctor:<?php echo $vat_doctor ?></p>
	<p>Date:<?php echo $date ?></p>
	<p>S:<?php echo $s ?></p>
	<p>O:<?php echo $o ?></p>
	<p>A:<?php echo $a ?></p>
	<p>P:<?php echo $p ?></p>
<?php else :
    echo "Error: " . $sql . "<br>" ;
endif;
?>
	 <p><input type="submit" value="Go to search"/></p>
	</form>
    </body>
</html>