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
        $teeth_sql = "SELECT quadrant, number, teeth_name FROM teeth";
        $charting_sql = "SELECT procedure_name_ FROM procedure_charting";
        $teeth = $conn->query($teeth_sql);
        if ($teeth == FALSE) {
            echo("Error: " . $teeth_sql . "<br>" . $conn->error);
        }
        $charting = $conn->query($charting_sql);
        if ($charting == FALSE) {
            echo("Error: " . $charting_sql . "<br>" . $conn->error);
        }
        ?>

        <div class="container">
            <h2>New Dental Charting:</h2>
            <form action="insert_dental_charting.php" method="post">
                <div class="form-group row">
                    <div class="form-group  col-6">
                        <label for="vat_doctor">VAT_Doctor:</label>
                        <input readonly type="text" class="form-control" name="VAT_doctor" value="<?php echo($vat_doctor) ?>" >
                    </div>
                    <div class="form-group  col-6">
                        <label for="date">Date:</label>
                        <input readonly type="text" class="form-control" name="date" value="<?php echo($date) ?>" >
                    </div>
                </div>
                <div class="form-group">
                    <label for="proc_name">Procedure Name:</label>
                    <input readonly type="text" class="form-control" name="proc_name" value="Dental Charting" >
                </div>
                <div class="form-group">
                    <label for="proc_name">Procedure Description:</label>
                    <input required type="text" class="form-control" name="proc_dscp">
                </div>
                </br>
                <div class="form-group">
                    <table for="teeth" class="table table-borderless">
                        <thead>
                        <tr>
                            <th scope="col">Teeth</th>
                            <th scope="col">Measurement</th>
                            <th scope="col">Description</th>
                        </tr>
                        <thead>
                        <tbody>
                        <?php
                            $i = 0;
                            foreach ($teeth as $row){ 
                                $i += 1;?>
                                <tr>
                                    <td scope="col"><?php echo $row['quadrant']." | ".$row['number']." | ".$row['teeth_name']?></th>
                                    <td scope="col"><input type="text" class="form-control" name = "measure<?php echo $i?>"></th>
                                    <td scope="col"><input type="text" class="form-control" name = "dscp<?php echo $i?>"></th>
                                </tr>
                            <?php } ?>
                        <tbody>
                    </table>
                    <input hidden name="num_teeth" value="<?php echo $i?>">
                </div>
                <input type="submit" class="btn btn-info" value="Insert">
            </form>
        </div>                
    </body>
</html>


            
