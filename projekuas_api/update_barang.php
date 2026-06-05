<?php
include 'koneksi.php';

$id = $_POST['id'];
$nama = $_POST['nama'];
$harga = $_POST['harga'];
$kategori = $_POST['kategori'];
$deskripsi = $_POST['deskripsi'];

$query = mysqli_query($conn, "UPDATE barang SET 
    nama='$nama',
    harga='$harga',
    kategori='$kategori',
    deskripsi='$deskripsi'
    WHERE id='$id'
");

if ($query) {
    echo "success";
} else {
    echo "error: " . mysqli_error($conn);
}
?>