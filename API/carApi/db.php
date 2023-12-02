<?php
$conn = new mysqli('Localhost','root','','db_car');
if($conn->connect_error){
    die("Gagal Connect".$conn->connect_error);
}

?>