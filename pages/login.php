<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="../images/logo.png">
<link rel="stylesheet" href="/css/menu.inc.css">
<link rel="stylesheet" href="/css/login.css">
</head>
<body>
<div class="incmain">
<?php
include '../inc/menu.inc.php';
?>
</div>
<div class="logbox">
<form>
 <input class="logform" type="text" name="e-mail" placeholder="E-mail">
 <br>
 <input class="logform" type="text" name="username" placeholder="Gebruikersnaam">
 <br>
 <input class="logform" type="text" name="password" placeholder="Wachtwoord">
 <br>
 <button class="logbutton" type="submit" name="submit">Inloggen</button> 
<button class="signbutton" type="link" name="signup"><a href="signup.php">Registreren</a></button>
 <button class="resbutton" type="link" name="reset"><a href="passreset.php">Wachtwoord vergeten?</a></button>
 </div>
 <br>
 <br>
 <br>
 <br>
 <br>
 <br>
 <br>
 <br>
 <br>
 <br>
 <br>
 <?php
include '../inc/footer.inc.php'
?>
</body>
</html>