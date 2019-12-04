<html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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

        $doctor = $_REQUEST['VAT_doctor'];
        $date = $_REQUEST['date_timestamp']; 
        $VATnurse_sql = "SELECT DISTINCT n.VAT_nurse FROM nurse AS n, consultation_assistant as ca 
                        WHERE n.VAT_nurse = ca.VAT_nurse AND ca.VAT_nurse NOT IN (SELECT ca.VAT_nurse 
                        FROM consultation_assistant AS ca, appointment AS a 
                        WHERE a.date_timestamp = ca.date_timestamp AND a.VAT_doctor = ca.VAT_doctor 
                        AND a.date_timestamp = '$date')";
        $soap_sql = "SELECT SOAP_S, SOAP_O, SOAP_A, SOAP_P FROM consultation WHERE VAT_doctor = '$doctor' AND date_timestamp = '$date'";
        $dcID_sql = "SELECT ID FROM diagnostic_code";
        $med_sql = "SELECT medication_name, medication_lab FROM medication";
        $verif_nurse_sql = "SELECT VAT_nurse FROM consultation_assistant WHERE VAT_doctor = '$doctor' AND date_timestamp = '$date'";
        $verif_diagnostic_sql = "SELECT ID FROM consultation_diagnostic WHERE VAT_doctor = '$doctor' AND date_timestamp = '$date'";
        $verif_prescription_sql = "SELECT ID FROM prescription WHERE VAT_doctor = '$doctor' AND date_timestamp = '$date'";
        $med = $conn->query($med_sql);
        $VAT_nurse = $conn->query($VATnurse_sql);
        $soap = $conn->query($soap_sql);
        $dcID = $conn->query($dcID_sql);
        $verif_nurse = $conn->query($verif_nurse_sql);
        $verif_nurse_rows = $verif_nurse->rowCount();
        $verif_diagnostic = $conn->query($verif_diagnostic_sql);
        $verif_diagnostic_rows = $verif_diagnostic->rowCount();
        $verif_prescription = $conn->query($verif_prescription_sql);
        $verif_prescription_rows = $verif_prescription->rowCount();
        ?>
        <div class="container">
            <h2>Update Consultation:</h2>
            <form action="insert_update_cons.php" method="post">
                <div class="form-group">
                    <label for="vat_doctor">VAT_Doctor:</label>
                    <input readonly type="text" class="form-control" name="vat_doctor" value="<?php echo($doctor) ?>" >
                </div>
                <div class="form-group">
                    <label for="date">Date:</label>
                    <input readonly type="text" class="form-control" name="date" value="<?php echo($date) ?>" >
                </div>
                <?php
                foreach($soap as $row) { ?> 
                    <div class="form-group">
                        <label for="s">S:</label>
                        <input type="text" class="form-control" name="s" value="<?php echo($row['SOAP_S']) ?>">
                    </div>
                    <div class="form-group">
                        <label for="o">O:</label>
                        <input type="text" class="form-control" name="o" value="<?php echo($row['SOAP_O']) ?>">
                    </div>
                    <div class="form-group">
                        <label for="a">A:</label>
                        <input type="text" class="form-control" name="a" value="<?php echo($row['SOAP_A']) ?>">
                    </div>
                    <div class="form-group">
                        <label for="p">P:</label>
                        <input type="text" class="form-control" name="p" value="<?php echo($row['SOAP_P']) ?>">
                    </div>
                <?php } 
                if($verif_nurse_rows > 0) {?>
                    <div class="form-group">
                        <label for="vat_nurse">VAT_Nurse:</label>
                        <select class="form-control" name="vat_nurse">
                            <option selected disabled>--Choose an option--</option>
                        <?php
                            foreach ($VAT_nurse as $row){ ?>
                                <option><?php echo $row['VAT_nurse'] ?> </option>
                            <?php } ?>
                        </select>
                    </div>
                <?php } 
                if($verif_diagnostic_rows > 0) {?>
                    <div class="form-group">
                        <label for="diagnostic_id">ID:</label>
                        <select class="form-control" name="diagnostic_id">
                            <option selected disabled>--Choose an option--</option>
                        <?php
                            foreach ($dcID as $row){ ?>
                                <option><?php echo $row['ID'] ?> </option>
                            <?php } ?>
                        </select>
                    </div>
                <?php } 
                if($verif_prescription_rows > 0) {?>
                    <div class="form-group">
                        <label for="medication">Medication Name/Medication Lab:</label>
                        <select class="form-control" name="medication">
                            <option selected disabled>--Choose an option--</option>
                        <?php
                            foreach ($med as $row){
                            $medName = $row['medication_name'];
                            $medLab = $row['medication_lab'];
                                echo("<option> $medName/$medLab</option>"); 
                            } ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="dosage">Dosage:</label>
                        <input type="text" class="form-control" name="dosage">
                    </div>
                    <div class="form-group">
                        <label for="prescription_description">Prescription Description:</label>
                        <input type="text" class="form-control" name="prescription_description">
                    </div>
                <?php } ?>
                <input type="submit" class="btn btn-info" value="Insert"/>
            </form>
        </div>
    </body>
</html>