<?php
require("db.php");

$idt = $_POST['idt'];
$keterangan = $_POST['keterangan'];

$sql = "update transaksi set keterangan='$keterangan' where idt='$idt'";
$result = mysqli_query($conn, $sql);
if($result > 0){
    echo json_encode("Success");
}
?>