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
        $date_timestamp = $_REQUEST['date'];
        $proc_name = $_REQUEST['proc_name'];
        $proc_dscp = $_REQUEST['proc_dscp'];
        $num_teeth = $_REQUEST['num_teeth'];
        $measure = array($num_teeth);
        $dscp = array($num_teeth);
        for($i = 1; $i <= $num_teeth; $i++){
            if( $_REQUEST["measure$i"]!=NULL && $_REQUEST["dscp$i"]!=NULL ){
                $measure[$i] = $_REQUEST["measure$i"];
                $dscp[$i] = $_REQUEST["dscp$i"];
            }
        }
        $teeth_sql = "SELECT quadrant, number, teeth_name FROM teeth";
        $teeth = $conn->query($teeth_sql);
        if ($teeth == FALSE) {
            echo("Error: " . $teeth_sql . "<br>" . $conn->error);
        }

        try{
            $conn->beginTransaction();
            $procedure_sql = $conn->prepare("INSERT INTO procedure_in_consultation VALUES(:proc_name, :vat_doctor, :date_timestamp,:proc_dscp)");

            $procedure_sql->bindParam(':proc_name', $proc_name);
            $procedure_sql->bindParam(':vat_doctor', $vat_doctor);
            $procedure_sql->bindParam(':date_timestamp', $date_timestamp);
            $procedure_sql->bindParam(':proc_dscp', $proc_dscp);

            $procedure_sql->execute();

            $i = 1;
            foreach($teeth as $row){
                if(isset($measure[$i])){
                    $tooth_number = $row['number'];       
                    $quadrant = $row['quadrant'];  
                    $dscp_aux = $dscp[$i];
                    $measure_aux = $measure[$i];

                    $measurement_sql = $conn->prepare("INSERT INTO procedure_charting VALUES(:proc_name, :vat_doctor, :date_timestamp, :quadrant, :tooth_number, :dscp, :measure);");
                    
                    $measurement_sql->bindParam(':proc_name', $proc_name);
                    $measurement_sql->bindParam(':vat_doctor', $vat_doctor);
                    $measurement_sql->bindParam(':date_timestamp', $date_timestamp);
                    $measurement_sql->bindParam(':quadrant', $quadrant);
                    $measurement_sql->bindParam(':tooth_number', $tooth_number);
                    $measurement_sql->bindParam(':dscp', $dscp_aux);
                    $measurement_sql->bindParam(':measure', $measure_aux);

                    $measurement_sql->execute();
                }
                $i+=1;
            }

            echo("something went good");
            $conn->commit();

        }catch(Exception $e){
            echo("something went wrong");
            $conn->roolback();
        }

        ?>

        <div class="form-group">        
            <a href="create_consultation.php?date_timestamp=<?php echo $date?>&VAT_doctor=<?php echo $vat_doctor?>" type="button" class="btn btn-info">Insert</a>
        </div>        
    </body>
</html>