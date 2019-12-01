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
        $date = $_REQUEST['date_timestamp'];
        $doctor = $_REQUEST['VAT_doctor'];
        $condetsql = "SELECT c.SOAP_S, c.SOAP_O, c.SOAP_A, c.SOAP_P, dc.ID, dc.diagnostic_description,
                        p.medication_name, p.medication_lab, p.dosage, p.prescription_description
                      FROM consultation AS c, prescription AS p, consultation_diagnostic AS cd, diagnostic_code AS dc
                      WHERE c.date_timestamp = '$date' AND c.VAT_doctor = '$doctor' AND c.VAT_doctor = cd.VAT_doctor
                        AND c.date_timestamp = cd.date_timestamp AND cd.ID = dc.ID AND c.VAT_doctor = p.VAT_doctor
                        AND c.date_timestamp = p.date_timestamp AND cd.ID = p.ID";
        $condetails = $conn->query($condetsql);
        if ($condetails == FALSE)
        {
            $info = $conn->errorInfo();
            echo("<p>Error: {$info[2]}</p>");
            exit();
        }
        echo("<h2>Appointment details:</h2>");
        foreach ($condetails as $row){
            $S = $row['SOAP_S'];
            $O = $row['SOAP_O'];
            $A = $row['SOAP_A'];
            $P = $row['SOAP_P'];
            $id = $row['ID'];
            $diagnostic_description = $row['diagnostic_description'];
            $medication_name = $row['medication_name'];
            $medication_lab = $row['medication_lab'];
            $dosage = $row['dosage'];
            $prescription_description = $row['prescription_description'];
            echo("<h4>SOAP</h4>");
            echo("<br>S: $S</br>");
            echo("<br>O: $O</br>");
            echo("<br>A: $A</br>");
            echo("<br>P: $P</br>");
            echo("<h4>Diagnostic</h4>");
            echo("<br>ID: $id</br>");
            echo("<br>Description: $diagnostic_description</br>");
            echo("<h4>Prescription</h4>");
            echo("<br>Medication name: $medication_name</br>");
            echo("<br>Medication lab: $medication_lab</br>");
            echo("<br>Dosage: $dosage</br>");
            echo("<br>Description: $prescription_description</br>");
        }
        ?>
    </body>
</html>