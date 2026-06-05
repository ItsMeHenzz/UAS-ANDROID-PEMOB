<?php
include 'koneksi.php';

header('Content-Type: application/json');

$barangId = isset($_GET['barangId']) ? $_GET['barangId'] : '';

$data = [];

if ($barangId == '') {
    echo json_encode($data);
    exit;
}

$query = mysqli_query($conn,
    "SELECT * FROM chat WHERE barangId='$barangId' ORDER BY waktu ASC"
);

if ($query) {
    while ($row = mysqli_fetch_assoc($query)) {
        $data[] = $row;
    }
}

echo json_encode($data);
?>