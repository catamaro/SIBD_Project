<html>
    <body>
        <form action="insert_consultation.php" method="post">
            <?php $doctor = $_REQUEST['doctor'];
            $date = $_REQUEST['date_timestamp']; ?>
            <h2>New Consultation:</h2>
            <p>VAT_Doctor: <input type="text" name="vat_doctor" value=<?php echo($doctor) ?>/></p>
            <p>Date: <input type="date" name="date" value=<?php echo($date) ?>/></p>
            <p>S: <input type="text" name="s"/></p>
            <p>O: <input type="text" name="o"/></p>
            <p>A: <input type="text" name="a"/></p>
            <p>P: <input type="text" name="p"/></p>
            <p><input type="submit" value="Insert"/></p>
        </form>
    </body>
</html>