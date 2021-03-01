<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="images/logo.png">
<link rel="stylesheet" href="/css/menu.inc.css">
<link rel="stylesheet" href="/css/home.css">
</head>
<body>
<div>
<?php
include 'inc/menu.inc.php';
?>
</div>
<div class="main">
<?php
include 'inc/slideshow.inc.php'
?>
</div>
<br>
<h2>Onze Service</h2>
<div class="main1">
	<p class="block1"><a href="/pages/repeatservice.php">Herhaal Service</a></p>
	<p class="block1"><a href="/pages/medicationoverview.php">Medicijnenoverzicht</a></p>
	<p class="block1"><a href="/pages/signup.php">Inschrijven</a></p>
</div>
<div class="home_address">
 <div class="hometext">
		<p>Openingstijden</p>
		<p>Maandag 08:00 - 16:00</p>
		<p>Disndag 08:00 - 16:00</p>
		<p>Woensdag 08:00 - 16:00</p>
		<p>Donderdag 08:00 - 16:00</p>
		<p>Vrijdag 08:00 - 16:00</p>
		<p>Zaterdag 08:00 - 16:00</p>
		<P>Op officiële feestdagen zijn beide locaties gesloten.</P>
</div>
	<div class="address">
	<p>Contact
        <p>ACN apotheek Schagen</p>
        <p>Zuiderweg 23</p>
        <p>1741 NA Schagen</p>
        <p>Tel. 0224-297979</p>
        <p>info@apotheekschagen.nl</p>
	</div>
</div>
<div class="newsdiv">
<?php
include 'inc/news.inc.php';
?>
</div>
<div>
<?php
include 'inc/footer.inc.php';
?>
</div>
</body>
</html>