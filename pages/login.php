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
    <div class="container">
        <div class="maincontainer">
            <div class="incmain">
                <?php
include '../inc/menu.inc.php';
?>
            </div>
            <div class="logbox">
                <form action="/inc/login.inc.php" method="post">
                    <input class="logform" type="text" name="uid" placeholder="Gebruikersnaam/Email">
                    <br>
                    <input class="logform" type="password" name="pwd" placeholder="Wachtwoord">
                    <br>
                    <button class="logbutton" type="submit" name="submit">Inloggen</button>
                    <button class="signbutton" type="link" name="signup"><a
                            href="/pages/signup.php">Registreren</a></button>
                    <button class="resbutton" type="link" name="reset"><a href="passreset.php">Wachtwoord
                            vergeten?</a></button>
            </div>
            <?php
if (isset($_GET["error"])) {
    if($_GET["error"] =="emptyinput") {
        echo "<p>Zorg ervoor dat alle velden zijn ingevuld!</p>";
    }
    else if ($_GET["error"] =="wrongLogin") {
        echo "<p>Verkeerde inlog gegevens!</p>";
    }
}
?>
        </div>
    </div>
    <footer class="footer">
        <p class="footleft">Beheer</p>
        <p class="footright">Copyright</p>
    </footer>
</body>

</html>