<?php

require("db.php");
// $sql = "SELECT * FROM image";
// $resuslt = mysqli_query($conn, $sql);
// $records = [];
// while($row = mysqli_fetch_assoc($resuslt)){
//     $records[]=$row;
// }
// echo json_encode($records);
//lemme test using localhost
$query="SELECT `id`, `caption`, `image_path` FROM `image`";
$exe=mysqli_query($conn,$query);
$arr=[];
while($row=mysqli_fetch_array($exe))
{
    $arr[]=$row;
}
print(json_encode($arr));
?>