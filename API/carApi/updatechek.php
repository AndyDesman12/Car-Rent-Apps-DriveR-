<?php
require("db.php");

$sql = "UPDATE transaksi SET keterangan='Selesai',  WHERE idt='10'";
$result = mysqli_query($conn, $sql);
if($result > 0){
    echo json_encode("Success");
}
?>