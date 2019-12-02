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
      
        if (!empty($vat_nurse)){
            $assist_sql = "UPDATE consultation_assistant SET VAT_nurse = '$vat_nurse' 
                            WHERE VAT_doctor = '$vat_doctor' AND date_timestamp = '$date'";
            if ($conn->query($assist_sql) == TRUE) {
                echo("VAT_nurse updated in consultation_assistant.\n");
            } else {
                echo("Error: " . $assist_sql . "<br>" . $conn->error);
            }
        }
        if (!empty($diagnostic_id)){
            $diagnostic_sql = "UPDATE consultation_diagnostic SET ID = '$diagnostic_id'
                                WHERE VAT_doctor = '$vat_doctor' AND date_timestamp = '$date'";
            if ($conn->query($diagnostic_sql) == TRUE) {
                echo("ID updated in diagnostic.\n");
            } else {
                echo("Error: " . $diagnostic_sql . "<br>" . $conn->error);
            }
            $prescID_sql = "UPDATE prescription SET ID = '$diagnostic_id'
                            WHERE VAT_doctor = '$vat_doctor' AND date_timestamp = '$date'";
            if ($conn->query($prescID_sql) == TRUE) {
                echo("ID updated in prescription.\n");
            } else {
                echo("Error: " . $prescID_sql . "<br>" . $conn->error);
            }
        }
        if (!empty($medication_name)){
            $medName_sql = "UPDATE prescription SET medication_name = '$medication_name'
                            WHERE VAT_doctor = '$vat_doctor' AND date_timestamp = '$date'";
            if ($conn->query($medName_sql) == TRUE) {
                echo("Medication name updated in prescription.\n");
            } else {
                echo("Error: " . $medName_sql . "<br>" . $conn->error);
            }
        }
        if (!empty($medication_lab)){
            $medLab_sql = "UPDATE prescription SET medication_lab = '$medication_lab'
                            WHERE VAT_doctor = '$vat_doctor' AND date_timestamp = '$date'";
            if ($conn->query($medLab_sql) == TRUE) {
                echo("Medication lab updated in prescription.\n");
            } else {
                echo("Error: " . $medLab_sql . "<br>" . $conn->error);
            }
        }
        if (!empty($dosage)){
            $prescDosage_sql = "UPDATE prescription SET dosage = '$dosage'
                            WHERE VAT_doctor = '$vat_doctor' AND date_timestamp = '$date'";
            if ($conn->query($prescDosage_sql) == TRUE) {
                echo("Dosage updated in prescription.\n");
            } else {
                echo("Error: " . $prescDosage_sql . "<br>" . $conn->error);
            }
        }
        if (!empty($prescription_description)){
            $prescDesc_sql = "UPDATE prescription SET prescription_description = '$prescription_description'
                            WHERE VAT_doctor = '$vat_doctor' AND date_timestamp = '$date'";
            if ($conn->query($prescDesc_sql) == TRUE) {
                echo("Description updated in prescription.\n");
            } else {
                echo("Error: " . $prescDesc_sql . "<br>" . $conn->error);
            }
        }
    ?>

        <form action="client.php" method="post">
            <p><input type="submit" class="btn btn-info" value="Go to search"/></p>
        </form>
    </body>
</html>