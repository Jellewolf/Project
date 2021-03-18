<!DOCTYPE html>
<html>
<head>
<title>Sign Up</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="../images/logo.png">
<link rel="stylesheet" href="/css/menu.inc.css">
<link rel="stylesheet" href="/css/login.css">
<link >
</head>
<body>
<div class="container">
		<div class="maincontainer">
<?php
include '../inc/menu.inc.php';
?>
<!-- This is the signup page please do not delete-- <form action="inc/signup.inc.php" method="POST">
-->
<section class="signup1">
<div class="logbox">
<form action="/inc/signup.inc.php" method="POST">
 <input class="logform" type="text" name="salutation" placeholder="Aanhef" required>
 <br>
 <input class="logform" type="text" name="uid" placeholder="Gebruikers naam">
 <br>
 <input class="logform" type="text" name="firstname" placeholder="Voornaam">
 <br>
 <input class="logform" type="text" name="lastname" placeholder="Achternaam">
 <br>
 <input class="logform" type="text" name="email" placeholder="E-mail">
 <br>
 <input class="logform" type="password" name="pwd" placeholder="Wachtwoord">
 <br>
 <input class="logform" type="password" name="userpassrepeat" placeholder="Wachtwoord herhalen">
 <br>
 <input class="logform" type="text" name="city" placeholder="Stad" required>
 <br>
 <input class="logform" type="text" name="street" placeholder="Straat" required>
 <br>
 <input class="logform" type="text" name="housenumber" placeholder="Huisnummer">
 <br>
 <input class="logform" type="text" name="postalcode" placeholder="Postcode">
 <br>
 <button class="logbutton" type="submit" name="submit">Registreren</button>
</form>
</div>
<?php
if (isset($_GET["error"])) {
    if($_GET["error"] =="emptyinput") {
        echo "<p>Zorg ervoor dat alle velden zijn ingevuld!</p>";
    }
    else if ($_GET["error"] =="invalidfirstname") {
        echo "<p>Gebruik een correcte gebruikers naam!</p>";
    }
    else if ($_GET["error"] =="invalidemail") {
        echo "<p>Gebruik een correct Email adres!</p>";
    }
    else if ($_GET["error"] =="invalidpassword") {
        echo "<p>Zorg ervoor dat de wachtwoorden overeen komen!</p>";
    }
    else if ($_GET["error"] =="stmtfailed") {
        echo "<p>Oops iets is misgegaan probeer het opnieuw</p>";
    }
    else if ($_GET["error"] =="firstnametaken") {
        echo "<p>Gebruikers naam al in gebruik</p>";
    }
    else if ($_GET["error"] =="none") {
        echo "<p>Je bent gerigistreerd </p>";
    }
}
?>
</section>
</div>
</div>
 <footer class="footer">
	<p class="footleft">Beheer</p>
	<p class="footright">Copyright</p>
</footer>
</body>
</html>