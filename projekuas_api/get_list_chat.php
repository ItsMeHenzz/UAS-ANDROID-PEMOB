<?php
include 'koneksi.php';

header('Content-Type: application/json');

$user = isset($_GET['user']) ? $_GET['user'] : '';

$data = [];

$sql = "
SELECT c.*
FROM chat c
INNER JOIN (
    SELECT barangId, MAX(id) AS last_id
    FROM chat
    WHERE pengirim='$user' OR penerima='$user'
    GROUP BY barangId
) x ON c.id = x.last_id
ORDER BY c.waktu DESC
";

$query = mysqli_query($conn, $sql);

if ($query) {
    while ($row = mysqli_fetch_assoc($query)) {
        $data[] = $row;
    }
}

echo json_encode($data);
?>