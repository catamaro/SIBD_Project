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
        $date = $_REQUEST['date_timestamp'];
        $doctor = $_REQUEST['VAT_doctor'];
        $consverifsql = "SELECT c.VAT_doctor
                         FROM consultation AS c, appointment AS a 
                         WHERE a.date_timestamp = '$date' AND a.VAT_doctor = '$doctor' 
                         AND c.date_timestamp = a.date_timestamp AND c.VAT_doctor = a.VAT_doctor";
        $appdetsql = "SELECT VAT_client, appointment_description
                      FROM appointment 
                      WHERE date_timestamp = '$date' AND VAT_doctor = '$doctor'";
        $consverification = $conn->query($consverifsql);
        $appdetails = $conn->query($appdetsql);
        if ($appdetails == FALSE)
        {
            $info = $conn->errorInfo();
            echo("<p>Error: {$info[2]}</p>");
            exit();
        }
        echo("<h2>Appointment details:</h2>");
        foreach ($appdetails as $row){
            $client = $row['VAT_client'];
            $description = $row['appointment_description'];
            echo("<br>Client: $client</br>");
            echo("<br>Date: $date</br>");
            echo("<br>Doctor: $doctor</br>");
            echo("<br>Description: $description</br>");
            echo("<br></br>");
            if (mysql_num_rows($consverification) == 0){
                echo("<form action=\"new_consultation.php\" method=\"post\">");
                echo("<input type=\"submit\" value=\"New Consultation\"></form>\n");
            }
        }
        ?>
    </body>
</html>