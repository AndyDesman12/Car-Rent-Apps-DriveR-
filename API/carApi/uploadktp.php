<?php
require("db.php");

$nama = $_POST['nama'];
$nik = $_POST['nik'];
$mobil = $_POST['mobil'];
$data = $_POST['data'];
$name = $_POST['name'];


$path="image/$name";
$sql = "INSERT INTO transaksi (nama,nik,mobil,image_ktp,keterangan) VALUES ('$nama','$nik','$mobil','$path','Menunggu')";
file_put_contents($path,base64_decode($data));
$result = mysqli_query($conn, $sql);
if($result > 0){
    echo json_encode("Success");
}
?>
