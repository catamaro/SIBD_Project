<html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <body>
    <div class="container">
            <h2>Client Search:</h2>
            <form action="show_client.php" method="post">
                <div class="form-group">
                    <label for="client_VAT">Client_VAT:</label>
                    <input type="text" class="form-control" name="client_VAT">
                </div>
                <div class="form-group">
                    <label for="client_name">Client Name:</label>
                    <input type="text" class="form-control" name="client_name">
                </div>
                <div class="form-group">
                    <label for="client_street">Client Adress:</label>
                    <input type="text" class="form-control" name="client_street">
                </div>
                <input type="submit" class="btn btn-info" value="Insert"/>
            </form>
        </div>
    </body>
</html>