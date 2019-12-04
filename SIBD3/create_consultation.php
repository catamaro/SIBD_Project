<html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <body>  
        <?php
        $host = "localhost";
        $user = "root";
        $pass = "";
        $db = "SIBD";
        $dsn = "mysql:host=$host;dbname=$db";
    
        try{
            $conn = new PDO($dsn, $user, $pass);
        }
        catch(PDOException $exception){
            echo("<p>Error: ");
            echo($exception->getMessage());
            echo("</p>");
            exit();
        }

        $vat_doctor = $_REQUEST['VAT_doctor'];
        $date = $_REQUEST['date_timestamp']; 
        $VATnurse_sql = "SELECT DISTINCT n.VAT_nurse FROM nurse AS n, consultation_assistant as ca 
                        WHERE n.VAT_nurse = ca.VAT_nurse AND ca.VAT_nurse NOT IN (SELECT ca.VAT_nurse 
                        FROM consultation_assistant AS ca, appointment AS a 
                        WHERE a.date_timestamp = ca.date_timestamp AND a.VAT_doctor = ca.VAT_doctor 
                        AND a.date_timestamp = '$date')";
        $dcID_sql = "SELECT ID FROM diagnostic_code";
        $VAT_nurse = $conn->query($VATnurse_sql);
        $dcID = $conn->query($dcID_sql);
        ?>
        <div class="container">
            <h2>New Consultation:</h2>
            <form action="insert_consultation.php" method="post">
                
                <div class="form-group">
                    <label for="vat_doctor">VAT_Doctor:</label>
                    <input readonly type="text" class="form-control" name="vat_doctor" value="<?php echo($vat_doctor) ?>" >
                </div>
                <div class="form-group">
                    <label for="date">Date:</label>
                    <input readonly type="text" class="form-control" name="date" value="<?php echo($date) ?>" >
                </div>
                <div class="form-group">
                    <label for="s">S:</label>
                    <input required type="text" class="form-control" name="s">
                </div>
                <div class="form-group">
                    <label for="o">O:</label>
                    <input required type="text" class="form-control" name="o">
                </div>
                <div class="form-group">
                    <label for="a">A:</label>
                    <input required type="text" class="form-control" name="a">
                </div>
                <div class="form-group">
                    <label for="p">P:</label>
                    <input required type="text" class="form-control" name="p">
                </div>
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
                <div class="form-group">
                    <label for="diagnostic_id">Diagnostic Code ID:</label>
                    <select class="form-control" name="diagnostic_id">
                        <option selected disabled>--Choose an option--</option>
                    <?php
                        foreach ($dcID as $row){ ?>
                            <option><?php echo $row['ID']?> </option>
                        <?php } ?>
                    </select>
                </div>
                <input type="submit" class="btn btn-info" value="Insert"/>
            </form>
        </div>
    </body>
</html>
