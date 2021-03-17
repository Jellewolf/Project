<?php

if(isset($_POST["submit"])){

    $salutation = $_POST['salutation'];
    $useruid = $_POST['uid'];
    $lastname = $_POST['lastname'];
    $email = $_POST['email'];
    $userpass = $_POST['pwd'];
    $userpassrepeat = $_POST['userpassrepeat'];
    $city = $_POST['city'];
    $street= $_POST['street'];
    $housenumber= $_POST['housenumber'];
    $postalcode = $_POST['postalcode'];
    
    require_once 'dbh.inc.php';
    require_once 'functions.inc.php';

    if (emptyInputSignup($salutation, $useruid, $lastname, $email, $userpass, $userpassrepeat, $city, $street, $housenumber, $postalcode )!==false) {
        header("location: ../pages/signup.php?error=emptyinput");
        exit();  
    }
    if (invalidfirstname($useruid)!==false) {
        header("location: ../pages/signup.php?error=invaliduseruid");
        exit();  
    }
    if (invalidemail($email)!==false) {
        header("location: ../pages/signup.php?error=invalidemail");
        exit();  
    }    
    if (pwdmatch($userpass, $userpassrepeat)!==false) {
        header("location: ../pages/signup.php?error=invalidpassword");
        exit();  
    }
    if (uidExists($conn, $useruid, $email)!==false) {
        header("location: ../pages/signup.php?error=firstnametaken");
        exit();  
    }

    createUser($conn, $salutation,  $useruid, $lastname, $email, $userpass, $userpassrepeat, $city, $street, $housenumber, $postalcode);
    

}
else {
    header("location: ../signup.php");
    exit();  
}
