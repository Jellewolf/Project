<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="../images/logo.png">
<link rel="stylesheet" href="/css/menu.inc.css">
<link rel="stylesheet" href="/css/login.css">
<link rel="stylesheet" href="/css/home.css">
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
 <button type="submit" name="submit">Inloggen</button> 
 <br>
<button type="link" name="signup"><a href="signup.php">signup</a></button>
 <br>
 <button type="link" name="reset"><a href="passreset.php">passreset</a></button>
 </div>
 <br>
 <div>
</div>
</body>
</html>