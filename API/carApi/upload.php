<?php
require("db.php");

$nama = $_POST['nama'];
$harga = $_POST['harga'];
$stok = $_POST['stok'];
$data = $_POST['data'];
$name = $_POST['name'];


$path="image/$name";
$sql = "INSERT INTO mobil (image_path,nama,harga,stok) VALUES ('$path','$nama','$harga','$stok')";
file_put_contents($path,base64_decode($data));
$result = mysqli_query($conn, $sql);
if($result > 0){
    echo json_encode("Success");
}
?>
