<!DOCTYPE html>
<html>
<head>
<title>Medicijnenoverzicht</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="../images/logo.png">
<link rel="stylesheet" href="/css/menu.inc.css">
<link rel="stylesheet" href="/css/service.css">
</head>
<body>
<div>
	<?php
	include '../inc/menu.inc.php';
	?>
</div>
<div class="textbox">
Kleine opsomming van medicijnen van A tot Z
</div>
<?php
	include '../inc/med.inc.php';
?>
<?php
	include '../inc/footer.inc.php';
?>
</body>
</html>