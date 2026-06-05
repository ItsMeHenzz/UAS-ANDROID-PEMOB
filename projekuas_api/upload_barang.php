<?php

include 'koneksi.php';

$nama = $_POST['nama'];
$harga = $_POST['harga'];
$kategori = $_POST['kategori'];
$deskripsi = $_POST['deskripsi'];
$penjualNama = $_POST['penjualNama'];

$fotoUrl = "";

if(isset($_FILES['foto'])){

    $namaFile = time() . "_" . $_FILES['foto']['name'];

    $target = "uploads/" . $namaFile;

    if(move_uploaded_file($_FILES['foto']['tmp_name'], $target)){

        $fotoUrl = "http://10.0.2.2/projekuas_api/" . $target;

    }
}

$query = mysqli_query($conn,
"INSERT INTO barang(nama,harga,kategori,deskripsi,fotoUrl,penjualNama)
VALUES('$nama','$harga','$kategori','$deskripsi','$fotoUrl','$penjualNama')");

if($query){

    echo json_encode([
        "status" => true,
        "message" => "Upload berhasil"
    ]);

}else{

    echo json_encode([
        "status" => false,
        "message" => "Upload gagal"
    ]);

}
?>