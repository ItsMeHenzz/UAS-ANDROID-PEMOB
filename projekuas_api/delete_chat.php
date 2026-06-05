<?php
include 'koneksi.php';

$barangId = $_POST['barangId'];
$user = $_POST['user'];

$query = mysqli_query($conn,
    "DELETE FROM chat 
     WHERE barangId='$barangId'
     AND (pengirim='$user' OR penerima='$user')"
);

if ($query) {
    echo "success";
} else {
    echo mysqli_error($conn);
}
?>