<?php 
include '../koneksi.php';
$hapus = $_GET['hapus'];
mysqli_query($host,"DELETE FROM daftar_sayur WHERE id_sayur = $hapus");
header("location:../index.php");
?>