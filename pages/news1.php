<?php
include_once '../inc/dbh.inc.php';
$newsID = $_GET['ID'];
$sql = "SELECT * FROM news WHERE newsID = $newsID";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
$title = $row['newsname'];

?>
<!DOCTYPE html>
<html>
<head>
<title>
<?php
    echo "$title";
?>
</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../images/logo.png">
    <link rel="stylesheet" href="/css/menu.inc.css">
    <link rel="stylesheet" href="/css/service.css">
    <link rel="stylesheet" href="/css/news.css">
</head>
<body>
<div>
    <?php
    include '../inc/menu.inc.php';
    ?>
</div>
<div class="textbox">
<?php
    echo "<div class='artbox'>". $row['newsmessage']."</div>";

?>
</div>
<div>
<?php
include '../inc/footer.inc.php'
?>
</div>
</body>
</html>


