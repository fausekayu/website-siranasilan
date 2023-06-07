<?php

include '../koneksi.php';
$id_sortir = $_GET['ubah'];
$sql = "SELECT * FROM `sortir` where id_sortir = $id_sortir";
$result = mysqli_query($host, $sql);
$row = mysqli_fetch_assoc($result);
$kerusakan = $row['kerusakan'];


if (isset($_POST['proses'])) {
    $id_petani = $_POST['pekerja'];
    $id_pemeriksaan = $_POST['perkembangan_hasil_pertanian'];
    $jenis = $_POST['jenis'];
    $nama = $_POST['nama'];   
    $kerusakan = $_POST['perkembangan'];   
    $tanggal_pergantian = $_POST['tanggal_pergantian'];   
    $jenis_pergantian = $_POST['jenis_pergantian'];      

    $sql = "update `sortir` set id_petani=$id_petani,id_pemeriksaan='$id_pemeriksaan',jenis='$jenis',nama='$nama',kerusakan='$kerusakan',tanggal_pergantian='$tanggal_pergantian',jenis_pergantian='$jenis_pergantian' where id_sortir='$id_sortir'" ;
    $result = mysqli_query($host, $sql);
    if ($result) {
        header("location:../index.php");

    } else {
        die(mysqli_error($host));

    }
}
?>
<html>
    <head><h3>Daftar Sortir</h3></head>
<body>
    <form action=" " method="post" name="form1">
        <table width="25%" border="0">
        <td>Nama Pekerja
                        <select name="pekerja" id="pekerja">
                          <option disabled selected> Pilih </option>
                          <?php 
                            include_once("../koneksi.php");
                            $query_mysql = mysqli_query($host,"SELECT * FROM pekerja")or die(mysqli_error());
                            while ($data=mysqli_fetch_array($query_mysql)) {
                         ?>
                          <option value=<?php echo $data['id_petani']; ?>><?php echo $data['nama_petani']; ?> </option>
                         <?php
                          }
                         ?>
                        </select>
                    </td>
            <td>Perkembangan hasil pertanian
                        <select name="perkembangan_hasil_pertanian" id="perkembangan_hasil_pertanian">
                          <option disabled selected> Pilih </option>
                          <?php 
                            include_once("../koneksi.php");
                            $query_mysql = mysqli_query($host,"SELECT * FROM perkembangan_hasil_pertanian")or die(mysqli_error());
                            while ($data=mysqli_fetch_array($query_mysql)) {
                         ?>
                          <option value=<?php echo $data['id_pemeriksaan']; ?>><?php echo $data['perkembangan']; ?> </option>
                         <?php
                          }
                         ?>
                        </select>
                    </td>
            <tr>
                <td>jenis</td>
                <td><input type="text" name="jenis"  value="<?php echo $row['jenis'];?>"></td>
            </tr>
            <tr>
               <td>nama</td>
                <td><input type="text" name="nama"  value="<?php echo $row['nama'];?>"></td>
            </tr>
            <tr>
            <td>kerusakan</td>
                <td><input type="text" name="perkembangan"  value="<?php echo $row['kerusakan'];?>"></td>
            </tr>
            <tr>
            <td>tanggal_pergantian</td>
                <td><input type="text" name="tanggal_pergantian"  value="<?php echo $row['tanggal_pergantian'];?>"></td>
            </tr>
            <tr>
            <td>jenis_pergantian</td>
                <td><input type="text" name="jenis_pergantian"  value="<?php echo $row['jenis_pergantian'];?>"></td>
            </tr>
               <td><input type="submit" value="simpan" name="proses"></td>

</tr>
</table>

</form>
</body>
</html>