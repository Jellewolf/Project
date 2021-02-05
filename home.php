<?php
include_once 'inc/dbh.inc.php';
?>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
</head>
<body>
<?php
include 'inc/menu.inc.php';
?>
<h1>SLIDESHOW PLACEHOLDER</h1>
<br>
<h2>Onze Service</h2>
<br>
<p class="herhaalservice">Herhaal Service</p>
<p class="herhaalservice">Medicijnenoverzicht</p>
<p class="herhaalservice">Inschrijven</p>
<!-- DO NOT DELETE (This is the news data shown on the site and is a WIP)-->
<p>
<?php
 $sql = "SELECT * FROM news order by NewsDate desc limit 3 offset 0;";
 $result = mysqli_query($conn, $sql);
 $resultcheck = mysqli_num_rows($result);

if ($resultcheck > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        echo $row['NewsArticle'] . "<br />";
    }
}
?>
</p>
</body>
</html>

