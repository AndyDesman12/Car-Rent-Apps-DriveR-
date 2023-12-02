
<?php
require("db.php");

$caption = $_POST['caption'];
$data = $_POST['data'];
$name = $_POST['name'];


$path="image/$name";
$sql = "INSERT INTO image (caption,image_path) VALUES ('$caption','$path')";
file_put_contents($path,base64_decode($data));
$result = mysqli_query($conn, $sql);
if($result > 0){
    echo json_encode("Success");
}
?>