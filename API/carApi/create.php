<?php
require("db.php");

$nama = $_POST['nama'];
$nik = $_POST['nik'];
$email = $_POST['email'];
$password = $_POST['password'];

$sql = "INSERT INTO users (nama,nik,email,password,level) VALUES ('$nama','$nik','$email','$password','user')";
$result = mysqli_query($conn, $sql);
if($result > 0){
    echo json_encode("Success");
}
?>