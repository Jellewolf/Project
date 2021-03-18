<?php

function emptyInputSignup($salutation, $useruid, $firstname, $lastname, $email, $userpass, $userpassrepeat, $city, $street, $housenumber, $postalcode ) {
 $result;
 if (empty($useruid)|| empty ($email)|| empty($userpass)) {
     $result = true; 
 }
 else {
     $result = false;
 }
 return $result;
}

function invalidfirstname($useruid) {
    $result;
    if (!preg_match("/^[a-zA-Z0-9]*$/", $useruid)) {
        $result = true;
    }
    else {
        $result = false;
    }
    return $result;
   }
   function invalidemail($email) {
    $result;
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $result = true;
    }
    else {
        $result = false;
    }
    return $result;
   }
   function pwdmatch($userpass, $userpassrepeat) {
    $result;
    if ($userpass !== $userpassrepeat) {
        $result = true;
    }
    else {
        $result = false;
    }
    return $result;
   }
   function uidExists($conn, $useruid, $email) {
    $sql = "SELECT * FROM `signup` WHERE useruid = ? OR email = ?;";
    $stmt = mysqli_stmt_init($conn);
    if (!mysqli_stmt_prepare($stmt, $sql)) {
        header("location: ../pages/signup.php?error=stmtfailed");
        exit(); 
    }
    
    mysqli_stmt_bind_param($stmt, "ss", $useruid, $email);
    mysqli_stmt_execute($stmt);

    $resultData = mysqli_stmt_get_result($stmt);

    if ($row = mysqli_fetch_assoc($resultData)){
        return $row;
    }
    else {
        $result = false;
        return $result;
    }
    mysqli_stmt_close($stmt);
   }
   function createUser($conn, $salutation,  $useruid, $firstname, $lastname, $email, $userpass, $city, $street, $housenumber, $postalcode) {
    $sql = "INSERT INTO signup (salutation, useruid, firstname, lastname, email, userpass, city, street, housenumber, postalcode) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
    $stmt = mysqli_stmt_init($conn);
    if (!mysqli_stmt_prepare($stmt, $sql)) {
        header("location: ../pages/signup.php?error=stmtfailed");
        exit(); 
    }

    $hashedpwd = password_hash($userpass, PASSWORD_DEFAULT);
    
    mysqli_stmt_bind_param($stmt, "ssssssssss",$salutation, $useruid, $firstname, $lastname, $email, $hashedpwd,  $city, $street, $housenumber, $postalcode);
    mysqli_stmt_execute($stmt);
    mysqli_stmt_close($stmt);
    header("location: ../pages/signup.php?error=none");
    exit(); 
}
function emptyInputLogin($username, $pwd) {
    $result;
    if (empty($username)|| empty ($pwd)) {
        $result = true;
    }
    else {
        $result = false;
    }
    return $result;
   }

   function loginUser($conn, $username, $pwd) {
       $uidExists = uidExists($conn, $username, $username);

       if ($uidExists === false) {
        header("location: ../pages/login.php?error=wrongpass");
        exit(); 
       }

       $pwdhashed = $uidExists['userpass'];
       $checkPwd = password_verify($pwd, $pwdhashed);

       if ($checkPwd === false) {
        header("location: ../pages/login.php?error=wronglogintest");
        exit();
       }
       else if ($checkPwd === true) {
            session_start();
            $_SESSION["userid"] = $uidExists["userID"];
            $_SESSION["useruid"] = $uidExists["useruid"];
            header("location: ../home.php");
            exit();
       }
   }

   