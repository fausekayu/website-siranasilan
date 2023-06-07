<?php

include '../koneksi.php';
$id_buah = $_GET['ubah'];
$sql = "SELECT * FROM `daftar_buah` where id_buah =$id_buah";
$result = mysqli_query($host, $sql);
$row = mysqli_fetch_assoc($result);
$nama_buah = $row['nama_buah'];


if (isset($_POST['proses'])) {
    $nama_buah = $_POST['nama_buah'];

    $sql = "update `daftar_buah` set id_buah=$id_buah,nama_buah='$nama_buah' where id_buah=$id_buah ";
    $result = mysqli_query($host, $sql);
    if ($result) {
        header("location:../index.php");

    } else {
        die(mysqli_error($host));

    }
}
?>
<html>
    <head><h3>Datfar Buah</h3></head>
<body>
    <form action=" " method="post" name="form1">
        <table width="25%" border="0">
        <!-- <tr>
                <td>id_buah</td>
                <td><input type="text" name="id_buah" value=""></td>
            </tr> -->
            <tr>
                <td>nama_buah</td>
                <td><input type="text" name="nama_buah"  value="<?php echo $row['nama_buah'];?>"></td>
            </tr>
            <tr>
               <td><input type="submit" value="simpan" name="proses"></td>

</tr>
</table>

</form>
</body>
</html>