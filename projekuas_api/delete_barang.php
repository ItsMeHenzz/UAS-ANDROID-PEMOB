<?php
include 'koneksi.php';

$id = $_POST['id'];

$query = mysqli_query($conn, "DELETE FROM barang WHERE id='$id'");

if ($query) {
    echo "success";
} else {
    echo "error: " . mysqli_error($conn);
}
?>