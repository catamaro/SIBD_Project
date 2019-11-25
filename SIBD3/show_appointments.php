<html>
    <body>
    <?php
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
        $asql = "SELECT date_timestamp, VAT_doctor
                 FROM appointment 
                 WHERE VAT_client = '$client_VAT'
                 GROUP BY date_timestamp";
        $arows = $conn->query($asql);
        $acount = $arows->rowCount();
        if ($arows == FALSE)
        {
            $info = $conn->errorInfo();
            echo("<p>Error: {$info[2]}</p>");
            exit();
        }
        echo("<h2>Previous appointments:</h2>");
        if($acount == 0){
            echo("No appointments");
        }
        foreach ($arows as $row){
            $date = $row['date_timestamp'];
            $doctor = $row['VAT_doctor'];
            echo("<br><a href=\"appointment_details.php?date_timestamp=");
            echo($date);
            echo("&VAT_doctor=");
            echo($doctor);
            echo("\">Date: $date Doctor: $doctor</a></br>\n");
        }
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
        if($concount == 0){
            echo("No consultations");
        }
        foreach ($conrows as $row){
            $date = $row['date_timestamp'];
            $doctor = $row['VAT_doctor'];
            echo("<br><a href=\"consultation_details.php?date_timestamp=");
            echo($date);
            echo("&VAT_doctor=");
            echo($doctor);
            echo("\">Date: $date Doctor: $doctor</a></br>\n");
        }
    ?>
    </body>
</html>