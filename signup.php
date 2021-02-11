<!DOCTYPE html>
<html>
<head>
<title>Service</title>
<?php
include 'inc/stylesheet.inc.php';
?>
</head>
<body>
<?php
include 'inc/menu.inc.php';
?>
<!-- This is the signup page please do not delete-- <form action="inc/signup.inc.php" method="POST">
-->
<form action="inc/signup.inc.php" method="POST">
 <input type="text" name="salutation" placeholder="Aanhef" required>
 <br>
 <input type="text" name="firstname" placeholder="Voornaam">
 <br>
 <input type="text" name="lastname" placeholder="Achternaam">
 <br>
 <input type="text" name="email" placeholder="E-mail">
 <br>
 <input type="text" name="userpass" placeholder="Wachtwoord">
 <br>
 <input type="text" name="phonenumber" placeholder="Telefoonnummer">
 <br>
 <input type="text" name="city" placeholder="Stad" required>
 <br>
 <input type="text" name="street" placeholder="Straat" required>
 <br>
 <input type="text" name="housenumber" placeholder="Huisnummer">
 <br>
 <input type="text" name="postalcode" placeholder="Postcode">
 <br>
 <button type="submit" name="submit">Registreren</button>
</form>
</body>
</html>