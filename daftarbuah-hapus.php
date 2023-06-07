<?php 
include '../koneksi.php';
$hapus = $_GET['hapus'];
mysqli_query($host,"DELETE FROM daftar_buah WHERE id_buah = $hapus");
header("location:../index.php");
?>