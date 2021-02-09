<!DOCTYPE html>
<html>
<head>
<title>Service</title>
</head>
<body>
<?php
include 'inc/menu.inc.php';
?>
<!-- This is the contactform v1 please do not delete-->
<form action="inc/contactform.inc.php" method="POST">
 <input type="text" name="first" placeholder="Voornaam">
 <br>
 <input type="text" name="last" placeholder="Achternaam">
 <br>
 <input type="text" name="phone" placeholder="Telefoonnummer">
 <br>
 <input type="text" name="email" placeholder="E-mail">
 <br>
 <input type="text" name="message" placeholder="Bericht">
 <br>
 <button type="submit" name="submit">Bericht Versturen</button>
</form>
</body>
</html>