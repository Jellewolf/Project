<?php
include_once 'dbh.inc.php';
/*This defines the connection to the database*/
$salutation = $_POST['salutation'];
$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];
$email = $_POST['email'];
$userpass = $_POST['userpass'];
$phonenumber = $_POST['phonenumber'];
$city = $_POST['city'];
$street= $_POST['street'];
$housenumber= $_POST['housenumber'];
$postalcode = $_POST['postalcode'];

$sql = "INSERT INTO `signup` (`salutation`, `firstname`, `lastname`, `email`, `userpass`, `phonenumber`, `city`, `street`, `housenumber`, `postalcode`, `loginID`) VALUES ('$salutation', '$firstname', '$lastname', '$email', '$userpass', '$phonenumber', '$city', '$street', '$housenumber', '$postalcode', NULL)";
mysqli_query($conn, $sql);

/*This checks if the contactform was succesfully send out (check browser bar)*/
header("location: ../signup.php?signup=succesfull");