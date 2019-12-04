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

            echo("<h2>Procedure inserted:</h2>");
            echo("<p>VAT Doctor: $vat_doctor </p>");
            echo("<p>Date: $date_timestamp </p>");
            echo("<p>Description: $proc_dscp </p>");

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


                    echo("<h2>Measurements done:</h2>");
                    echo("<p>Tooth: $quadrant|$tooth_number</p>");
                    echo("<p>Description: $dscp_aux </p>");
                    echo("<p>Measurement: $measure_aux </p>");
                    echo("</br>");

                    $measurement_sql->execute();
                }
                $i+=1;
            }

            $conn->commit();

        }catch(Exception $e){
            echo("Error: " . $conn->error);
            $conn->roolback();
        }

        ?>

        <form action="client.php" method="post">
            <p><input type="submit" class="btn btn-info" value="Go to search"/></p>
        </form>        
    </body>
</html>