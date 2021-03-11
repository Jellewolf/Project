<?php
include_once 'dbh.inc.php';

$sql = "SELECT * FROM medicine ORDER BY medicinename";
$result = mysqli_query($conn, $sql);
$resultcheck = mysqli_num_rows($result);
/*This displays the image and name from the database*/
if ($resultcheck > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        echo "<div class='med'>
        <img src='/images/".$row['medicineimage']."'>" . $row['medicinename']."</a></div>";
    
      }
}
?>