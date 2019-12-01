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
                        AND '$date' BETWEEN  a.date_timestamp AND DATE_ADD(a.date_timestamp, INTERVAL 1 HOUR))";
        $dcID_sql = "SELECT ID FROM diagnostic_code";
        $medName_sql = "SELECT medication_name FROM medication";
        $medLab_sql = "SELECT medication_lab FROM medication";
        $prescID_sql = "SELECT ID FROM prescription";
        $VAT_nurse = $conn->query($VATnurse_sql);
        $dcID = $conn->query($dcID_sql);
        $medName = $conn->query($medName_sql);
        $medLab = $conn->query($medLab_sql);
        $prescID = $conn->query($prescID_sql);
        ?>
        <div class="container">
            <h2>New Consultation:</h2>
            <form action="insert_consultation.php" method="post">
                <div class="form-group">
                    <label for="vat_doctor">VAT_Doctor:</label>
                    <input readonly type="text" class="form-control" name="vat_doctor" value="<?php echo($doctor) ?>" >
                </div>
                <div class="form-group">
                    <label for="date">Date:</label>
                    <input readonly type="text" class="form-control" name="date" value="<?php echo($date) ?>" >
                </div>
                <div class="form-group">
                    <label for="s">S:</label>
                    <input type="text" class="form-control" name="s">
                </div>
                <div class="form-group">
                    <label for="o">O:</label>
                    <input type="text" class="form-control" name="o">
                </div>
                <div class="form-group">
                    <label for="a">A:</label>
                    <input type="text" class="form-control" name="a">
                </div>
                <div class="form-group">
                    <label for="p">P:</label>
                    <input type="text" class="form-control" name="p">
                </div>
                <div class="form-group">
                    <label for="vat_nurse">VAT_Nurse:</label>
                    <select class="form-control" name="vat_nurse">
                    <?php
                        foreach ($VAT_nurse as $row){ ?>
                            <option><?php echo $row['VAT_nurse'] ?> </option>
                        <?php } ?>
                    </select>
                </div>
                <div class="form-group">
                    <label for="diagnostic_id">Diagnostic Code ID:</label>
                    <select class="form-control" name="diagnostic_id">
                    <?php
                        foreach ($dcID as $row){ ?>
                            <option><?php echo $row['ID'] ?> </option>
                        <?php } ?>
                    </select>
                </div>
                <div class="form-group">
                    <label for="medication_name">Medication Name:</label>
                    <select class="form-control" name="medication_name">
                    <?php
                        foreach ($medName as $row){ ?>
                            <option><?php echo $row['medication_name'] ?> </option>
                        <?php } ?>
                    </select>
                </div>
                <div class="form-group">
                    <label for="medication_lab">Medication Lab:</label>
                    <select class="form-control" name="medication_lab">
                    <?php
                        foreach ($medLab as $row){ ?>
                            <option><?php echo $row['medication_lab'] ?> </option>
                        <?php } ?>
                    </select>
                </div>
                <div class="form-group">
                    <label for="presc_id">Prescription ID:</label>
                    <select class="form-control" name="presc_id">
                    <?php
                        foreach ($prescID as $row){ ?>
                            <option><?php echo $row['ID'] ?> </option>
                        <?php } ?>
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
                <input type="submit" class="btn btn-info" value="Insert"/>
            </form>
        </div>
    </body>
</html>