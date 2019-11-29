<html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        .userInput {
        margin: 1px;
        padding: 1px;
        width: 280px;
        height: 100px;
        resize: none;
        }
    </style>
    <body>
    
        <form action="insert_consultation.php" method="post">
            <?php $doctor = $_REQUEST['VAT_doctor'];
            $date = $_REQUEST['date_timestamp']; 
            ?>
            <h2>New Consultation:</h2>
            <p>VAT_Doctor: <input readonly type="text" name="vat_doctor" value="<?php echo($doctor) ?>" /></p>
            <p>Date: <input readonly type="text" name="date" value="<?php echo($date) ?>"/></p>
            <p>S: <textarea class="userInput" name="s"></textarea></p>
            <p>O: <textarea class="userInput" name="o"></textarea></p>
            <p>A: <textarea class="userInput" name="a"></textarea></p>
            <p>P: <textarea class="userInput" name="p"></textarea></p>
            <p><input type="submit" value="Insert"/></p>
        </form>
    </body>
</html>