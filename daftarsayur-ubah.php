<?php

include '../koneksi.php';
$id_sayur = $_GET['ubah'];
$sql = "SELECT * FROM `daftar_sayur` where id_sayur = $id_sayur";
$result = mysqli_query($host, $sql);
$row = mysqli_fetch_assoc($result);
$nama_sayur = $row['nama_sayur'];


if (isset($_POST['proses'])) {
    $nama_sayur = $_POST['nama_sayur'];

    $sql = "update `daftar_sayur` set id_sayur=$id_sayur,nama_sayur='$nama_sayur' where id_sayur=$id_sayur ";
    $result = mysqli_query($host, $sql);
    if ($result) {
        header("location:../index.php");

    } else {
        die(mysqli_error($host));

    }
}
?>
<html>
    <head><h3>Datfar Sayur</h3></head>
<body>
    <form action=" " method="post" name="form1">
        <table width="25%" border="0">
        <!-- <tr>
                <td>id_sayur</td>
                <td><input type="text" name="id_sayur" value=""></td>
            </tr> -->
            <tr>
                <td>nama_sayur</td>
                <td><input type="text" name="nama_sayur"  value="<?php echo $row['nama_sayur'];?>"></td>
            </tr>
            <tr>
               <td><input type="submit" value="simpan" name="proses"></td>

</tr>
</table>

</form>
</body>
</html>