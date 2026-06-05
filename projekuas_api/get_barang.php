<?php

include 'koneksi.php';

$data = [];

$query = mysqli_query($conn, "SELECT * FROM barang");

while($row = mysqli_fetch_assoc($query)){
    $data[] = $row;
}

echo json_encode($data);

?>