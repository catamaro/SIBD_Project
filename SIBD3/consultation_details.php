<html>
<body>
<?php
 
   /*$host = "localhost";
    $user = "root";
    $pass = "";
    $db = "SIBD";
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
        $date = $_REQUEST['date_timestamp'];
        $doctor = $_REQUEST['VAT_doctor'];

        $condetsql = $conn->prepare("SELECT SOAP_S, SOAP_O, SOAP_A, SOAP_P FROM consultation
                      WHERE date_timestamp = :date_timestamp AND VAT_doctor = :vat_doctor");
        $dcdetsql = $conn->prepare("SELECT dc.ID, dc.diagnostic_description 
                      FROM diagnostic_code AS dc, consultation_diagnostic AS cd
                      WHERE cd.date_timestamp = :date_timestamp AND cd.VAT_doctor = :vat_doctor AND cd.ID = dc.ID");
        $prescdetsql = $conn->prepare("SELECT p.medication_name, p.medication_lab, p.dosage, p.prescription_description
                      FROM prescription AS p, consultation_diagnostic AS cd
                      WHERE p.date_timestamp = :date_timestamp AND p.VAT_doctor = :vat_doctor AND p.VAT_doctor = cd.VAT_doctor
                      AND p.date_timestamp = cd.date_timestamp AND cd.VAT_doctor = p.VAT_doctor AND cd.ID = p.ID");
  
      $condetsql->bindParam(':date_timestamp', $date);
      $condetsql->bindParam(':vat_doctor', $doctor);
      $dcdetsql->bindParam(':date_timestamp', $date);
      $dcdetsql->bindParam(':vat_doctor', $doctor);
      $prescdetsql->bindParam(':date_timestamp', $date);
      $prescdetsql->bindParam(':vat_doctor', $doctor);
	  $condetsql->execute();
      $dcdetsql->execute();
      $prescdetsql->execute();

      $condetails =  $condetsql->fetchAll();
      $dcdetails =  $dcdetsql->fetchAll();
      $prescdetails =  $prescdetsql->fetchAll();

        echo("<h2>Consultation details:</h2>");
        foreach ($condetails as $row){
            $S = $row['SOAP_S'];
            $O = $row['SOAP_O'];
            $A = $row['SOAP_A'];
            $P = $row['SOAP_P'];
            if (!empty($S)){
                echo("<h4>SOAP</h4>");
                echo("<br>S: $S</br>");
                echo("<br>O: $O</br>");
                echo("<br>A: $A</br>");
                echo("<br>P: $P</br>");
            }
        }
      
        foreach ($dcdetails as $row){
            $id = $row['ID'];
            $diagnostic_description = $row['diagnostic_description'];
            if (!empty($id)){
                echo("<h4>Diagnostic</h4>");
                echo("<br>ID: $id</br>");
                echo("<br>Description: $diagnostic_description</br>");
            }
        }

        foreach ($prescdetails as $row){
            $medication_name = $row['medication_name'];
            $medication_lab = $row['medication_lab'];
            $dosage = $row['dosage'];
            $prescription_description = $row['prescription_description'];
            if (!empty($dosage)){
                echo("<h4>Prescription</h4>");
                echo("<br>Medication name: $medication_name</br>");
                echo("<br>Medication lab: $medication_lab</br>");
                echo("<br>Dosage: $dosage</br>");
                echo("<br>Description: $prescription_description</br>");
            }
        }
        ?>
    </body>
</html>