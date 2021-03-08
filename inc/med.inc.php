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