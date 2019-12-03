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
        $date = $_REQUEST['date'];
        $proc_name = $_REQUEST['proc_name'];
        $proc_dscp = $_REQUEST['proc_dscp'];
        $num_teeth = $_REQUEST['num_teeth'];
        $measure = array($num_teeth);
        $description = array($num_teeth);
        for($i = 1; $i <= $num_teeth; $i++){
            if( $_REQUEST["measure$i"]!=NULL && $_REQUEST["dscp$i"]!=NULL ){
                $measure[$i] = $_REQUEST["measure$i"];
                $description[$i] = $_REQUEST["dscp$i"];
            }
        }
        $teeth_sql = "SELECT quadrant, number, teeth_name FROM teeth";
        $teeth = $conn->query($teeth_sql);
        if ($teeth == FALSE) {
            echo("Error: " . $teeth_sql . "<br>" . $conn->error);
        }

        try{
            $conn->beginTransaction();

            $procedure_sql = "INSERT INTO procedure_in_consultation VALUES('$proc_name', '$vat_doctor', '$date','$proc_dscp')";
            if ($conn->query($procedure_sql) == TRUE) {
                echo("New record for procedure in consultation created successfully");
            } else {
                echo("Error: " . $procedure_sql . "<br>" . $conn->error);
            }

            $i = 1;
            foreach($teeth as $row){
                if(isset($measure[$i])){
                    $number = $row['number'];       
                    $quadrant = $row['quadrant'];                                 
                    $measurement_sql = "INSERT INTO procedure_charting VALUES('$proc_name', '$vat_doctor', $date, '$quadrant', '$number', '$description[$i]', '$measure[$i]');";
                }
                $i+=1;
            }

            $conn->commit();

        }catch(Exception $e){
            $conn->roolback();
        }

        ?>

        <div class="form-group">        
            <a href="create_consultation.php?date_timestamp=<?php echo $date?>&VAT_doctor=<?php echo $vat_doctor?>" type="button" class="btn btn-info">Insert</a>
        </div>        
    </body>
</html>