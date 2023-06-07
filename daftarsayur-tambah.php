<html>
    <head>
        <h1>Create Data Baru
</head>

<body>
<h3>Daftar Sayur</h3>
    <form action="" method="post" name="form1">
        <table width="25%" border="0">
        <!--    <tr>
                <td>id_sayur</td>
                <td><input type="text" name="id_sayur"></td>
            </tr> -->
            <tr>
                <td>nama_sayur</td>
                <td><input type="text" name="nama_sayur"></td>
            </tr>
            <tr>
               <td></td>
               <td><input type="submit" value="simpan" name="proses"></td>
</tr>
</table>
</form>
<?php
include "../koneksi.php";
if(isset($_POST['proses'])){
    $nama_sayur = $_POST['nama_sayur'];
    $result = mysqli_query($host, "insert into daftar_sayur (`id_sayur`,`nama_sayur`) VALUES (  NULL,'$nama_sayur')");
    if($result){
        echo"Data sayur baru telah tersimpan";
        header("location:../index.php");
    }else{
        die(mysqli_error($host));
    }
}
?>
</html>