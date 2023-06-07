
<?php
include "../koneksi.php";
$index="index";
if(isset($_POST['proses'])){
    $result = mysqli_query($host, "insert into sortir set
    id_petani = '$_POST[pekerja]',
    id_pemeriksaan = '$_POST[perkembangan_hasil_pertanian]',
    jenis = '$_POST[jenis]',
    nama = '$_POST[nama]',
    kerusakan = '$_POST[kerusakan]',
    tanggal_pergantian = '$_POST[tanggal_pergantian]',
    jenis_pergantian = '$_POST[jenis_pergantian]'");

    if($result){

        header("location:../index.php");
        echo"Data sortir baru telah tersimpan";
    }
    }

?>

<html>
    <head>
        <h1>Create Data Baru
</head>
<h3>Sortir</h3>
    <form action="" method="post" name="form1">
        <table width="25%" border="0">
           <!-- <tr>
                <td>id_petani</td>
                <td><input type="text" name="id_petani"></td>
            </tr> -->
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
                <!--<td>id_sortir</td>
                <td><input type="text" name="id_sortir"></td>
            </tr> -->
            <tr>
                <td>jenis</td>
                <td><input type="text" name="jenis"></td><tr>
            </tr>
            <tr>
                <td>nama</td>
                <td><input type="text" name="nama"></td><tr>
            </tr>
            <tr>
                <td>kerusakan</td>
                <td><input type="text" name="kerusakan"></td><tr>
            </tr>
            <tr>
                <td>tanggal_pergantian</td>
                <td><input type="text" name="tanggal_pergantian"></td><tr>
            </tr>
            <tr>
                <td>jenis_pergantian</td>
                <td><input type="text" name="jenis_pergantian"></td><tr>
            </tr>
            <tr>
               <td></td>
               <td><input type="submit" value="simpan" name="proses"></td>
</tr>
</table>
</html>

