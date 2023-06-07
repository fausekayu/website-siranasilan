<?php 
include '../koneksi.php';
$hapus = $_GET['hapus'];
mysqli_query($host,"DELETE FROM sortir WHERE id_sortir = $hapus");
header("location:../index.php");
?>