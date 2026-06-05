<?php
include 'koneksi.php';

$barangId   = $_POST['barangId'];
$namaBarang = $_POST['namaBarang'];
$fotoBarang = $_POST['fotoBarang'];
$pengirim   = $_POST['pengirim'];
$penerima   = $_POST['penerima'];
$pesan      = $_POST['pesan'];

$query = mysqli_query($conn,
"INSERT INTO chat
(barangId,namaBarang,fotoBarang,pengirim,penerima,pesan)
VALUES
('$barangId','$namaBarang','$fotoBarang','$pengirim','$penerima','$pesan')"
);

if($query){
    echo json_encode([
        "status" => true,
        "fotoBarang" => $fotoBarang
    ]);
}else{
    echo mysqli_error($conn);
}
?>