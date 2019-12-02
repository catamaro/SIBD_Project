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
        $sql = "INSERT INTO consultation VALUES ('$vat_doctor', '$date', '$s', '$o', '$a', '$p')";
      
        if ($conn->query($sql) == TRUE) {
            echo("<h2>Consultation inserted:</h2>");
            echo("<p>VAT Doctor: $vat_doctor </p>");
            echo("<p>Date: $date </p>");
            echo("<p>S: $s </p>");
            echo("<p>O: $o </p>");
            echo("<p>A: $a </p>");
            echo("<p>P: $p </p>");
        } else {
            echo("Error: " . $sql . "<br>" . $conn->error);
        }
        if (!empty($vat_nurse)){
            $assist_sql = "INSERT INTO consultation_assistant VALUES ('$vat_doctor', '$date', '$vat_nurse')";
            if ($conn->query($assist_sql) == TRUE) {
                echo("<h2>Consultation assistent inserted:</h2>");
                echo("<p>VAT Doctor: $vat_doctor </p>");
                echo("<p>Date: $date </p>");
                echo("<p>VAT Nurse: $vat_nurse </p>");
            } else {
                echo("Error: " . $assist_sql . "<br>" . $conn->error);
            }
        }
        if (!empty($diagnostic_id)){
            $diagnostic_sql = "INSERT INTO consultation_diagnostic VALUES ('$vat_doctor', '$date', '$diagnostic_id')";
            if ($conn->query($diagnostic_sql) == TRUE) {
                echo("<h2>Diagnostic inserted:</h2>");
                echo("<p>VAT Doctor: $vat_doctor </p>");
                echo("<p>Date: $date </p>");
                echo("<p>ID: $diagnostic_id </p>");
            } else {
                echo("Error: " . $diagnostic_sql . "<br>" . $conn->error);
            }
        }
    ?>
        <form action="create_prescription.php?id=<?php echo $diagnostic_id?>&vat_doctor=<?php echo $vat_doctor?>&date=<?php echo $date?>" method="post">
            <p><input type="submit" class="btn btn-info" value="Add prescription"/></p>
        </form>
        <form action="client.php" method="post">
            <p><input type="submit" class="btn btn-info" value="Go to search"/></p>
        </form>
    </body>
</html>