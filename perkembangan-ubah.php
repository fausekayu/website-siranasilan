<?php

include '../koneksi.php';
$id_pemeriksaan = $_GET['ubah'];
$sql = "SELECT * FROM `perkembangan_hasil_pertanian` where id_pemeriksaan = $id_pemeriksaan";
$result = mysqli_query($host, $sql);
$row = mysqli_fetch_assoc($result);
$perkembangan = $row['perkembangan'];


if (isset($_POST['submit'])) {
    $perkembangan = $_POST['perkembangan'];

    $sql = "update `perkembangan_hasil_pertanian` set id_pemeriksaan=$id_pemeriksaan,jenis='$njenis',nama='$nama',perkembangan='$perkembangan";
    $result = mysqli_query($host, $sql);
    if ($result) {
        header("location:../index.php");

    } else {
        die(mysqli_error($host));

    }
}
?>
<html>
    <head><h3>Daftar Perkembangan Hasil Pertanian/h3></head>
<body>
    <form action=" " method="post" name="form1">
        <table width="25%" border="0">
        <!-- <tr>
                <td>id_petani</td>
                <td><input type="text" name="id_petani" value=""></td>
            </tr> -->
            <tr>
                <td>jenis</td>
                <td><input type="text" name="jenis"  value="<?php echo $row['jenis'];?>"></td>
            </tr>
            <tr>
               <td>nama</td>
                <td><input type="text" name="nama"  value="<?php echo $row['nama'];?>"></td>
            </tr>
            <tr>
            <td>perkembangan</td>
                <td><input type="text" name="perkembangan"  value="<?php echo $row['perkembangan'];?>"></td>
            </tr>
               <td><input type="submit" value="simpan" name="proses"></td>

</tr>
</table>

</form>
</body>
</html>