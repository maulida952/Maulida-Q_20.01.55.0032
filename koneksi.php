<?php
$host = "localhost";
$username = "root"; // Sesuaikan dengan username database Anda
$password = ""; // Sesuaikan dengan password database Anda
$dbname = "db_wisata";

// Membuat koneksi ke database
$koneksi = mysqli_connect($host, $username, $password, $dbname);

// Cek koneksi
if (!$koneksi) {
    die("Koneksi gagal: " . mysqli_connect_error());
}
?>