<?php
include_once 'dbh.inc.php';

$sql = "SELECT * FROM medicine";
$result = mysqli_query($conn, $sql);
$resultcheck = mysqli_num_rows($result);

/*This displays the image, name, and stock count from the database*/

if ($resultcheck > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        echo "<div class='medimg'><img src='/images/".$row['medicineimage']."'></div>";
        echo "<div class='med'>".$row['medicinename']."</div>";
        echo "<div class='medstock'>We hebben nog ".$row['medicinestock']." van dit medicijn over.</div>";
      }
}

?>
OH WAIT LAAT MAAR HIJ STAAT WEL BIJ DE HISTORY. Zal ik doen. Ik commit nu. Cool.
lol nice probeer nog maar een keer te committen dan xDik zal gelijk checken IK HEB HEM BINNEN HEHE aight nice. Oke dan laat ik jou verder je ding doen ga ik mijn koffie halen haha. ik zal de live share verlaten
aight laten we even kijken (laat deze convo maar even staan als test.) als je nu naar source control gaat kan je op push clicken doe dat
 en ga daarna naar
 github desktop waar je hem dan kan pushen 
naar origin en dan komt die bij ons binnen oke dan ga je naar github desktop en dan krijg je daar als het goed is de optie om hem
 te committen. 
Oke dan klopt er iets met de link niet ben ik bang. 
oke probeer hem hier via source control is te committen met een 'test' message en probeer daarna nog een keer github desktop te openen. Ohhh 
ja doe dat eerst maar dan kan je nieuwe code binnen halen en kan je hem daarna nogmaals via source control pushen en committen met de 'test' message en daarna weer git desktop openen aha lol