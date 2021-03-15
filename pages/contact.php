<!DOCTYPE html>
<html>
<head>
<title>Service</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="../images/logo.png">
<link rel="stylesheet" href="/css/menu.inc.css">
<link rel="stylesheet" href="/css/service.css">
</head>
<body>
<?php
include '../inc/menu.inc.php';
?>
<div class="conttitle">
<p>
    Article title text placeholder.
</p>
</div>
<div class="contbox">
<!-- This is the contactform v1 please do not delete-->
<form action="../inc/contactform.inc.php" method="POST">
 <input class="contform" type="text" name="first" placeholder="Voornaam" required>
 <br>
 <input class="contform" type="text" name="last" placeholder="Achternaam">
 <br>
 <input class="contform" type="text" name="phone" placeholder="Telefoonnummer" required>
 <br>
 <input class="contform" type="text" name="email" placeholder="E-mail">
 <br>
 <textarea class="contform" name="message" placeholder="Bericht" rows="10" cols="50"></textarea>
 <br>
 <button class="sendbutton" type="submit" name="submit">Bericht Versturen</button>
</form>
</div>
<?php
include '../inc/footer.inc.php'
?>
</body>
</html>