<?php

include '../koneksi.php';
// $id_buah = $_GET['proses'];
// $sql = "SELECT * FROM `daftar_buah` where id_buah =$id_buah";
// $result = mysqli_query($host, $sql);
// $row = mysqli_fetch_assoc($result);
// $nama_buah = $row['nama_buah'];


if (isset($_POST['proses'])) {
    $nama_buah = $_POST['nama_buah'];

    $sql = "insert into `daftar_buah` set id_buah= NULL ,nama_buah='$nama_buah'";
    $result = mysqli_query($host, $sql);
    if ($result) {
        header("location:../index.php");

    } else {
        die(mysqli_error($host));

    }
}
?>
<html>
    <head>
        <link rel="stylesheet" href="style8.css">
    </head>
<body>
<style>
    body{
    margin: 0px;
    padding: 0px;
    font-family: 'Open Sans',sans-serif;
    background-color:#CCD6A6;
}

    .wrapper{
    width: 1100px;
    margin: auto;
    position: relative;
}

    .logo a{
    font-size: 30px;
    font-weight: 800px;
    float: left;
    font-family: courier;
    color: #000000;
}
</style>
        <h3>Tambah Data Buah</h3>
        <form action="" method="post">
        <table>
            <tr>
                <td width ="130">nama_buah</td>
                <td><input type="text" name="nama_buah" required autocomplete="off"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="simpan" name="proses"></td>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
            </tr>
        </table>
        </form>
        </body>
</html>