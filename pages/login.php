<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<link rel="icon" href="../images/logo_icon.png">
<link rel="stylesheet" href="../css/login_stylesheet.css">
</head>
<body>
<?php
include '../inc/menu.inc.php';
?>
<form>
 <input type="text" name="e-mail" placeholder="E-mail">
 <br>
 <input type="text" name="username" placeholder="Gebruikersnaam">
 <br>
 <input type="text" name="password" placeholder="Wachtwoord">
 <br>
 <button type="submit" name="submit">Inloggen</button> 
 <br>
<button type="link" name="signup"><a href="signup.php">signup</a></button>
 <br>
 <button type="link" name="reset"><a href="passreset.php">passreset</a></button>

</body>
</html>