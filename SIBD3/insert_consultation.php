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
        
        $vat_doctor = $_REQUEST['vat_doctor'];
        $date = $_REQUEST['date'];
        $s = $_REQUEST['s'];
        $o = $_REQUEST['o'];
        $a = $_REQUEST['a'];
        $p = $_REQUEST['p'];
        $sql = "INSERT INTO consultation VALUES ('$vat_doctor', '$date', '$s', '$o', '$a', '$p')";
        if ($conn->query($sql) == TRUE) {
            echo("New record created successfully");
        } else {
            echo("Error: " . $sql . "<br>" . $conn->error);
        }
        $conn->close();
    ?>

        <form action="client.php" method="post">
            <p><input type="submit" value="Go to search"/></p>
        </form>
    </body>
</html>