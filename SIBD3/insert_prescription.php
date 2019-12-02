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
        $medication_name = $_REQUEST['medication_name'];
        $medication_lab = $_REQUEST['medication_lab'];
        $presc_id = $_REQUEST['presc_id'];
        $dosage = $_REQUEST['dosage'];
        $prescription_description = $_REQUEST['prescription_description'];

        if (!empty($dosage)){
            $presc_sql = "INSERT INTO prescription VALUES ('$medication_name', '$medication_lab', '$vat_doctor', '$date', '$presc_id', '$dosage', '$prescription_description')";
            if ($conn->query($presc_sql) == TRUE) {
                echo("<h2>Prescription inserted:</h2>");
                echo("<p>VAT Doctor: $vat_doctor </p>");
                echo("<p>Date: $date </p>");
                echo("<p>ID: $presc_id </p>");
                echo("<p>Medication name: $medication_name </p>");
                echo("<p>Medication lab: $medication_lab </p>");
                echo("<p>Dosage: $dosage </p>");
                echo("<p>Description: $prescription_description </p>");
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