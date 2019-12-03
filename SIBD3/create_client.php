<html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 <body>
 <form action="insert_client.php" method="post">
 <h2>Create Client(*):</h2>
 <p>Client_VAT(*): <input required type="text" name="client_vat"/></p>
 <p>Client Name(*): <input required type="text" name="client_name"/></p>
 <p>Client Birth-Date(*): <input required type="date" name="client_birth_date"/></p>
 <p>Client Street(*): <input required type="text" name="client_street"/></p>
  <p>Client City(*): <input required type="text" name="client_city"/></p>
 <p>Client Zip(*): <input required type="text" name="client_zip"/></p>
 <p>Client Gender(*): <input required type="text" name="client_gender"/></p>
 <p>Client Age: <input type="text" name="client_age"/></p>
 <p><input type="submit" class="btn btn-info" value="Insert"/></p>
 </form>
 </body>
</html>