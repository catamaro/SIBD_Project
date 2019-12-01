<html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <body>
    <?php
        /*$host = "localhost";
        $user = "root";
        $pass = "proj_part3";
        $db = "proj_part2";
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
        
        $vat_doctor = $_REQUEST['vat_doctor'];
        $date = $_REQUEST['date'];
        $s = $_REQUEST['s'];
        $o = $_REQUEST['o'];
        $a = $_REQUEST['a'];
        $p = $_REQUEST['p'];
        $vat_nurse = $_REQUEST['vat_nurse'];
        $diagnostic_id = $_REQUEST['diagnostic_id'];
        $medication_name = $_REQUEST['medication_name'];
        $medication_lab = $_REQUEST['medication_lab'];
        $presc_id = $_REQUEST['presc_id'];
        $dosage = $_REQUEST['dosage'];
        $prescription_description = $_REQUEST['prescription_description'];
        $sql = "INSERT INTO consultation VALUES ('$vat_doctor', '$date', '$s', '$o', '$a', '$p')";
      
        if ($conn->query($sql) == TRUE) {
            echo("New record for consultation created successfully");
        } else {
            echo("Error: " . $sql . "<br>" . $conn->error);
        }
        if (!empty($vat_nurse)){
            $assist_sql = "INSERT INTO consultation_assistant VALUES ('$vat_doctor', '$date', '$vat_nurse')";
            if ($conn->query($assist_sql) == TRUE) {
                echo("New record for nurse created successfully");
            } else {
                echo("Error: " . $assist_sql . "<br>" . $conn->error);
            }
        }
        if (!empty($diagnostic_id)){
            $diagnostic_sql = "INSERT INTO consultation_diagnostic VALUES ('$vat_doctor', '$date', '$diagnostic_id')";
            if ($conn->query($diagnostic_sql) == TRUE) {
                echo("New record for diagnostic created successfully");
            } else {
                echo("Error: " . $diagnostic_sql . "<br>" . $conn->error);
            }
        }
        if (!empty($presc_id)){
            $presc_sql = "INSERT INTO prescription VALUES ('$medication_name', '$medication_lab', '$vat_doctor', '$date', '$presc_id', '$dosage', '$prescription_description')";
            if ($conn->query($presc_sql) == TRUE) {
                echo("New record for prescription created successfully");
            } else {
                echo("Error: " . $presc_sql . "<br>" . $conn->error);
            }
        }
    ?>

        <form action="client.php" method="post">
            <p><input type="submit" class="btn btn-info" value="Go to search"/></p>
        </form>
    </body>
</html>