<?php

require("db.php");
$sql = "SELECT * FROM users";
$resuslt = mysqli_query($conn, $sql);
$records = [];
while($row = mysqli_fetch_assoc($resuslt)){
    $records[]=$row;
}
echo json_encode($records);
//lemme test using localhost
?>