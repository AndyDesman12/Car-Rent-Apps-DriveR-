<?php

require("db.php");

$email = $_POST['email'];
$password = $_POST['password'];

$datauser = array();
$sqldatauser = mysqli_query($conn, "SELECT * FROM users where email = '".$email."' and password = '".$password."'");
while($rowdatauser = mysqli_fetch_assoc($sqldatauser)){
    $datauser[] = $rowdatauser;
}
echo json_encode($datauser);
//lemme test using localhost
?>