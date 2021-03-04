<?php
include_once '../inc/dbh.inc.php';

$newsID = $_GET['ID'];
$sql = "SELECT * FROM news WHERE newsID = $newsID";
$result = mysqli_query($conn, $sql);
 $resultcheck = mysqli_num_rows($result);


if ($resultcheck > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        echo "<div class='artbox'>". $row['newsmessage']."</div>";
        $title = $row['newsname'];
}
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="images/logo.png">
<link rel="stylesheet" href="/css/menu.inc.css">
<link rel="stylesheet" href="/css/news.css">
<meta charset="UTF-8">
<title>
<?php 
echo  "".$title;
?> 
</title>
</head>
<body>

</body>
</html>