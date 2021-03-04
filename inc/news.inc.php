<?php
include_once 'dbh.inc.php';

 $sql = "SELECT * FROM news order by NewsDate desc limit 3 offset 0;";
 $result = mysqli_query($conn, $sql);
 $resultcheck = mysqli_num_rows($result);


if ($resultcheck > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        echo "<div class='news'>
        <a href='pages/news1.php?ID=".$row['newsID']."'><img src='/images/".$row['newsimages']."'>"."<br />" . $row['newsarticle']."</a></div>";
    }
}
?>