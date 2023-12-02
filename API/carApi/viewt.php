<?php
//   if(isset($_GET['nik'])){
//     $nik    =$_GET['nik'];
// }
// else {
//     die ("Error. No ID Selected!");    
// }
require("db.php");
$sql = "SELECT * FROM transaksi";
$resuslt = mysqli_query($conn, $sql);
$records = [];
while($row = mysqli_fetch_assoc($resuslt)){
    $records[]=$row;
}
echo json_encode($records);
//lemme test using localhost
?>