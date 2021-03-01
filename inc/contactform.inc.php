<?php
include_once 'dbh.inc.php';
/*This defines the connection to the database*/
$first = $_POST['first'];
$last = $_POST['last'];
$phone = $_POST['phone'];
$email = $_POST['email'];
$message = $_POST['message'];

$sql = "INSERT INTO contactform (firstname, lastname, phonenumber, email, contmessage) 
VALUES ('$first', '$last', '$phone', '$email', '$message');";
mysqli_query($conn, $sql);

/*This checks if the contactform was succesfully send out (check browser bar)*/
header("location: /pages/contact.php?bericht=verstuurd");

?>