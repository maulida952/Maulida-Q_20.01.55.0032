<?php
header("Content-Type: application/xml; charset=UTF-8");
include 'koneksi.php';

$id_wisata = isset($_GET['id_wisata']) ? $_GET['id_wisata'] : '';
$nama_wisata = isset($_GET['nama_wisata']) ? $_GET['nama_wisata'] : '';

$query = "SELECT * FROM wisata WHERE 1";

if($id_wisata) {
    $query .= " AND id_wisata='$id_wisata'";
}

if($nama_wisata) {
    $query .= " AND nama_wisata='$nama_wisata'";
}

$result = mysqli_query($koneksi, $query);
if (!$result) {
    die('Query error: ' . mysqli_error($koneksi));
}

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['action']) && $_POST['action'] == 'tambah') {
    $nama_wisata = $_POST['nama_wisata'];
    $alamat = $_POST['alamat'];
    $deskripsi = $_POST['deskripsi'];
    $kategori = $_POST['kategori'];

    $query = "INSERT INTO wisata (nama_wisata, alamat, deskripsi, kategori) VALUES ('$nama_wisata', '$alamat', '$deskripsi', '$kategori')";
    if (mysqli_query($koneksi, $query)) {
        echo "<response> Data berhasil ditambahkan! </response>";
    } else {
        echo "<error> Error: " . mysqli_error($koneksi) . " </error>";
    }
    exit;
}

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['action']) && $_POST['action'] == 'edit') {
    $id_wisata = $_POST['id_wisata'];
    $nama_wisata = $_POST['nama_wisata'];
    $alamat = $_POST['alamat'];
    $deskripsi = $_POST['deskripsi'];
    $kategori = $_POST['kategori'];

    $query = "UPDATE wisata SET nama_wisata='$nama_wisata', alamat='$alamat', deskripsi='$deskripsi', kategori='$kategori' WHERE id_wisata=$id_wisata";
    if (mysqli_query($koneksi, $query)) {
        echo "<response> Data berhasil diupdate! </response>";
    } else {
        echo "<error> Error: " . mysqli_error($koneksi) . " </error>";
    }
    exit;
}

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['action']) && $_POST['action'] == 'hapus') {
    $id_wisata = $_POST['id_wisata'];

    $query = "DELETE FROM wisata WHERE id_wisata=$id_wisata";
    if (mysqli_query($koneksi, $query)) {
        echo "<response> Data berhasil dihapus! </response>";
    } else {
        echo "<error> Error: " . mysqli_error($koneksi) . " </error>";
    }
    exit;
}


$xml = new SimpleXMLElement('<data_wisata/>');

while ($row = mysqli_fetch_assoc($result)) {
    $wisata = $xml->addChild('wisata');
    $wisata->addChild('id_wisata', $row['id_wisata']);
    $wisata->addChild('nama_wisata', $row['nama_wisata']);
    $wisata->addChild('alamat', $row['alamat']);
    $wisata->addChild('deskripsi', $row['deskripsi']);
    $wisata->addChild('kategori', $row['kategori']);
}

echo $xml->asXML();
?>